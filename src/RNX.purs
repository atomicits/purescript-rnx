module RNX where

import Prelude
import Control.Monad.Aff (Aff, launchAff, later)
import Control.Monad.Aff.Unsafe (unsafeCoerceAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Class (liftEff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foldable (foldl, sequence_)
import Data.Function.Uncurried (Fn3, runFn3)
import Data.List (List(Nil), singleton, (:), reverse, fromFoldable)
import Data.Maybe (fromJust)
import Partial.Unsafe (unsafePartial)
import Signal (Signal, (~>), mergeMany, foldp, runSignal)
import Signal.Channel (CHANNEL, Channel, channel, subscribe, send)
import RNX.Components (Element)


-- | AppKey : Used to define the application name which will be registered with React Native
type AppKey = String


-- | Used to render the application
foreign import render :: forall a eff. Fn3 (a -> Eff eff Unit) (a -> a) (Element a) (Element a)


-- | Register the component
foreign import registerComponent :: forall a e. AppKey -> a ->  Eff e Unit


-- | Config state action eff. This is the application configuration type
type Config state action eff =
  { update :: Update state action eff
  , view :: state -> Element action
  , initialState :: state
  , inputs :: Array (Signal action)
  }


-- | Type of the update function
type Update state action eff = action -> state -> EffModel state action eff


-- | Return type of the update function
type EffModel state action eff =
  { state :: state
  , effects :: Array (Aff (CoreEffects eff) action)
  }


-- | Type of the core effects of RNX
type CoreEffects eff = (channel :: CHANNEL, err :: EXCEPTION | eff)


-- | App type
type App state action =
  { html :: Signal (Element action)
  , state :: Signal state
  , actionChannel :: Channel (List action)
  }


-- | Create an `Update` function from a simple step function.
fromSimple :: forall s a eff. (a -> s -> s) -> Update s a eff
fromSimple update = \action state -> noEffects $ update action state


-- | Create an `EffModel` with no effects from a given state.
noEffects :: forall state action eff. state -> EffModel state action eff
noEffects state = { state: state, effects: [] }


-- | Create an `EffModel` with the given state and effects
onlyEffects :: forall state action eff.
               state -> Array (Aff (CoreEffects eff) action) -> EffModel state action eff
onlyEffects state effects = { state: state, effects: effects }


-- | Map over the state of an `EffModel`.
mapState :: forall sa sb a e. (sa -> sb) -> EffModel sa a e -> EffModel sb a e
mapState a2b effmodel =
  { state: a2b effmodel.state, effects: effmodel.effects }

-- | Map over the effectful actions of an `EffModel`.
mapEffects :: forall s a b e. (a -> b) -> EffModel s a e -> EffModel s b e
mapEffects action effmodel =
  { state: effmodel.state, effects: map (map action) effmodel.effects }


-- | Start the application with the given configuration
start :: forall state action eff.
         Config state action eff ->
         Eff (CoreEffects eff) (App state action)
start config = do
  actionChannel <- channel Nil
  let actionSignal = subscribe actionChannel
      input = unsafePartial $ fromJust $ mergeMany $
        reverse (actionSignal : map (map singleton) (fromFoldable $ config.inputs))
      foldState effModel action = config.update action effModel.state
      foldActions actions effModel =
        foldl foldState (noEffects effModel.state) actions
      effModelSignal =
        foldp foldActions (noEffects config.initialState) input
      stateSignal = effModelSignal ~> _.state
      htmlSignal = stateSignal ~> \state ->
        (runFn3 render) (send actionChannel <<< singleton) (\a -> a) (config.view state)
      mapAffect affect = launchAff $ unsafeCoerceAff do
        action <- later affect
        liftEff $ send actionChannel (singleton action)
      effectsSignal = effModelSignal ~> map mapAffect <<< _.effects
  runSignal $ effectsSignal ~> sequence_
  pure $ { html: htmlSignal, state: stateSignal, actionChannel: actionChannel }

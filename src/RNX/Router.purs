module RNX.Router
  ( navigateTo
  , goBack
  , createNavSignal
  , Router
  , RouterS
  , RouterAction(..)
  , toRouterAction
  , stateUtils_push
  , stateUtils_pop
  ) where

import Prelude
import Signal (Signal)
import Control.Monad.Eff (Eff)

data RouterAction = Push | Pop

instance showRouterAction :: Show RouterAction where
         show Push = "Push"
         show Pop  = "Pop"

toRouterAction :: forall route. RouterS route -> Router route
toRouterAction rs =
  case rs.action of
    "Push" ->
      {action : Push, route : rs.route}
    _ ->
      {action : Pop, route : rs.route}


type Router route =
  { action :: RouterAction
  , route :: route
  }

type RouterS route =
  { action :: String
  , route :: route
  }


foreign import createNavSignal :: forall eff route.
                                  (route -> Signal route) ->
                                  Eff eff (Signal route)

foreign import navigateTo :: forall route eff. route -> Eff eff Unit

foreign import goBack :: forall eff. Eff eff Unit

foreign import stateUtils_push :: forall a b. a -> b -> a
foreign import stateUtils_pop :: forall a. a -> a

foreign import stringify :: forall a. a -> String

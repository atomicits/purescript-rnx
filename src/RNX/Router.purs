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
import Effect (Effect)

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


foreign import createNavSignal :: forall route.
                                  (route -> Signal route) ->
                                  Effect (Signal route)

foreign import navigateTo :: forall route. route -> Effect Unit

foreign import goBack :: Effect Unit

foreign import stateUtils_push :: forall a b. a -> b -> a
foreign import stateUtils_pop :: forall a. a -> a

foreign import stringify :: forall a. a -> String

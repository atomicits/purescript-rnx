module Switch where


import RNX.Events
import RNX.Color
import RNX.PropTypes
import React (ReactComponent, ReactElement, createClass, createElement)
import  RNX.ComponentClasses

type SwitchProps eff  = {
    onValueChange :: EventHandler eff Boolean
  , value :: Boolean
  , disabled :: Boolean
  , testID :: String
  , ios:: Prop {
      onTintColor :: Color
    , thumbTintColor :: Color
    , tintColor :: Color
  }
}


switch :: forall eff. Prop (SwitchProps eff) -> Array (ReactElement) ->  ReactElement
switch  = createElement switchClass

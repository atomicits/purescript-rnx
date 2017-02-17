module RNX.Button where


import RNX.Color
import RNX.Events
import RNX.PropTypes
import RNX.ComponentClasses
import React (ReactElement, createElement)

type ButtonProps eff =
  { accessibilityLabel :: String
  , color :: Color
  , disabled :: Boolean
  , onPress :: EventHandler eff TouchEvent
  , title :: String
  }


button :: forall eff. Prop ( ButtonProps eff) -> Array (ReactElement) -> ReactElement
button  = createElement buttonClass

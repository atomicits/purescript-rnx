module RNX.Button where

import Prelude
import RNX.Color (Color)
import RNX.Events (EventHandler, TouchEvent)
import RNX.PropTypes (Prop)
import RNX.ComponentClasses (buttonClass)
import React (ReactElement, createElement)


type ButtonProps eff =
  { accessibilityLabel :: String
  , color              :: Color
  , disabled           :: Boolean
  , onPress            :: EventHandler eff TouchEvent
  , title              :: String
  }


button :: forall eff. Prop (ButtonProps eff) -> Array (ReactElement) -> ReactElement
button = createElement buttonClass

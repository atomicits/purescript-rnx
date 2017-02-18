module Switch where

import RNX.Events (EventHandler)
import RNX.Color (Color)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import  RNX.ComponentClasses


type SwitchProps eff  =
  { onValueChange :: EventHandler eff Boolean
  , value :: Boolean
  , disabled :: Boolean
  , testID :: String
  , ios:: Prop
            { onTintColor :: Color
            , thumbTintColor :: Color
            , tintColor :: Color
            }
  }


switch :: forall eff. Prop (SwitchProps eff) -> Array (ReactElement) ->  ReactElement
switch = createElement switchClass

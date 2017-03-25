module KeyboardAvoidingView where

import RNX.ComponentClasses (keyboardAvoidingViewClass)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import React (ReactElement, createElement)
import View (ViewPropsEx)

type KeyboardAvoidingViewProps eff = ViewPropsEx eff
  ( contentContainerStyle :: Style
  , keyboardVerticalOffset :: Number
  , behavior :: Behavior
  ) () ()

newtype Behavior = Behavior String

height :: Behavior
height = Behavior "height"

position :: Behavior
position = Behavior "position"

padding :: Behavior
padding = Behavior "padding"


keyboardAvoidingView :: forall eff. Prop (KeyboardAvoidingViewProps eff) -> Array ReactElement -> ReactElement
keyboardAvoidingView = createElement keyboardAvoidingViewClass

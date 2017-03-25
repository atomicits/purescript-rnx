module Touchable where

import View (AccessibilityTraits, AccessibilityType)
import RNX.PropTypes (Insets, Prop)
import RNX.Events (EventHandler, LayoutEvent, TouchEvent)
import RNX.Styles (Style)
import RNX.Color (Color)
import RNX.ComponentClasses (createElementOneChild, touchableHighlightClass, touchableOpacityClass, touchableWithoutFeedbackClass)
import React (ReactElement)

type TouchablePropsEx eff r =
  { accessible :: Boolean
  , accessibilityComponentType :: AccessibilityType
  , accessibilityTraits :: AccessibilityTraits
  , delayLongPress :: Int
  , delayPressIn :: Int
  , delayPressOut :: Int
  , disabled :: Boolean
  , hitSlop :: Insets
  , onLayout :: EventHandler eff LayoutEvent
  , onPress :: EventHandler eff TouchEvent
  , onLongPress :: EventHandler eff TouchEvent
  , onPressIn :: EventHandler eff TouchEvent
  , onPressOut :: EventHandler eff TouchEvent
  , pressRetentionOffset :: Insets
  | r
  }

type TouchableWithoutFeedbackProps eff = TouchablePropsEx eff ()

type TouchableHighlightProps eff = TouchablePropsEx eff
  ( activeOpacity :: Number
  , onHideUnderlay :: EventHandler eff TouchEvent
  , onshowUnderlay :: EventHandler eff TouchEvent
  , style :: Style
  , underlayColor :: Color
  )

type TouchableOpacityProps eff = TouchablePropsEx eff
  ( activeOpacity :: Number
  )


touchableOpacity :: forall eff. Prop (TouchableOpacityProps eff) -> ReactElement -> ReactElement
touchableOpacity  = createElementOneChild touchableOpacityClass


touchableWithoutFeedback :: forall eff. Prop (TouchableWithoutFeedbackProps eff) -> ReactElement -> ReactElement
touchableWithoutFeedback  = createElementOneChild touchableWithoutFeedbackClass


touchableHighlight :: forall r eff. Prop (TouchablePropsEx r eff) ->  ReactElement -> ReactElement
touchableHighlight  = createElementOneChild touchableHighlightClass

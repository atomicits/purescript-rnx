module ProgressBarAndroid where

import RNX.Color (Color)
import RNX.ComponentClasses
import RNX.PropTypes (Prop)
import React (ReactElement)
import View (ViewPropsEx)

newtype StyleAttr = StyleAttr String

horizontal :: StyleAttr
horizontal = StyleAttr "horizontal"

normal :: StyleAttr
normal = StyleAttr "normal"

small :: StyleAttr
small = StyleAttr "small"

large :: StyleAttr
large = StyleAttr "large"

inverse :: StyleAttr
inverse = StyleAttr "inverse"

smallInverse :: StyleAttr
smallInverse = StyleAttr "smallInverse"

largeInverse :: StyleAttr
largeInverse =  StyleAttr "largeInverse"

type ProgressBarAndroidProps eff = ViewPropsEx eff
  ()
  ( color         :: Color
  , progress      :: Number
  , testID        :: String
  , styleAttr     :: StyleAttr
  , indeterminate :: Boolean
  )
  ()


progressBarAndroid :: forall eff. Prop (ProgressBarAndroidProps eff) -> ReactElement -> ReactElement
progressBarAndroid = createElementOneChild progressBarAndroidClass

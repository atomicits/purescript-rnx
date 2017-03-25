module ViewPagerAndroid where

import RNX.ComponentClasses (viewPagerAndroidClass)
import RNX.PropTypes (Prop, UnKnownType)
import React (ReactElement, createElement)
import View (ViewPropsEx)

newtype KeyboardDismissMode = KeyboardDismissMode String

none :: KeyboardDismissMode
none = KeyboardDismissMode "none"

onDrag :: KeyboardDismissMode
onDrag = KeyboardDismissMode "on-drag"

type ViewPagerAndroidProps eff = ViewPropsEx eff
  ()
  ( initialPage :: Number
  , pageMargin :: Number
  , scrollEnabled :: Boolean
  , onPageScroll :: UnKnownType
  , onPageScrollStateChanged :: UnKnownType
  , onPageSelected :: UnKnownType
  , keyboardDismissMode :: KeyboardDismissMode
  )
  ()


viewPagerAndroid :: forall eff. Prop (ViewPagerAndroidProps eff) -> Array ReactElement -> ReactElement
viewPagerAndroid = createElement viewPagerAndroidClass

module SegmentedControlIOS where

import RNX.Color (Color)
import RNX.ComponentClasses (createElementOneChild, segmentedControlIOSClass)
import RNX.PropTypes (Prop, UnKnownType)
import React (ReactElement)
import View (ViewPropsEx)

type SegmentedControlIOSProps eff = ViewPropsEx eff
  ()
  ()
  ( enabled :: Boolean
  , momentary :: Boolean
  , selectedIndex :: Number
  , tintColor :: Color
  , values :: Array String
  , onChange :: UnKnownType
  , onValueChange :: UnKnownType
  )


segmentedControlIOS :: forall eff. Prop (SegmentedControlIOSProps eff) -> ReactElement -> ReactElement
segmentedControlIOS = createElementOneChild segmentedControlIOSClass

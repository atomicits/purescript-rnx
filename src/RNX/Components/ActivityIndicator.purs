module ActivityIndicator where

import RNX.PropTypes
import RNX.Styles (Style)
import React (ReactElement, createElement)
import RNX.ComponentClasses (activityIndicatorClass)
import View (ViewPropsEx)
import RNX.Color (Color)

type ActivityIndicatorProps eff = ViewPropsEx eff
  ( animating :: Boolean
  , color :: Color
  , size :: ActivityIndicatorSize
  ) ()
  ( hidesWhenStopped :: Boolean )


newtype ActivityIndicatorSize = AISize String

small :: ActivityIndicatorSize
small = AISize "small"

large :: ActivityIndicatorSize
large = AISize "large"

-- need to discuss
-- indicatorSized :: Int -> ActivityIndicatorSize
-- indicatorSized = unsafeCoerce


activityIndicator :: forall eff. Prop (ActivityIndicatorProps eff) -> Array(ReactElement) -> ReactElement
activityIndicator  = createElement activityIndicatorClass

module TouchableNativeFeedback where

import RNX.Color (Color)
import RNX.PropTypes (Prop)
import Touchable (TouchablePropsEx)
import React (ReactElement)
import RNX.ComponentClasses (createElementOneChild, touchableNativeFeedbackClass)

type TouchableNativeFeedbackProps eff = TouchablePropsEx eff
  ( background :: TouchableNativeBackground
  , useForeground :: Boolean
  )

foreign import data TouchableNativeBackground :: *

foreign import selectableBackground :: TouchableNativeBackground
foreign import selectableBackgroundBorderless :: TouchableNativeBackground
foreign import ripple :: Color -> Boolean -> TouchableNativeBackground
foreign import canUseNativeForeground :: Boolean


touchableNativeFeedback :: forall eff. Prop (TouchableNativeFeedbackProps eff) ->  ReactElement -> ReactElement
touchableNativeFeedback  = createElementOneChild touchableNativeFeedbackClass

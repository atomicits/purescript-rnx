module RNX.ComponentClasses where

import Prelude
import Data.Function.Uncurried (Fn2)
import React (ReactClass, ReactElement)


foreign import createElementOneChild :: forall props. ReactClass props -> props -> ReactElement -> ReactElement

-- classes
foreign import activityIndicatorClass        :: forall props. ReactClass props
foreign import buttonClass                   :: forall props. ReactClass props
foreign import datePickerIOSClass            :: forall props. ReactClass props
foreign import drawerLayoutAndroidClass      :: forall props. ReactClass props
foreign import imageClass                    :: forall props. ReactClass props
foreign import keyboardAvoidingViewClass     :: forall props. ReactClass props
foreign import listViewClass                 :: forall props. ReactClass props
foreign import mapViewClass                  :: forall props. ReactClass props
foreign import modalClass                    :: forall props. ReactClass props
foreign import pickerClass                   :: forall props. ReactClass props
foreign import pickerItemClass               :: forall props. ReactClass props
foreign import progressBarAndroidClass       :: forall props. ReactClass props
foreign import progressViewIOSClass          :: forall props. ReactClass props
foreign import refreshControlClass           :: forall props. ReactClass props
foreign import scrollViewClass               :: forall props. ReactClass props
foreign import segmentedControlIOSClass      :: forall props. ReactClass props
foreign import sliderClass                   :: forall props. ReactClass props
foreign import statusBarClass                :: forall props. ReactClass props
foreign import snapshotViewIOSClass          :: forall props. ReactClass props
foreign import switchClass                   :: forall props. ReactClass props
foreign import tabBarIOSClass                :: forall props. ReactClass props
foreign import tabBarIOSItemClass            :: forall props. ReactClass props
foreign import textClass                     :: forall props. ReactClass props
foreign import textInputClass                :: forall props. ReactClass props
foreign import toolbarAndroidClass           :: forall props. ReactClass props
foreign import touchableHighlightClass       :: forall props. ReactClass props
foreign import touchableNativeFeedbackClass  :: forall props. ReactClass props
foreign import touchableOpacityClass         :: forall props. ReactClass props
foreign import touchableWithoutFeedbackClass :: forall props. ReactClass props
foreign import viewClass                     :: forall props. ReactClass props
foreign import viewPagerAndroidClass         :: forall props. ReactClass props
foreign import webViewClass                  :: forall props. ReactClass props

foreign import cardStackClass                :: forall props. ReactClass props

foreign import stateUtilsPush                :: forall state route. state -> route -> state
foreign import stateUtilsPop                 :: forall state. state -> state


-- Elements
foreign import textElem :: String -> ReactElement



foreign import handler     :: forall props event action. Fn2 String (event -> action) props
foreign import handlerBool :: forall props event. Fn2 String (event -> Boolean) props
foreign import handlerUnit :: forall props event. Fn2 String (event -> Unit) props


--

foreign import data RowRenderer :: * -> *
foreign import data SectionRenderer :: * -> *
foreign import data SceneConfig :: *
foreign import require :: forall a. String -> a

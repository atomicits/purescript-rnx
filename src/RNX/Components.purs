module RNX.Components where

import Prelude
import Data.Function.Uncurried (Fn2)
import React (ReactClass, createElement, ReactElement)
import React.DOM.Props (unsafeFromPropsArray, Props)

--foreign import data ReactClass :: * -> *
--foreign import data Element :: * -> *
--foreign import data Prop :: * -> *


--foreign import forwardTo    :: forall a b. (a -> b) -> Element a -> Element b
--foreign import mapAttribute :: forall a b. (a -> b) -> Prop a -> Prop b


-- instance functorElement :: Functor Element where
--   map f x = forwardTo f x

-- instance functorAttribute :: Functor Prop where
--   map f x = mapAttribute f x


-- createElement
--foreign import createElement         :: forall props. ReactClass props -> props -> Array (ReactElement)-> ReactElement

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

-- Elements
foreign import textElem :: String -> ReactElement


foreign import handler     :: forall props event action. Fn2 String (event -> action) props
foreign import handlerBool :: forall props event. Fn2 String (event -> Boolean) props
foreign import handlerUnit :: forall props event. Fn2 String (event -> Unit) props


-- ActivityIndicator doesn't have any children
activityIndicator :: Array Props -> ReactElement
activityIndicator props = createElement activityIndicatorClass (unsafeFromPropsArray props) []

button :: Array Props -> ReactElement
button props = createElement buttonClass (unsafeFromPropsArray props) []

datePickerIOS :: Array Props -> ReactElement
datePickerIOS props = createElement datePickerIOSClass (unsafeFromPropsArray props) []

drawerLayoutAndroid :: Array Props -> Array (ReactElement) -> ReactElement
drawerLayoutAndroid props = createElement drawerLayoutAndroidClass (unsafeFromPropsArray props)

image :: Array Props -> Array (ReactElement) -> ReactElement
image props = createElement imageClass (unsafeFromPropsArray props)

keyboardAvoidingView :: Array Props -> Array (ReactElement) -> ReactElement
keyboardAvoidingView props = createElement keyboardAvoidingViewClass (unsafeFromPropsArray props)

listView :: Array Props -> ReactElement
listView props = createElement listViewClass (unsafeFromPropsArray props) []

mapView :: Array Props ->  ReactElement
mapView props = createElement mapViewClass (unsafeFromPropsArray props) []

modal :: Array Props -> Array (ReactElement) -> ReactElement
modal props = createElement modalClass (unsafeFromPropsArray props)

picker :: Array Props -> Array (ReactElement) -> ReactElement
picker props = createElement pickerClass (unsafeFromPropsArray props)

pickerItem :: Array Props -> ReactElement
pickerItem props = createElement pickerItemClass (unsafeFromPropsArray props) []

progressBarAndroid :: Array Props -> ReactElement
progressBarAndroid props = createElement progressBarAndroidClass (unsafeFromPropsArray props) []

progressViewIOS :: Array Props -> ReactElement
progressViewIOS props = createElement progressViewIOSClass (unsafeFromPropsArray props) []

refreshControl' :: Array Props -> ReactElement
refreshControl' props = createElement refreshControlClass (unsafeFromPropsArray props) []

scrollView :: Array Props -> Array (ReactElement) -> ReactElement
scrollView props = createElement scrollViewClass (unsafeFromPropsArray props)

segmentedControlIOS :: Array Props -> ReactElement
segmentedControlIOS props = createElement segmentedControlIOSClass (unsafeFromPropsArray props) []

slider :: Array Props -> ReactElement
slider props = createElement sliderClass (unsafeFromPropsArray props) []

statusBar :: Array Props -> ReactElement
statusBar props = createElement statusBarClass (unsafeFromPropsArray props) []

snapshotViewIOS :: Array Props -> ReactElement
snapshotViewIOS props = createElement snapshotViewIOSClass (unsafeFromPropsArray props) []

switch :: Array Props ->  ReactElement
switch props = createElement switchClass (unsafeFromPropsArray props) []

tabBarIOS :: Array Props -> Array (ReactElement) -> ReactElement
tabBarIOS props = createElement tabBarIOSClass (unsafeFromPropsArray props)

tabBarIOSItem :: Array Props -> ReactElement
tabBarIOSItem props = createElement tabBarIOSItemClass (unsafeFromPropsArray props) []

text :: Array Props -> Array (ReactElement) -> ReactElement
text props = createElement textClass (unsafeFromPropsArray props)

textInput :: Array Props -> ReactElement
textInput props = createElement textInputClass (unsafeFromPropsArray props) []

toolbarAndroid :: Array Props -> Array (ReactElement) -> ReactElement
toolbarAndroid props = createElement toolbarAndroidClass (unsafeFromPropsArray props)

touchableHighlight :: Array Props -> ReactElement -> ReactElement
touchableHighlight props = createElementOneChild touchableHighlightClass (unsafeFromPropsArray props)

touchableNativeFeedback :: Array Props -> ReactElement -> ReactElement
touchableNativeFeedback props = createElementOneChild touchableNativeFeedbackClass (unsafeFromPropsArray props)

touchableOpacity :: Array Props -> ReactElement -> ReactElement
touchableOpacity props = createElementOneChild touchableOpacityClass (unsafeFromPropsArray props)

touchableWithoutFeedback :: Array Props -> ReactElement -> ReactElement
touchableWithoutFeedback props = createElementOneChild touchableWithoutFeedbackClass (unsafeFromPropsArray props)

view' :: Array Props -> Array (ReactElement) -> ReactElement
view' props = createElement viewClass (unsafeFromPropsArray props)

viewPagerAndroid :: Array Props -> Array (ReactElement) -> ReactElement
viewPagerAndroid props = createElement viewPagerAndroidClass (unsafeFromPropsArray props)

webView :: Array Props -> ReactElement
webView props = createElement webViewClass (unsafeFromPropsArray props) []

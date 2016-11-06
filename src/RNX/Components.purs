module RNX.Components where

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Prelude

foreign import data ReactClass :: * -> *
foreign import data Element :: * -> *
foreign import data Prop :: * -> *


instance functorElement :: Functor Element where
  map f x = forwardTo f x

instance functorAttribute :: Functor Prop where
  map f x = mapAttribute f x


foreign import forwardTo :: forall a b. (a -> b) -> Element a -> Element b

foreign import mapAttribute :: forall a b. (a -> b) -> Prop a -> Prop b

-- createElement
foreign import createElement :: forall props action. ReactClass props -> props -> Array (Element action)-> Element action
foreign import createElementOneChild :: forall props action. ReactClass props -> props -> Element action -> Element action

-- classes
foreign import activityIndicatorClass :: forall props. ReactClass props
foreign import datePickerIOSClass :: forall props. ReactClass props
foreign import drawerLayoutAndroidClass :: forall props. ReactClass props
foreign import imageClass :: forall props. ReactClass props
foreign import keyboardAvoidingViewClass :: forall props. ReactClass props
foreign import listViewClass :: forall props. ReactClass props
foreign import mapViewClass :: forall props. ReactClass props
foreign import modalClass :: forall props. ReactClass props
foreign import pickerClass :: forall props. ReactClass props
foreign import pickerItemClass :: forall props. ReactClass props
foreign import progressViewIOSClass :: forall props. ReactClass props
foreign import refreshControlClass :: forall props. ReactClass props
foreign import scrollViewClass :: forall props. ReactClass props
foreign import segmentedControlIOSClass :: forall props. ReactClass props
foreign import sliderClass :: forall props. ReactClass props
foreign import statusBarClass :: forall props. ReactClass props
foreign import snapshotViewIOSClass :: forall props. ReactClass props
foreign import switchClass :: forall props. ReactClass props
foreign import tabBarIOSClass :: forall props. ReactClass props
foreign import tabBarIOSItemClass :: forall props. ReactClass props
foreign import textClass :: forall props. ReactClass props
foreign import textInputClass :: forall props. ReactClass props
foreign import toolbarAndroidClass :: forall props. ReactClass props
foreign import touchableHighlightClass :: forall props. ReactClass props
foreign import touchableNativeFeedbackClass :: forall props. ReactClass props
foreign import touchableOpacityClass :: forall props. ReactClass props
foreign import touchableWithoutFeedbackClass :: forall props. ReactClass props
foreign import viewClass :: forall props. ReactClass props
foreign import viewPagerAndroidClass :: forall props. ReactClass props
foreign import webViewClass :: forall props. ReactClass props
-- Elements
foreign import textElem :: forall action. String -> Element action


text' :: forall action. Array (Prop action) -> String -> Element action
text' props str = createElement textClass props [textElem str]


foreign import handler :: forall event action. Fn2 String (event -> action) (Prop action)

foreign import handlerBool :: forall event action. Fn2 String (event -> Boolean) (Prop action)

foreign import handlerUnit :: forall event action. Fn2 String (event -> Unit) (Prop action)


-- ActivityIndicator doesn't have any children
activityIndicator :: forall action. Array (Prop action) -> Element action
activityIndicator props = createElement activityIndicatorClass props []

datePickerIOS :: forall action. Array (Prop action) -> Element action
datePickerIOS props = createElement datePickerIOSClass props []

drawerLayoutAndroid :: forall action. Array (Prop action) -> Array (Element action) -> Element action
drawerLayoutAndroid = createElement drawerLayoutAndroidClass

image :: forall action. Array (Prop action) -> Array (Element action) -> Element action
image = createElement imageClass

keyboardAvoidingView :: forall action. Array (Prop action) -> Array (Element action) -> Element action
keyboardAvoidingView = createElement keyboardAvoidingViewClass

textView :: forall action. Array (Prop action) -> Array (Element action) -> Element action
textView = createElement textClass

listView :: forall action. Array (Prop action) -> Element action
listView props = createElement listViewClass props []

mapView :: forall action. Array (Prop action) -> Array (Element action) -> Element action
mapView = createElement mapViewClass

modal :: forall action. Array (Prop action) -> Array (Element action) -> Element action
modal = createElement modalClass

picker :: forall action. Array (Prop action) -> Array (Element action) -> Element action
picker = createElement pickerClass

pickerItem :: forall action. Array (Prop action) -> Array (Element action) -> Element action
pickerItem = createElement pickerItemClass


progressViewIOS :: forall action. Array (Prop action) -> Element action
progressViewIOS props = createElement progressViewIOSClass props []

refreshControl' :: forall action. Array (Prop action) -> Element action
refreshControl' props = createElement refreshControlClass props []

scrollView :: forall action. Array (Prop action) -> Array (Element action) -> Element action
scrollView = createElement scrollViewClass

segmentedControlIOS :: forall action. Array (Prop action) -> Element action
segmentedControlIOS props = createElement segmentedControlIOSClass props []

slider :: forall action. Array (Prop action) -> Element action
slider props = createElement sliderClass props []

statusBar :: forall action. Array (Prop action) -> Element action
statusBar props = createElement statusBarClass props []

snapshotViewIOS :: forall action. Array (Prop action) -> Element action
snapshotViewIOS props = createElement snapshotViewIOSClass props []

switch :: forall action. Array (Prop action) ->  Element action
switch props = createElement switchClass props []

tabBarIOS :: forall action. Array (Prop action) -> Array (Element action) -> Element action
tabBarIOS = createElement tabBarIOSClass

tabBarIOSItem :: forall action. Array (Prop action) -> Element action
tabBarIOSItem props = createElement tabBarIOSItemClass props []

-- TODO: Text can have Text Component inside
text :: forall action. Array (Prop action) -> String -> Element action
text props str = createElement textClass props [textElem str]

textInput :: forall action. Array (Prop action) -> Element action
textInput props = createElement textInputClass props []

toolbarAndroid :: forall action. Array (Prop action) -> Element action
toolbarAndroid props = createElement toolbarAndroidClass props []

touchableHighlight :: forall action. Array (Prop action) -> Element action -> Element action
touchableHighlight = createElementOneChild touchableHighlightClass

touchableNativeFeedback :: forall action. Array (Prop action) -> Element action -> Element action
touchableNativeFeedback = createElementOneChild touchableNativeFeedbackClass

touchableOpacity :: forall action. Array (Prop action) -> Element action -> Element action
touchableOpacity = createElementOneChild touchableOpacityClass

touchableWithoutFeedback :: forall action. Array (Prop action) -> Element action -> Element action
touchableWithoutFeedback = createElementOneChild touchableWithoutFeedbackClass

view' :: forall action. Array (Prop action) -> Array (Element action) -> Element action
view' = createElement viewClass

viewPagerAndroid :: forall action. Array (Prop action) -> Array (Element action) -> Element action
viewPagerAndroid = createElement viewPagerAndroidClass

webView :: forall action. Array (Prop action) -> Element action
webView props = createElement webViewClass props []

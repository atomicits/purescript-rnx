module RNX.Events where

import RNX.Components
import Prelude
import Data.Date
import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)


type LayoutEvent = {nativeEvent :: {layout :: {x :: Int, y :: Int, width :: Int, height :: Int}} }


newtype TouchEvent = TouchEvent {nativeEvent :: {changedTouches :: Array TouchEvent, identifier :: String, locationX :: Int, locationY :: Int, pageX :: Int, pageY :: Int, target :: String, timestamp :: String, touches :: Array TouchEvent} }


type SizeEvent = { nativeEvent :: { contentSize :: { width :: Int, height :: Int } } }


type ProgressEvent = { nativeEvent :: { loaded :: Boolean, total :: Number } }


-- onDrawerStateChanged, onPageScrollStateChanged  [idle, dragging, settling]

-- onError
-- {nativeEvent: {error}}

-- onEndReached
-- scrollEvent

-- onRequestClose
-- Platform.OS === 'android' ? PropTypes.func.isRequired

-- onOrientationChange PropTypes.func #

-- onValueChange
-- itemValue , itemPosition

-- onContentSizeChange
-- (contentWidth, contentHeight)

-- onSnapshotReady
-- function

-- onTintColor
-- color

-- onContentSizeChange
--  { nativeEvent: { contentSize: { width, height } } }.

-- onHideUnderlay, onShowUnderlay
-- function

-- onPageScroll
-- event.nativeEvent

-- onPageSelected
-- event.nativeEvent, position - index of page

-- onNavigationStateChange
-- navState

-- onShouldStartLoadWithRequest
-- Boolean

onPress :: forall action. (Unit -> action) -> Prop action
onPress = runFn2 handler "onPress"

onChangeText :: forall action. (String -> action) -> Prop action
onChangeText = runFn2 handler "onChangeText"

onLayout :: forall action. (LayoutEvent -> action) -> Prop action
onLayout  = runFn2 handler "onLayout"

onMoveShouldSetResponder :: forall event action. (event -> action) -> Prop action
onMoveShouldSetResponder = runFn2 handler "onMoveShouldSetResponder"

onMoveShouldSetResponderCapture :: forall event action. (event -> action) -> Prop action
onMoveShouldSetResponderCapture = runFn2 handler "onMoveShouldSetResponderCapture"

onResponderGrant :: forall event action. (event -> action) -> Prop action
onResponderGrant = runFn2 handler "onResponderGrant"


onResponderMove :: forall event action. (event -> action) -> Prop action
onResponderMove = runFn2 handler "onResponderMove"


onResponderReject :: forall event action. (event -> action) -> Prop action
onResponderReject = runFn2 handler "onResponderReject"


onResponderRelease :: forall event action. (event -> action) -> Prop action
onResponderRelease = runFn2 handler "onResponderRelease"


onResponderTerminate :: forall event action. (event -> action) -> Prop action
onResponderTerminate = runFn2 handler "onResponderTerminate"


onResponderTerminationRequest :: forall event action. (event -> action) -> Prop action
onResponderTerminationRequest = runFn2 handler "onResponderTerminationRequest"


onStartShouldSetResponder :: forall event action. (event -> action) -> Prop action
onStartShouldSetResponder = runFn2 handler "onStartShouldSetResponder"


onStartShouldSetResponderCapture :: forall event action. (event -> action) -> Prop action
onStartShouldSetResponderCapture = runFn2 handler "onStartShouldSetResponderCapture"


onDateChange :: forall action. (Date -> action) -> Prop action
onDateChange = runFn2 handler "onDateChange"


onDrawerClose :: forall action. (Unit -> action) -> Prop action
onDrawerClose = runFn2 handler "onDrawerClose"


onDrawerOpen :: forall action. (Unit -> action) -> Prop action
onDrawerOpen = runFn2 handler "onDrawerOpen"


onDrawerSlide :: forall action. (Unit -> action) -> Prop action
onDrawerSlide = runFn2 handler "onDrawerSlide"


onDrawerStateChanged :: forall event action. (event -> action) -> Prop action
onDrawerStateChanged = runFn2 handler "onDrawerStateChanged"


onLoad :: forall action. (Unit -> action) -> Prop action
onLoad = runFn2 handler "onLoad"


onLoadEnd :: forall action. (Unit -> action) -> Prop action
onLoadEnd = runFn2 handler "onLoadEnd"


onLoadStart :: forall action. (Unit -> action) -> Prop action
onLoadStart = runFn2 handler "onLoadStart"


onError :: forall event action. (event -> action) -> Prop action
onError = runFn2 handler "onError"


onPartialLoad  :: forall event action. (event -> action) -> Prop action
onPartialLoad = runFn2 handler "onPartialLoad"


onProgress :: forall action. (ProgressEvent -> action) -> Prop action
onProgress  = runFn2 handler "onProgress"



onChangeVisibleRows  :: forall event action. (event -> action) -> Prop action
onChangeVisibleRows = runFn2 handler "onChangeVisibleRows"


onEndReached :: forall event action. (event -> action) -> Prop action
onEndReached = runFn2 handler "onEndReached"


onRegionChange  :: forall event action. (event -> action) -> Prop action
onRegionChange  = runFn2 handler "onRegionChange"


onRegionChangeComplete :: forall event action. (event -> action) -> Prop action
onRegionChangeComplete = runFn2 handler "onRegionChangeComplete"


onRequestClose :: forall action. (Unit -> action) -> Prop action
onRequestClose = runFn2 handler "onRequestClose"


onShow :: forall action. (Unit -> action) -> Prop action
onShow = runFn2 handler "onShow"


onValueChange :: forall event action. (event -> action) -> Prop action
onValueChange = runFn2 handler "onValueChange"


onRefresh :: forall action. (Unit -> action) -> Prop action
onRefresh = runFn2 handler "onRefresh"


onContentSizeChange :: forall action. (SizeEvent -> action) -> Prop action
onContentSizeChange = runFn2 handler "onContentSizeChange"


onScroll :: forall action. (Unit -> action) -> Prop action
onScroll = runFn2 handler "onScroll"


onChange :: forall event action. (event -> action) -> Prop action
onChange = runFn2 handler "onChange"


onSlidingComplete :: forall action. (Unit -> action) -> Prop action
onSlidingComplete = runFn2 handler "onSlidingComplete"


onSnapshotReady :: forall event action. (event -> action) -> Prop action
onSnapshotReady = runFn2 handler "onSnapshotReady"


onLongPress :: forall action. (Unit -> action) -> Prop action
onLongPress = runFn2 handler "onLongPress"

onScrollAnimationEnd :: forall action. (Unit -> action) -> Prop action
onScrollAnimationEnd = runFn2 handler "onScrollAnimationEnd"


--onPress :: forall event action. (event -> action) -> Prop action
--onPress = runFn2 handler "onPress"


onBlur :: forall action. (Unit -> action) -> Prop action
onBlur = runFn2 handler "onBlur"


--onChangeText :: forall event action. (event -> action) -> Prop action
--onChangeText = runFn2 handler "onChangeText"


--onContentSizeChange :: forall event action. (event -> action) -> Prop action
--onContentSizeChange = runFn2 handler "onContentSizeChange"


onEndEditing :: forall action. (Unit -> action) -> Prop action
onEndEditing = runFn2 handler "onEndEditing"


onFocus :: forall action. (Unit -> action) -> Prop action
onFocus = runFn2 handler "onFocus"


type SelectionEvent = {nativeEvent::{selection::{start::Int, end:: Int}}}

-- TODO: handle selectionevent
onSelectionChange :: forall action. (SelectionEvent -> action) -> Prop action
onSelectionChange = runFn2 handler "onSelectionChange"


onSubmitEditing :: forall action. (Unit -> action) -> Prop action
onSubmitEditing = runFn2 handler "onSubmitEditing"


onKeyPress :: forall event action. (event -> action) -> Prop action
onKeyPress = runFn2 handler "onKeyPress"


onActionSelected :: forall action. (Int -> action) -> Prop action
onActionSelected = runFn2 handler "onActionSelected"


onIconClicked :: forall event action. (event -> action) -> Prop action
onIconClicked = runFn2 handler "onIconClicked"


onHideUnderlay :: forall event action. (event -> action) -> Prop action
onHideUnderlay = runFn2 handler "onHideUnderlay"


onShowUnderlay :: forall event action. (event -> action) -> Prop action
onShowUnderlay = runFn2 handler "onShowUnderlay"


onPressIn :: forall event action. (event -> action) -> Prop action
onPressIn = runFn2 handler "onPressIn"


onPressOut :: forall event action. (event -> action) -> Prop action
onPressOut = runFn2 handler "onPressOut"


onPageScroll :: forall event action. (event -> action) -> Prop action
onPageScroll = runFn2 handler "onPageScroll"


onPageScrollStateChanged :: forall event action. (event -> action) -> Prop action
onPageScrollStateChanged = runFn2 handler "onPageScrollStateChanged"


onPageSelected :: forall event action. (event -> action) -> Prop action
onPageSelected = runFn2 handler "onPageSelected"


onNavigationStateChange :: forall event action. (event -> action) -> Prop action
onNavigationStateChange = runFn2 handler "onNavigationStateChange"


onShouldStartLoadWithRequest :: forall event action. (event -> action) -> Prop action
onShouldStartLoadWithRequest = runFn2 handler "onShouldStartLoadWithRequest"

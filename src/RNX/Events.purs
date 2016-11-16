module RNX.Events where

import Prelude
import Data.Date (Date)
import React (Event, EventHandlerContext, handle)
import React.DOM.Props (unsafeMkProps, Props)


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

onPress :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPress f = unsafeMkProps "onPress" (handle f)

onChangeText :: forall eff props state result.
           (String -> EventHandlerContext eff props state result)
           -> Props
onChangeText f = unsafeMkProps "onChangeText" (handle f)

onLayout :: forall eff props state result.
           (LayoutEvent -> EventHandlerContext eff props state result)
           -> Props
onLayout  f = unsafeMkProps "onLayout" (handle f)

onMoveShouldSetResponder :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onMoveShouldSetResponder f = unsafeMkProps "onMoveShouldSetResponder" (handle f)

onMoveShouldSetResponderCapture :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onMoveShouldSetResponderCapture f = unsafeMkProps "onMoveShouldSetResponderCapture" (handle f)

onResponderGrant ::forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onResponderGrant f = unsafeMkProps "onResponderGrant" (handle f)


onResponderMove :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onResponderMove f = unsafeMkProps "onResponderMove" (handle f)


onResponderReject :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onResponderReject f = unsafeMkProps "onResponderReject" (handle f)


onResponderRelease :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onResponderRelease f = unsafeMkProps "onResponderRelease" (handle f)


onResponderTerminate :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onResponderTerminate f = unsafeMkProps "onResponderTerminate" (handle f)


onResponderTerminationRequest :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onResponderTerminationRequest f = unsafeMkProps "onResponderTerminationRequest" (handle f)


onStartShouldSetResponder :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onStartShouldSetResponder f = unsafeMkProps "onStartShouldSetResponder" (handle f)


onStartShouldSetResponderCapture :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onStartShouldSetResponderCapture f = unsafeMkProps "onStartShouldSetResponderCapture" (handle f)


onDateChange :: forall eff props state result.
           (Date -> EventHandlerContext eff props state result)
           -> Props
onDateChange f = unsafeMkProps "onDateChange" (handle f)


onDrawerClose :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onDrawerClose f = unsafeMkProps "onDrawerClose" (handle f)


onDrawerOpen :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onDrawerOpen f = unsafeMkProps "onDrawerOpen" (handle f)


onDrawerSlide :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onDrawerSlide f = unsafeMkProps "onDrawerSlide" (handle f)


onDrawerStateChanged :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onDrawerStateChanged f = unsafeMkProps "onDrawerStateChanged" (handle f)


onLoad :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onLoad f = unsafeMkProps "onLoad" (handle f)


onLoadEnd :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onLoadEnd f = unsafeMkProps "onLoadEnd" (handle f)


onLoadStart :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onLoadStart f = unsafeMkProps "onLoadStart" (handle f)


onError :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onError f = unsafeMkProps "onError" (handle f)


onPartialLoad  :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPartialLoad f = unsafeMkProps "onPartialLoad" (handle f)


onProgress :: forall eff props state result.
           (ProgressEvent -> EventHandlerContext eff props state result)
           -> Props
onProgress  f = unsafeMkProps "onProgress" (handle f)



onChangeVisibleRows  :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onChangeVisibleRows f = unsafeMkProps "onChangeVisibleRows" (handle f)


onEndReached :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onEndReached f = unsafeMkProps "onEndReached" (handle f)


onRegionChange  :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onRegionChange  f = unsafeMkProps "onRegionChange" (handle f)


onRegionChangeComplete :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onRegionChangeComplete f = unsafeMkProps "onRegionChangeComplete" (handle f)


onRequestClose :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onRequestClose f = unsafeMkProps "onRequestClose" (handle f)


onShow :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onShow f = unsafeMkProps "onShow" (handle f)


onValueChange :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onValueChange f = unsafeMkProps "onValueChange" (handle f)


onRefresh :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onRefresh f = unsafeMkProps "onRefresh" (handle f)


onContentSizeChange :: forall eff props state result.
           (SizeEvent -> EventHandlerContext eff props state result)
           -> Props
onContentSizeChange f = unsafeMkProps "onContentSizeChange" (handle f)


onScroll :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onScroll f = unsafeMkProps "onScroll" (handle f)


onChange :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onChange f = unsafeMkProps "onChange" (handle f)


onSlidingComplete :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onSlidingComplete f = unsafeMkProps "onSlidingComplete" (handle f)


onSnapshotReady :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onSnapshotReady f = unsafeMkProps "onSnapshotReady" (handle f)


onLongPress :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onLongPress f = unsafeMkProps "onLongPress" (handle f)

onScrollAnimationEnd :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onScrollAnimationEnd f = unsafeMkProps "onScrollAnimationEnd" (handle f)


--onPress :: forall eff props state result.
--           (Event -> EventHandlerContext eff props state result)
--           -> Props
--onPress f = unsafeMkProps "onPress" (handle f)


onBlur :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onBlur f = unsafeMkProps "onBlur" (handle f)


--onChangeText :: forall eff props state result.
--           (Event -> EventHandlerContext eff props state result)
--           -> Props
--onChangeText f = unsafeMkProps "onChangeText" (handle f)


--onContentSizeChange :: forall eff props state result.
--           (Event -> EventHandlerContext eff props state result)
--           -> Props
--onContentSizeChange f = unsafeMkProps "onContentSizeChange" (handle f)


onEndEditing :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onEndEditing f = unsafeMkProps "onEndEditing" (handle f)


onFocus :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onFocus f = unsafeMkProps "onFocus" (handle f)


type SelectionEvent = {nativeEvent::{selection::{start::Int, end:: Int}}}

-- TODO: handle selectionevent
onSelectionChange :: forall eff props state result.
           (SelectionEvent -> EventHandlerContext eff props state result)
           -> Props
onSelectionChange f = unsafeMkProps "onSelectionChange" (handle f)


onSubmitEditing :: forall eff props state result.
           (Unit -> EventHandlerContext eff props state result)
           -> Props
onSubmitEditing f = unsafeMkProps "onSubmitEditing" (handle f)


onKeyPress :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onKeyPress f = unsafeMkProps "onKeyPress" (handle f)


onActionSelected :: forall eff props state result.
           (Int -> EventHandlerContext eff props state result)
           -> Props
onActionSelected f = unsafeMkProps "onActionSelected" (handle f)


onIconClicked :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onIconClicked f = unsafeMkProps "onIconClicked" (handle f)


onHideUnderlay :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onHideUnderlay f = unsafeMkProps "onHideUnderlay" (handle f)


onShowUnderlay :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onShowUnderlay f = unsafeMkProps "onShowUnderlay" (handle f)


onPressIn :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPressIn f = unsafeMkProps "onPressIn" (handle f)


onPressOut :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPressOut f = unsafeMkProps "onPressOut" (handle f)


onPageScroll :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPageScroll f = unsafeMkProps "onPageScroll" (handle f)


onPageScrollStateChanged :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPageScrollStateChanged f = unsafeMkProps "onPageScrollStateChanged" (handle f)


onPageSelected :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onPageSelected f = unsafeMkProps "onPageSelected" (handle f)


onNavigationStateChange :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onNavigationStateChange f = unsafeMkProps "onNavigationStateChange" (handle f)


onShouldStartLoadWithRequest :: forall eff props state result.
           (Event -> EventHandlerContext eff props state result)
           -> Props
onShouldStartLoadWithRequest f = unsafeMkProps "onShouldStartLoadWithRequest" (handle f)

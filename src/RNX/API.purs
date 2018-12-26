module RNX.API where

import Prelude

import Effect (Effect)

foreign import _getCurrentPosition :: forall error geodata options. (geodata -> Effect Unit) -> (error -> Effect Unit) -> options -> Effect Unit

-- _getCurrentPosition' :: forall e options geodata. options -> Aff e geodata
-- _getCurrentPosition' options = makeAff (\error success -> _getCurrentPosition success error options)

--getCurrentPosition :: forall options geodata. options -> Either String geodata

-- getCurrentPosition :: forall e options geodata. options -> Aff e (Either Error geodata)
-- getCurrentPosition options = do
--   res <- attempt $ _getCurrentPosition' options
--   pure $ either Left Right res

-- / Geolocation API

type ButtonIndex = Int
newtype ActionSheetOptions = ActionSheetOptions {options :: Array String, cancelButtonIndex :: ButtonIndex, destructiveuttonIndex :: ButtonIndex, title :: String, message :: String}


foreign import actionSheetIOS_showActionSheetWithOptions :: forall action. ActionSheetOptions -> (ButtonIndex -> action) -> Effect Unit


foreign import actionSheetIOS_showShareActionSheetWithOptions :: forall options action. options -> (String -> action) -> (Boolean -> String -> action) -> Effect Unit

type DeviceID = String

foreign import adSupportIOS_getAdvertisingId :: forall action. (DeviceID -> action) -> (String -> action) -> Effect Unit

type HasTracking = Boolean

foreign import adSupportIOS_getAdvertisingTrackingEnabled :: forall action. (HasTracking -> action) -> (String -> action) -> Effect Unit

data AlertButtonStyle = ABSLater | ABSCancel | ABSOK

newtype AlertButton = AlertButton {text :: String, onPress :: forall action. (Unit -> action), style :: AlertButtonStyle}

foreign import alert_alert :: forall options type'. String -> String  -> Array AlertButton -> options -> type' -> Effect Unit


foreign import alertIOS_alert :: forall callBackOrButton type'. String -> String -> Array callBackOrButton -> type'  -> Effect Unit


foreign import alertIOS_prompt :: forall callBackOrButtons type'. String -> String -> Array callBackOrButtons -> type' -> String -> Effect Unit

--Animated {value: AnimatedValue | AnimatedValueXY,config: DecayAnimationConfig,} https://github.com/facebook/react-native/search?utf8=%E2%9C%93&q=Animated.decay&type=Code

foreign import animated_decay                   :: forall value config. value -> config -> Effect Unit
foreign import animated_timing                  :: forall value config. value -> config -> Effect Unit
foreign import animated_spring                  :: forall value config. value -> config -> Effect Unit
foreign import animated_add                     :: forall a b. a -> b -> Effect Unit
foreign import animated_divide                  :: forall a b. a -> b -> Effect Unit
foreign import animated_multiply                :: forall a b. a -> b -> Effect Unit
foreign import animated_modulo                  :: forall a modulus. a -> modulus -> Effect Unit
foreign import animated_diffClamp               :: forall a min max. a -> min -> max ->  Effect Unit
foreign import animated_delay                   :: forall time.  time -> Effect Unit
foreign import animated_sequence                :: forall animations.  animations -> Effect Unit
foreign import animated_parallel                :: forall animations config. animations -> config -> Effect Unit
foreign import animated_stagger                 :: forall time animations . time -> animations -> Effect Unit
foreign import animated_event                   :: forall argMapping config . argMapping -> config -> Effect Unit
foreign import animated_createAnimatedComponent :: forall component'. component' -> Effect Unit


foreign import appRegistry_registerConfig                       :: forall config. config -> Effect Unit
foreign import appRegistry_registerComponent                    :: forall appKey getComponentFunc . appKey -> getComponentFunc -> Effect Unit
foreign import appRegistry_registerRunnable                     :: forall appKey func . appKey -> func -> Effect Unit
foreign import appRegistry_getAppKeys                           :: Effect Unit
foreign import appRegistry_runApplication                       :: forall appKey appParameters . appKey -> appParameters -> Effect Unit
foreign import appRegistry_unmountApplicationComponentAtRootTag :: forall rootTag. rootTag -> Effect Unit
foreign import appRegistry_registerHeadlessTask                 :: forall taskKey task . taskKey -> task -> Effect Unit
foreign import appRegistry_startHeadlessTask                    :: forall taskId taskKey data'. taskId -> taskKey -> data' ->  Effect Unit


foreign import appState_addEventListener    :: forall type' handler . type' -> handler -> Effect Unit
foreign import appState_removeEventListener :: forall type' handler . type' -> handler -> Effect Unit

foreign import asyncStorage_getItem          :: forall callback . String -> callback -> Effect Unit
foreign import asyncStorage_setItem          :: forall callback. String -> String -> callback ->  Effect Unit
foreign import asyncStorage_removeItem       :: forall callback . String -> callback -> Effect Unit
foreign import asyncStorage_mergeItem        :: forall callback. String -> String -> callback ->  Effect Unit
foreign import asyncStorage_clear            :: forall callback. callback -> Effect Unit
foreign import asyncStorage_getAllKeys       :: forall callback. callback -> Effect Unit
foreign import asyncStorage_flushGetRequests :: Effect Unit
foreign import asyncStorage_multiGet         :: forall callback. Array String -> callback ->Effect Unit
foreign import asyncStorage_multiSet         :: forall callback. Array (Array String) -> callback ->Effect Unit
foreign import asyncStorage_multiRemove      :: forall callback. Array String -> callback ->Effect Unit
foreign import asyncStorage_multiMerge       :: forall callback. Array (Array String) -> callback ->Effect Unit

-- foreign import backAndroid_exitApp             :: forall e.Effect Unit
-- foreign import backAndroid_addEventListener    ::forall e eventName handler . eventName -> handler -> Effect Unit
-- foreign import backAndroid_removeEventListener ::forall e eventName handler . eventName -> handler -> Effect Unit


foreign import cameraRoll_saveImageWithTag :: forall tag. tag -> Effect Unit
foreign import cameraRoll_saveToCameraRoll :: forall tag type'. tag -> type' -> Effect Unit
foreign import cameraRoll_getPhotos        :: forall params. params -> Effect Unit


foreign import clipboard_getString :: Effect Unit
foreign import clipboard_setString :: forall content. content -> Effect Unit


foreign import datePickerAndroid_open            :: forall options. options -> Effect Unit
foreign import datePickerAndroid_dateSetAction   :: Effect Unit
foreign import datePickerAndroid_dismissedAction :: Effect Unit

type Dimensions =
  { width :: Int
  , height :: Int
  , scale :: Int
  , fontScale :: Int
  }

foreign import dimensions_set :: forall dims. dims -> Effect Unit
foreign import dimensions_get :: String -> Dimensions


foreign import easing_step0   :: forall a. a -> Effect Unit
foreign import easing_step1   :: forall a. a -> Effect Unit
foreign import easing_linear  :: forall a. a -> Effect Unit
foreign import easing_ease    :: forall a. a -> Effect Unit
foreign import easing_quad    :: forall a. a -> Effect Unit
foreign import easing_cubic   :: forall a. a -> Effect Unit
foreign import easing_poly    :: forall a. a -> Effect Unit
foreign import easing_sin     :: forall a. a -> Effect Unit
foreign import easing_circle  :: forall a. a -> Effect Unit
foreign import easing_exp     :: forall a. a -> Effect Unit
foreign import easing_elastic :: forall bounciness. bounciness -> Effect Unit
foreign import easing_back    :: forall a. a -> Effect Unit
foreign import easing_bounce  :: forall a. a -> Effect Unit
foreign import easing_bezier  :: forall x1 y1 x2 y2. x1 -> y1 -> x2 -> y2 -> Effect Unit
foreign import easing_in      :: forall easing. easing -> Effect Unit
foreign import easing_out     :: forall easing. easing -> Effect Unit
foreign import easing_inOut   :: forall easing. easing -> Effect Unit


foreign import geolocation_getCurrentPosition :: forall geo_success geo_error geo_options. geo_success -> geo_error -> geo_options -> Effect Unit
foreign import geolocation_watchPosition      :: forall success error options. success -> error -> options -> Effect Unit
foreign import geolocation_clearWatch         :: forall watchID. watchID -> Effect Unit
foreign import geolocation_stopObserving      :: Effect Unit


foreign import imageEditor_cropImage :: forall uri cropData success failure.uri ->  cropData -> success ->  failure -> Effect Unit


foreign import imagePickerIOS_canRecordVideos  :: forall callback. callback -> Effect Unit
foreign import imagePickerIOS_canUseCamera     ::forall callback. callback -> Effect Unit
foreign import imagePickerIOS_openCameraDialog ::forall config successCallback cancelCallback .config ->  successCallback -> cancelCallback-> Effect Unit
foreign import imagePickerIOS_openSelectDialog ::forall config successCallback cancelCallback .config ->  successCallback -> cancelCallback-> Effect Unit


foreign import imageStore_hasImageForTag     :: forall uri callback. uri -> callback -> Effect Unit
foreign import imageStore_removeImageForTag  :: forall uri. uri -> Effect Unit
foreign import imageStore_addImageFromBase64 ::forall base64ImageData success failure. base64ImageData -> success -> failure -> Effect Unit
foreign import imageStore_getBase64ForTag    :: forall uri success failure. uri -> success -> failure -> Effect Unit


foreign import interactionManager_runAfterInteractions    :: forall task. task -> Effect Unit
foreign import interactionManager_createInteractionHandle :: Effect Unit
foreign import interactionManager_clearInteractionHandle  :: forall handle. handle -> Effect Unit
foreign import interactionManager_setDeadline             :: forall deadline. deadline -> Effect Unit


foreign import keyboard_addListener        :: forall eventName callback. eventName -> callback -> Effect Unit
foreign import keyboard_removeListener     :: forall eventName callback. eventName -> callback -> Effect Unit
foreign import keyboard_removeAllListeners :: forall eventName. eventName -> Effect Unit
foreign import keyboard_dismiss            :: Effect Unit


foreign import layoutAnimation_configureNext :: forall config onAnimationDidEnd. config -> onAnimationDidEnd -> Effect Unit
foreign import layoutAnimation_create        :: forall duration type' creationProp. duration -> type' -> creationProp -> Effect Unit

-- Linking
foreign import linking_addEventListener    :: forall type' handler. type' -> handler -> Effect Unit
foreign import linking_removeEventListener :: forall type' handler. type' -> handler -> Effect Unit
foreign import linking_openURL             :: forall uri. uri -> Effect Unit
foreign import linking_canOpenURL          :: forall uri. uri -> Effect Unit
foreign import linking_getInitialURL       :: Effect Unit

-- NativeMethodsMixin
foreign import nativeMethodsMixin_measure         :: forall event action. (event -> action) -> Effect Unit
foreign import nativeMethodsMixin_measureInWindow :: forall event action. (event -> action) -> Effect Unit
foreign import nativeMethodsMixin_measureLayout   :: forall relativeToNativeNode onSuccess onFail. relativeToNativeNode -> onSuccess -> onFail -> Effect Unit
foreign import nativeMethodsMixin_focus           :: Effect Unit
foreign import nativeMethodsMixin_blur            :: Effect Unit

-- NetInfo
foreign import netInfo_isConnectionExpensive :: Effect Unit
foreign import netInfo_isConnected           :: Effect Unit
foreign import netInfo_addEventListener      :: forall eventName handler. eventName -> handler -> Effect Unit
foreign import netInfo_removeEventListener   :: forall eventName handler. eventName -> handler -> Effect Unit
foreign import netInfo_fetch                 :: Effect Unit


-- //-- isConnected

-- PanResponder
foreign import panResponder_create :: forall config. config -> Effect Unit


-- PermissionsAndroid
foreign import permissionsAndroid_checkPermission   :: forall permission. permission -> Effect Unit
foreign import permissionsAndroid_requestPermission :: forall permission rationale. permission -> rationale -> Effect Unit


-- PixelRatio
foreign import pixelRatio_get :: Effect Unit
foreign import pixelRatio_getFontScale              :: Effect Unit
foreign import pixelRatio_getPixelSizeForLayoutSize :: forall layoutSize. layoutSize -> Effect Unit
foreign import pixelRatio_roundToNearestPixel       :: forall layoutSize. layoutSize -> Effect Unit
foreign import pixelRatio_startDetecting            :: Effect Unit


--PushNotificationIOS

newtype PNLDetails = PNLDetails
  { alertBody                  :: String
  , alertAction                :: String
  , soundName                  :: String
  , category                   :: String
  , userInfo                   :: String
  , applicationIconBadgeNumber :: Number
  }

newtype SLNDetails = SNLDetails
 { fireDate                   :: String
 , alertBody                  :: String
 , alertAction                :: String
 , soundName                  :: String
 , category                   :: String
 , userInfo                   :: String
 , applicationIconBadgeNumber :: Number
 }

foreign import pushNotificationIOS_presentLocalNotification       :: PNLDetails ->  Effect Unit
foreign import pushNotificationIOS_scheduleLocalNotification      :: SLNDetails -> Effect Unit
foreign import pushNotificationIOS_cancelAllLocalNotifications    :: Effect Unit
foreign import pushNotificationIOS_setApplicationIconBadgeNumber  :: Number ->  Effect Unit
foreign import pushNotificationIOS_getApplicationIconBadgeNumber  :: forall event action. (event -> action) -> Effect Unit
foreign import pushNotificationIOS_cancelLocalNotifications       :: forall userInfo. userInfo -> Effect Unit
foreign import pushNotificationIOS_getScheduledLocalNotifications :: forall event action. (event -> action) ->  Effect Unit
foreign import pushNotificationIOS_addEventListener               :: forall type' handler. type' -> handler -> Effect Unit
foreign import pushNotificationIOS_removeEventListener            :: forall type' handler. type' -> handler -> Effect Unit
foreign import pushNotificationIOS_requestPermissions             :: forall permissions. permissions -> Effect Unit
foreign import pushNotificationIOS_abandonPermissions             :: Effect Unit
foreign import pushNotificationIOS_checkPermissions               :: forall event action. (event -> action) -> Effect Unit
foreign import pushNotificationIOS_getInitialNotification         :: Effect Unit
foreign import pushNotificationIOS_getMessage                     :: Effect Unit
foreign import pushNotificationIOS_getSound                       :: Effect Unit
foreign import pushNotificationIOS_getAlert                       :: Effect Unit
foreign import pushNotificationIOS_getBadgeCount                  :: Effect Unit
foreign import pushNotificationIOS_getData                        :: Effect Unit


--Settings
foreign import settings_get        :: forall key. key -> Effect Unit
foreign import settings_set        :: forall settings. settings -> Effect Unit
foreign import settings_watchKeys  :: forall keys event action . keys -> (event -> action) -> Effect Unit
foreign import settings_clearWatch :: forall watchId. watchId -> Effect Unit


-- StyleSheet
foreign import styleSheet_create :: forall obj. obj -> Effect Unit


-- Systrace
foreign import systrace_setEnabled            :: Boolean -> Effect Unit
foreign import systrace_beginEvent            :: forall args. String -> args -> Effect Unit
foreign import systrace_endEvent              :: Effect Unit
foreign import systrace_beginAsyncEvent       :: String -> Effect Unit
foreign import systrace_endAsyncEvent         :: forall cookie. String -> cookie -> Effect Unit
foreign import systrace_counterEvent          :: forall value. String -> value -> Effect Unit
foreign import systrace_attachToRelayProfiler :: forall relayProfiler. relayProfiler -> Effect Unit
foreign import systrace_swizzleJSON           :: Effect Unit
foreign import systrace_measureMethods        :: forall object objectName methodNames. object -> objectName -> methodNames -> Effect Unit
foreign import systrace_measure               :: forall objName fnName func. objName -> fnName -> func -> Effect Unit


-- TimePickerAndroid
foreign import timePickerAndroid_open            :: forall options. options -> Effect Unit
foreign import timePickerAndroid_timeSetAction   :: Effect Unit
foreign import timePickerAndroid_dismissedAction :: Effect Unit


-- ToastAndroid
data Duration = SHORT | LONG
data Gravity = TOP | BOTTOM | CENTER

foreign import toastAndroid_show            :: String -> Duration -> Effect Unit
foreign import toastAndroid_showWithGravity :: String -> Duration -> Gravity -> Effect Unit


-- Vibration
foreign import vibration_vibrate :: Array Int  -> Boolean -> Effect  Unit
foreign import vibration_cancel  :: Effect Unit

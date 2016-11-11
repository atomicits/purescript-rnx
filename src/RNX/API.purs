module RNX.API where

import Control.Monad.Eff
import Prelude
import Data.Either
import Control.Monad.Aff
import Control.Monad.Eff.Exception
import Control.Monad.Eff.Class

-- Geolocation API with Aff
foreign import data GEOLOCATION :: !

foreign import _getCurrentPosition :: forall geodata options e. (geodata -> Eff e Unit) -> (Error -> Eff e Unit) -> options -> Eff e Unit

_getCurrentPosition' :: forall e options geodata. options -> Aff e geodata
_getCurrentPosition' options = makeAff (\error success -> _getCurrentPosition success error options)

--getCurrentPosition :: forall options geodata. options -> Either String geodata

getCurrentPosition :: forall e options geodata. options -> Aff e (Either Error geodata)
getCurrentPosition options = do
  res <- attempt $ _getCurrentPosition' options
  pure $ either Left Right res


-- / Geolocation API

type ButtonIndex = Int
newtype ActionSheetOptions = ActionSheetOptions {options :: Array String, cancelButtonIndex :: ButtonIndex, destructiveuttonIndex :: ButtonIndex, title :: String, message :: String}


foreign import actionSheetIOS_showActionSheetWithOptions :: forall e action. ActionSheetOptions -> (ButtonIndex -> action) -> Eff e Unit


foreign import actionSheetIOS_showShareActionSheetWithOptions :: forall e options action. options -> (String -> action) -> (Boolean -> String -> action) -> Eff e Unit

type DeviceID = String

foreign import adSupportIOS_getAdvertisingId :: forall e action. (DeviceID -> action) -> (String -> action) -> Eff e Unit

type HasTracking = Boolean

foreign import adSupportIOS_getAdvertisingTrackingEnabled :: forall e action. (HasTracking -> action) -> (String -> action) -> Eff e Unit

data AlertButtonStyle = ABSLater | ABSCancel | ABSOK

newtype AlertButton = AlertButton {text :: String, onPress :: forall action. (Unit -> action), style :: AlertButtonStyle}

foreign import alert_alert :: forall e options type'. String -> String  -> Array AlertButton -> options -> type' -> Eff e Unit


foreign import alertIOS_alert :: forall e callBackOrButton type'. String -> String -> Array callBackOrButton -> type'  -> Eff e Unit


foreign import alertIOS_prompt :: forall e  callBackOrButtons type'. String -> String -> Array callBackOrButtons -> type' -> String -> Eff e Unit

--Animated {value: AnimatedValue | AnimatedValueXY,config: DecayAnimationConfig,} https://github.com/facebook/react-native/search?utf8=%E2%9C%93&q=Animated.decay&type=Code

foreign import animated_decay                   :: forall e value config. value -> config -> Eff e Unit
foreign import animated_timing                  :: forall e value config. value -> config -> Eff e Unit
foreign import animated_spring                  :: forall e value config. value -> config -> Eff e Unit
foreign import animated_add                     :: forall e a b. a -> b -> Eff e Unit
foreign import animated_divide                  :: forall e a b. a -> b -> Eff e Unit
foreign import animated_multiply                :: forall e a b. a -> b -> Eff e Unit
foreign import animated_modulo                  :: forall e a modulus. a -> modulus -> Eff e Unit
foreign import animated_diffClamp               :: forall e a min max. a -> min -> max ->  Eff e Unit
foreign import animated_delay                   :: forall e  time.  time -> Eff e Unit
foreign import animated_sequence                :: forall e  animations.  animations -> Eff e Unit
foreign import animated_parallel                :: forall e animations config. animations -> config -> Eff e Unit
foreign import animated_stagger                 :: forall e time animations . time -> animations -> Eff e Unit
foreign import animated_event                   :: forall e argMapping config . argMapping -> config -> Eff e Unit
foreign import animated_createAnimatedComponent :: forall e component'. component' -> Eff e Unit


foreign import appRegistry_registerConfig                       :: forall e config. config -> Eff e Unit
foreign import appRegistry_registerComponent                    :: forall e appKey getComponentFunc . appKey -> getComponentFunc -> Eff e Unit
foreign import appRegistry_registerRunnable                     :: forall e appKey func . appKey -> func -> Eff e Unit
foreign import appRegistry_getAppKeys                           :: forall e. Eff e Unit
foreign import appRegistry_runApplication                       :: forall e appKey appParameters . appKey -> appParameters -> Eff e Unit
foreign import appRegistry_unmountApplicationComponentAtRootTag :: forall e rootTag. rootTag -> Eff e Unit
foreign import appRegistry_registerHeadlessTask                 :: forall e taskKey task . taskKey -> task -> Eff e Unit
foreign import appRegistry_startHeadlessTask                    :: forall e taskId taskKey data'. taskId -> taskKey -> data' ->  Eff e Unit


foreign import appState_addEventListener    :: forall e type' handler . type' -> handler -> Eff e Unit
foreign import appState_removeEventListener :: forall e type' handler . type' -> handler -> Eff e Unit


foreign import asyncStorage_getItem          :: forall e callback . String -> callback -> Eff e Unit
foreign import asyncStorage_setItem          :: forall e callback. String -> String -> callback ->  Eff e Unit
foreign import asyncStorage_removeItem       :: forall e callback . String -> callback -> Eff e Unit
foreign import asyncStorage_mergeItem        :: forall e callback. String -> String -> callback ->  Eff e Unit
foreign import asyncStorage_clear            :: forall e callback. callback -> Eff e Unit
foreign import asyncStorage_getAllKeys       :: forall e callback. callback -> Eff e Unit
foreign import asyncStorage_flushGetRequests :: forall e. Eff e Unit
foreign import asyncStorage_multiGet         :: forall e callback. Array String -> callback ->Eff e Unit
foreign import asyncStorage_multiSet         :: forall e callback. Array (Array String) -> callback ->Eff e Unit
foreign import asyncStorage_multiRemove      :: forall e callback. Array String -> callback ->Eff e Unit
foreign import asyncStorage_multiMerge       :: forall e callback. Array (Array String) -> callback ->Eff e Unit

foreign import backAndroid_exitApp             :: forall e.Eff e Unit
foreign import backAndroid_addEventListener    ::forall e eventName handler . eventName -> handler -> Eff e Unit
foreign import backAndroid_removeEventListener ::forall e eventName handler . eventName -> handler -> Eff e Unit


foreign import cameraRoll_saveImageWithTag :: forall e tag. tag -> Eff e Unit
foreign import cameraRoll_saveToCameraRoll :: forall e tag type'. tag -> type' -> Eff e Unit
foreign import cameraRoll_getPhotos        :: forall e params. params -> Eff e Unit


foreign import clipboard_getString :: forall e. Eff e Unit
foreign import clipboard_setString :: forall e content. content -> Eff e Unit


foreign import datePickerAndroid_open            :: forall e options. options -> Eff e Unit
foreign import datePickerAndroid_dateSetAction   :: forall e. Eff e Unit
foreign import datePickerAndroid_dismissedAction :: forall e. Eff e Unit

type Dimensions =
  { width :: Int
  , height :: Int
  , scale :: Int
  , fontScale :: Int
  }

foreign import dimensions_set :: forall e dims. dims -> Eff e Unit
foreign import dimensions_get :: String -> Dimensions


foreign import easing_step0   :: forall e a. a -> Eff e Unit
foreign import easing_step1   :: forall e a. a -> Eff e Unit
foreign import easing_linear  :: forall e a. a -> Eff e Unit
foreign import easing_ease    :: forall e a. a -> Eff e Unit
foreign import easing_quad    :: forall e a. a -> Eff e Unit
foreign import easing_cubic   :: forall e a. a -> Eff e Unit
foreign import easing_poly    :: forall e a. a -> Eff e Unit
foreign import easing_sin     :: forall e a. a -> Eff e Unit
foreign import easing_circle  :: forall e a. a -> Eff e Unit
foreign import easing_exp     :: forall e a. a -> Eff e Unit
foreign import easing_elastic :: forall e bounciness. bounciness -> Eff e Unit
foreign import easing_back    :: forall e a. a -> Eff e Unit
foreign import easing_bounce  :: forall e a. a -> Eff e Unit
foreign import easing_bezier  :: forall e x1 y1 x2 y2. x1 -> y1 -> x2 -> y2 -> Eff e Unit
foreign import easing_in      :: forall e easing. easing -> Eff e Unit
foreign import easing_out     :: forall e easing. easing -> Eff e Unit
foreign import easing_inOut   :: forall e easing. easing -> Eff e Unit


foreign import geolocation_getCurrentPosition :: forall e geo_success geo_error geo_options. geo_success -> geo_error -> geo_options -> Eff e Unit
foreign import geolocation_watchPosition      :: forall e success error options. success -> error -> options -> Eff e Unit
foreign import geolocation_clearWatch         :: forall e watchID. watchID -> Eff e Unit
foreign import geolocation_stopObserving      :: forall e. Eff e Unit


foreign import imageEditor_cropImage :: forall e uri cropData success failure.uri ->  cropData -> success ->  failure -> Eff e Unit


foreign import imagePickerIOS_canRecordVideos  :: forall e callback. callback -> Eff e Unit
foreign import imagePickerIOS_canUseCamera     ::forall e callback. callback -> Eff e Unit
foreign import imagePickerIOS_openCameraDialog ::forall e config successCallback cancelCallback .config ->  successCallback -> cancelCallback-> Eff e Unit
foreign import imagePickerIOS_openSelectDialog ::forall e config successCallback cancelCallback .config ->  successCallback -> cancelCallback-> Eff e Unit


foreign import imageStore_hasImageForTag     :: forall e uri callback. uri -> callback -> Eff e Unit
foreign import imageStore_removeImageForTag  :: forall e uri. uri -> Eff e Unit
foreign import imageStore_addImageFromBase64 ::forall e base64ImageData success failure. base64ImageData -> success -> failure -> Eff e Unit
foreign import imageStore_getBase64ForTag    :: forall e uri success failure. uri -> success -> failure -> Eff e Unit


foreign import interactionManager_runAfterInteractions    :: forall e task. task -> Eff e Unit
foreign import interactionManager_createInteractionHandle :: forall e. Eff e Unit
foreign import interactionManager_clearInteractionHandle  :: forall e handle. handle -> Eff e Unit
foreign import interactionManager_setDeadline             :: forall e deadline. deadline -> Eff e Unit


foreign import keyboard_addListener        :: forall e eventName callback. eventName -> callback -> Eff e Unit
foreign import keyboard_removeListener     :: forall e eventName callback. eventName -> callback -> Eff e Unit
foreign import keyboard_removeAllListeners :: forall e eventName. eventName -> Eff e Unit
foreign import keyboard_dismiss            :: forall e. Eff e Unit


foreign import layoutAnimation_configureNext :: forall e config onAnimationDidEnd. config -> onAnimationDidEnd -> Eff e Unit
foreign import layoutAnimation_create        :: forall e duration type' creationProp. duration -> type' -> creationProp -> Eff e Unit

-- Linking
foreign import linking_addEventListener    :: forall e type' handler. type' -> handler -> Eff e Unit
foreign import linking_removeEventListener :: forall e type' handler. type' -> handler -> Eff e Unit
foreign import linking_openURL             :: forall e uri. uri -> Eff e Unit
foreign import linking_canOpenURL          :: forall e uri. uri -> Eff e Unit
foreign import linking_getInitialURL       :: forall e. Eff e Unit

-- NativeMethodsMixin
foreign import nativeMethodsMixin_measure         :: forall e event action. (event -> action) -> Eff e Unit
foreign import nativeMethodsMixin_measureInWindow :: forall e event action. (event -> action) -> Eff e Unit
foreign import nativeMethodsMixin_measureLayout   :: forall e relativeToNativeNode onSuccess onFail. relativeToNativeNode -> onSuccess -> onFail -> Eff e Unit
foreign import nativeMethodsMixin_focus           :: forall e. Eff e Unit
foreign import nativeMethodsMixin_blur            :: forall e. Eff e Unit

-- NetInfo
foreign import netInfo_isConnectionExpensive :: forall e. Eff e Unit
foreign import netInfo_isConnected           :: forall e. Eff e Unit
foreign import netInfo_addEventListener      :: forall e eventName handler. eventName -> handler -> Eff e Unit
foreign import netInfo_removeEventListener   :: forall e eventName handler. eventName -> handler -> Eff e Unit
foreign import netInfo_fetch                 :: forall e. Eff e Unit


-- //-- isConnected

-- PanResponder
foreign import panResponder_create :: forall e config. config -> Eff e Unit


-- PermissionsAndroid
foreign import permissionsAndroid_checkPermission   :: forall e permission. permission -> Eff e Unit
foreign import permissionsAndroid_requestPermission :: forall e permission rationale. permission -> rationale -> Eff e Unit


-- PixelRatio
foreign import pixelRatio_get :: forall e. Eff e Unit
foreign import pixelRatio_getFontScale              :: forall e. Eff e Unit
foreign import pixelRatio_getPixelSizeForLayoutSize :: forall e layoutSize. layoutSize -> Eff e Unit
foreign import pixelRatio_roundToNearestPixel       :: forall e layoutSize. layoutSize -> Eff e Unit
foreign import pixelRatio_startDetecting            :: forall e. Eff e Unit


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

foreign import pushNotificationIOS_presentLocalNotification       :: forall e. PNLDetails ->  Eff e Unit
foreign import pushNotificationIOS_scheduleLocalNotification      :: forall e. SLNDetails -> Eff e Unit
foreign import pushNotificationIOS_cancelAllLocalNotifications    :: forall e. Eff e Unit
foreign import pushNotificationIOS_setApplicationIconBadgeNumber  :: forall e. Number ->  Eff e Unit
foreign import pushNotificationIOS_getApplicationIconBadgeNumber  :: forall e event action. (event -> action) -> Eff e Unit
foreign import pushNotificationIOS_cancelLocalNotifications       :: forall e userInfo. userInfo -> Eff e Unit
foreign import pushNotificationIOS_getScheduledLocalNotifications :: forall e event action. (event -> action) ->  Eff e Unit
foreign import pushNotificationIOS_addEventListener               :: forall e type' handler. type' -> handler -> Eff e Unit
foreign import pushNotificationIOS_removeEventListener            :: forall e type' handler. type' -> handler -> Eff e Unit
foreign import pushNotificationIOS_requestPermissions             :: forall e permissions. permissions -> Eff e Unit
foreign import pushNotificationIOS_abandonPermissions             :: forall e. Eff e Unit
foreign import pushNotificationIOS_checkPermissions               :: forall e event action. (event -> action) -> Eff e Unit
foreign import pushNotificationIOS_getInitialNotification         :: forall e. Eff e Unit
foreign import pushNotificationIOS_getMessage                     :: forall e. Eff e Unit
foreign import pushNotificationIOS_getSound                       :: forall e. Eff e Unit
foreign import pushNotificationIOS_getAlert                       :: forall e. Eff e Unit
foreign import pushNotificationIOS_getBadgeCount                  :: forall e. Eff e Unit
foreign import pushNotificationIOS_getData                        :: forall e. Eff e Unit


--Settings
foreign import settings_get        :: forall e key. key -> Eff e Unit
foreign import settings_set        :: forall e settings. settings -> Eff e Unit
foreign import settings_watchKeys  :: forall e keys event action . keys -> (event -> action) -> Eff e Unit
foreign import settings_clearWatch :: forall e watchId. watchId -> Eff e Unit


-- StyleSheet
foreign import styleSheet_create :: forall e obj. obj -> Eff e Unit


-- Systrace
foreign import systrace_setEnabled            :: forall e. Boolean -> Eff e Unit
foreign import systrace_beginEvent            :: forall e args. String -> args -> Eff e Unit
foreign import systrace_endEvent              :: forall e. Eff e Unit
foreign import systrace_beginAsyncEvent       :: forall e. String -> Eff e Unit
foreign import systrace_endAsyncEvent         :: forall e cookie. String -> cookie -> Eff e Unit
foreign import systrace_counterEvent          :: forall e value. String -> value -> Eff e Unit
foreign import systrace_attachToRelayProfiler :: forall e relayProfiler. relayProfiler -> Eff e Unit
foreign import systrace_swizzleJSON           :: forall e. Eff e Unit
foreign import systrace_measureMethods        :: forall e object objectName methodNames. object -> objectName -> methodNames -> Eff e Unit
foreign import systrace_measure               :: forall e objName fnName func. objName -> fnName -> func -> Eff e Unit


-- TimePickerAndroid
foreign import timePickerAndroid_open            :: forall e options. options -> Eff e Unit
foreign import timePickerAndroid_timeSetAction   :: forall e. Eff e Unit
foreign import timePickerAndroid_dismissedAction :: forall e. Eff e Unit


-- ToastAndroid
data Duration = SHORT | LONG
data Gravity = TOP | BOTTOM | CENTER

foreign import toastAndroid_show            :: forall e. String -> Duration -> Eff e Unit
foreign import toastAndroid_showWithGravity :: forall e. String -> Duration -> Gravity -> Eff e Unit


-- Vibration
foreign import vibration_vibrate :: forall e. Array Int  -> Boolean -> Eff e  Unit
foreign import vibration_cancel  :: forall e. Eff e Unit

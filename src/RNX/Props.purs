module RNX.Props where

import RNX.PropsTypes
import RNX.Components
import Control.Monad.Eff (Eff)
import Data.Date (Date)
import Data.Function.Uncurried (mkFn3, mkFn4)
import Prelude (class Show, show, Unit, (<<<), map, (<>))
import RNX.Color

foreign import unsafeMkProps :: forall key val action. key -> val -> Prop action

foreign import unsafeMkFnProps :: forall key val action. key -> val -> Prop action

foreign import dPLeft :: forall a. a
foreign import dPRight :: forall a. a

foreign import refreshControlSizeDefault :: forall a. a
foreign import refreshControlSizeLarge :: forall a. a

-- TODO: add accessibility stuff

type Box =
  { top    :: Int
  , bottom :: Int
  , left   :: Int
  , right  :: Int
  }


-- TODO: verify types of the fields
type TouchEvent =
  { changedTouches :: Array String
  , identifier :: Int
  , locationX :: Int
  , locationY :: Int
  , pageX :: Int
  , pageY :: Int
  , target :: Int
  , timestamp :: String
  , touches :: Array String
  }

type LayoutEvent =
  { layout :: Layout
  }

type Layout =
  { x :: Int
  , y :: Int
  , width :: Int
  , height :: Int
  }

data Size
  = SizeSmall
  | SizeLarge
  | SizeNum Number


pointerEvents :: forall action. PtrEvents -> Prop action
pointerEvents PtrEventsBoxNone = unsafeMkProps "pointerEvents" "box-none"
pointerEvents PtrEventsNone    = unsafeMkProps "pointerEvents" "none"
pointerEvents PtrEventsBoxOnly = unsafeMkProps "pointerEvents" "box-only"
pointerEvents PtrEventsAuto    = unsafeMkProps "pointerEvents" "auto"

data PtrEvents
  = PtrEventsBoxNone
  | PtrEventsNone
  | PtrEventsBoxOnly
  | PtrEventsAuto


testID :: forall action. String -> Prop action
testID = unsafeMkProps "testID"

key :: forall action. String -> Prop action
key = unsafeMkProps "key"


-- Animating

animating :: forall action. Boolean -> Prop action
animating = unsafeMkProps "animating"


color :: forall action. Color -> Prop action
color c = unsafeMkProps "color" (show c)

accessibilityLiveRegion :: forall action. AccessibilityLiveRegionProp -> Prop action
accessibilityLiveRegion  ALRPNone  = unsafeMkProps "accessibilityLiveRegion" "none"
accessibilityLiveRegion  Polite    = unsafeMkProps "accessibilityLiveRegion" "none"
accessibilityLiveRegion  Assertive = unsafeMkProps "accessibilityLiveRegion" "none"


collapsable :: forall action. Boolean -> Prop action
collapsable = unsafeMkProps "collapsable"


importantForAccessibility :: forall action. ImportantForAccessibilityProp -> Prop action
importantForAccessibility IAPAuto           = unsafeMkProps "importantForAccessibility" "auto"
importantForAccessibility Yes               = unsafeMkProps "importantForAccessibility" "yes"
importantForAccessibility No                = unsafeMkProps "importantForAccessibility" "no"
importantForAccessibility NoHideDescenDants = unsafeMkProps "importantForAccessibility" "no-hide-descendents"


needsOffscreenAlphaCompositing :: forall action. Boolean -> Prop action
needsOffscreenAlphaCompositing = unsafeMkProps "needsOffscreenAlphaCompositing"


renderToHardwareTextureAndroid :: forall action. Boolean -> Prop action
renderToHardwareTextureAndroid = unsafeMkProps "renderToHardwareTextureAndroid"


shouldRasterizeIOS :: forall action. Boolean -> Prop action
shouldRasterizeIOS = unsafeMkProps "shouldRasterizeIOS"



hidesWhenStopped :: forall action. Boolean -> Prop action
hidesWhenStopped = unsafeMkProps "hidesWhenStopped"


date :: forall action. Date -> Prop action
date = unsafeMkProps "date"


maximumDate :: forall action. Date -> Prop action
maximumDate = unsafeMkProps "maximumDate"


minimumDate :: forall action. Date -> Prop action
minimumDate = unsafeMkProps "minimumDate"


data MIType
  = MI1
  | MI2
  | MI3
  | MI4
  | MI5
  | MI6
  | MI10
  | MI12
  | MI15
  | MI20
  | MI30


minuteInterval :: forall action. MIType -> Prop action
minuteInterval MI1  = unsafeMkProps "minuteInterval" 1
minuteInterval MI2  = unsafeMkProps "minuteInterval" 2
minuteInterval MI3  = unsafeMkProps "minuteInterval" 3
minuteInterval MI4  = unsafeMkProps "minuteInterval" 4
minuteInterval MI5  = unsafeMkProps "minuteInterval" 5
minuteInterval MI6  = unsafeMkProps "minuteInterval" 6
minuteInterval MI10 = unsafeMkProps "minuteInterval" 10
minuteInterval MI12 = unsafeMkProps "minuteInterval" 12
minuteInterval MI15 = unsafeMkProps "minuteInterval" 15
minuteInterval MI20 = unsafeMkProps "minuteInterval" 20
minuteInterval MI30 = unsafeMkProps "minuteInterval" 30


data DateMode
  = DMDate
  | DMTime
  | DMDateTime


modeDate :: forall action. DateMode -> Prop action
modeDate DMDate     = unsafeMkProps "mode" "date"
modeDate DMTime     = unsafeMkProps "mode" "time"
modeDate DMDateTime = unsafeMkProps "mode" "datetime"


timeZoneOffsetInMinutes :: forall action. Int -> Prop action
timeZoneOffsetInMinutes = unsafeMkProps "timeZoneOffsetInMinutes"


drawerBackgroundColor :: forall action. Color -> Prop action
drawerBackgroundColor c = unsafeMkProps "drawerBackgroundColor" (show c)


data DLM
  = DLMUnlocked
  | DLMLockedClosed
  | DLMLockedOpen


drawerLockMode :: forall action. DLM -> Prop action
drawerLockMode DLMUnlocked     = unsafeMkProps "drawerLockMode" "unlocked"
drawerLockMode DLMLockedClosed = unsafeMkProps "drawerLockMode" "locked-closed"
drawerLockMode DLMLockedOpen   = unsafeMkProps "drawerLockMode" "locked-open"


data DrawerPosition
  = DPLeft
  | DPRight

drawerPosition :: forall action. DrawerPosition -> Prop action
drawerPosition DPLeft  = unsafeMkProps "drawerPosition" dPLeft
drawerPosition DPRight = unsafeMkProps "drawerPosition" dPRight


drawerWidth :: forall action. Int -> Prop action
drawerWidth = unsafeMkProps "drawerWidth"


keyboardDismissModeViewAndroid :: forall action. KDMVA -> Prop action
keyboardDismissModeViewAndroid KDMVANone   = unsafeMkProps "keyboardDismissModeViewAndroid" "none"
keyboardDismissModeViewAndroid KDMVAOnDrag = unsafeMkProps "keyboardDismissModeViewAndroid" "on-drag"

data KDMVA
  = KDMVANone
  | KDMVAOnDrag


statusBarBackgroundColor :: forall action. Color -> Prop action
statusBarBackgroundColor c = unsafeMkProps "statusBarBackgroundColor" (show c)


data RSMode
  = RSMCover
  | RSMContain
  | RSMStretch
  | RSMRepeat
  | RSMCenter


resizeMode :: forall action. RSMode -> Prop action
resizeMode RSMCover   = unsafeMkProps "resizeMode" "cover"
resizeMode RSMContain = unsafeMkProps "resizeMode" "contain"
resizeMode RSMStretch = unsafeMkProps "resizeMode" "stretch"
resizeMode RSMRepeat  = unsafeMkProps "resizeMode" "repeat"
resizeMode RSMCenter  = unsafeMkProps "resizeMode" "center"


data RSMD
  = RSMAuto
  | RSMResize
  | RSMScale


resizeMethod :: forall action. RSMD -> Prop action
resizeMethod RSMAuto   = unsafeMkProps "resizeMethod" "auto"
resizeMethod RSMResize = unsafeMkProps "resizeMethod" "resize"
resizeMethod RSMScale  = unsafeMkProps "resizeMethod" "scale"

-- TODO: ImageSourcePropType
data ImageURISourcePropType = Shape


accessibilityLabel :: forall action. String -> Prop action
accessibilityLabel = unsafeMkProps "accessibilityLabel"


blurRadius :: forall action. Number -> Prop action
blurRadius = unsafeMkProps "blurRadius"

data BT
  = BTHeight
  | BTPosition
  | BTPadding


behavior :: forall action. BT -> Prop action
behavior BTHeight   = unsafeMkProps "behavior" "height"
behavior BTPosition = unsafeMkProps "behavior" "position"
behavior BTPadding  = unsafeMkProps "behavior" "padding"


capInsets :: forall action. Box -> Prop action
capInsets = unsafeMkProps "capInsets"

enableEmptySections :: forall action. Boolean -> Prop action
enableEmptySections = unsafeMkProps "enableEmptySections"


initialListSize :: forall action. Int -> Prop action
initialListSize = unsafeMkProps "initialListSize"


pageSize :: forall action. Int -> Prop action
pageSize = unsafeMkProps "pageSize"


scrollRenderAheadDistance :: forall action. Int -> Prop action
scrollRenderAheadDistance = unsafeMkProps "scrollRenderAheadDistance"



-- annotations [{latitude: number, longitude: number, animateDrop: bool, draggable: bool, onDragStateChange: function, onFocus: function, onBlur: function, title: string, subtitle: string, leftCalloutView: element, rightCalloutView: element, detailCalloutView: element, tintColor: [object Object], image: Image.propTypes.source, view: element, id: string, hasLeftCallout: deprecatedPropType( React.PropTypes.bool, 'Use `leftCalloutView` instead.' ), hasRightCallout: deprecatedPropType( React.PropTypes.bool, 'Use `rightCalloutView` instead.' ), onLeftCalloutPress: deprecatedPropType( React.PropTypes.func, 'Use `leftCalloutView` instead.' ), onRightCalloutPress: deprecatedPropType( React.PropTypes.func, 'Use `rightCalloutView` instead.' )}] #
annotations :: forall action. Boolean -> Prop action
annotations = unsafeMkProps "annotations"



followUserLocation :: forall action. Boolean -> Prop action
followUserLocation = unsafeMkProps "followUserLocation"


legalLabelInsets :: forall action. Box -> Prop action
legalLabelInsets = unsafeMkProps "legalLabelInsets"


data MT
  = MTStandard
  | MTSatellite
  | MTHybrid


mapType :: forall action. MT -> Prop action
mapType MTStandard  = unsafeMkProps "mapType" "standard"
mapType MTSatellite = unsafeMkProps "mapType" "satellite"
mapType MTHybrid    = unsafeMkProps "mapType" "hybrid"


maxDelta :: forall action. Int -> Prop action
maxDelta = unsafeMkProps "maxDelta"


minDelta :: forall action. Int -> Prop action
minDelta = unsafeMkProps "minDelta"


-- TODO: implement overlay function

newtype Coordinate = Coordinate
  { lattitude :: Number
  , longitude :: Number
  }

newtype Overlay = Overlay
  { coordinates :: Array Coordinate
  , lineWidth :: Number
  , strokeColor :: Color
  , fillColor :: Color
  , oid :: String
  }

-- overlays [{coordinates: [object Object], lineWidth: number, strokeColor: [object Object], fillColor: [object Object], id: string}] #
overlays :: forall action. Array Overlay -> Prop action
overlays = unsafeMkProps "overlays"


pitchEnabled :: forall action. Boolean -> Prop action
pitchEnabled = unsafeMkProps "pitchEnabled"

newtype Region = Region
  { lattitude :: Number
  , longitude :: Number
  , lattitudeDelta :: Number
  , longitudeDelta :: Number
  }

region :: forall action. Region -> Prop action
region = unsafeMkProps "region"


rotateEnabled :: forall action. Boolean -> Prop action
rotateEnabled = unsafeMkProps "rotateEnabled"


showsCompass :: forall action. Boolean -> Prop action
showsCompass = unsafeMkProps "showsCompass"


showsPointsOfInterest :: forall action. Boolean -> Prop action
showsPointsOfInterest = unsafeMkProps "showsPointsOfInterest"


showsUserLocation :: forall action. Boolean -> Prop action
showsUserLocation = unsafeMkProps "showsUserLocation"


zoomEnabled :: forall action. Boolean -> Prop action
zoomEnabled = unsafeMkProps "zoomEnabled"


active :: forall action. Boolean -> Prop action
active = unsafeMkProps "active"


data AT
  = ATNone
  | ATSlide
  | ATFade


animationType :: forall action. AT -> Prop action
animationType ATNone  = unsafeMkProps "animationType" "none"
animationType ATSlide = unsafeMkProps "animationType" "slide"
animationType ATFade  = unsafeMkProps "animationType" "fade"


transparent :: forall action. Boolean -> Prop action
transparent = unsafeMkProps "transparent"


visible :: forall action. Boolean -> Prop action
visible = unsafeMkProps "visible"


data SupportedOrientations
  = SOPortrait
  | SOPortraitUpsideDown
  | SOLandscape
  | SOLandscapeLeft
  | SOLandscapeRight


instance showSupportedOrientations :: Show SupportedOrientations where
  show SOPortrait           = "portrait"
  show SOPortraitUpsideDown = "portrait-upside-down"
  show SOLandscape          = "landscape"
  show SOLandscapeLeft      = "landscape-left"
  show SOLandscapeRight     = "landscape-right"


supportedOrientations :: forall action. Array SupportedOrientations -> Prop action
supportedOrientations ary = unsafeMkProps "supportedOrientations" (map show ary)



-- initialRouteStack [object] #
initialRouteStack :: forall action. Boolean -> Prop action
initialRouteStack = unsafeMkProps "initialRouteStack"

-- navigationBar node #
navigationBar :: forall action. Boolean -> Prop action
navigationBar = unsafeMkProps "navigationBar"

-- navigator object #
navigator :: forall action. Boolean -> Prop action
navigator = unsafeMkProps "navigator"




-- initialRoute {component: function, title: string, titleImage: Image.propTypes.source, passProps: object, backButtonIcon: Image.propTypes.source, backButtonTitle: string, leftButtonIcon: Image.propTypes.source, leftButtonTitle: string, onLeftButtonPress: function, rightButtonIcon: Image.propTypes.source, rightButtonTitle: string, onRightButtonPress: function, wrapperStyle: [object Object], navigationBarHidden: bool, shadowHidden: bool, tintColor: string, barTintColor: string, titleTextColor: string, translucent: bool} #
initialRoute :: forall action. Boolean -> Prop action
initialRoute = unsafeMkProps "initialRoute"


interactivePopGestureEnabled :: forall action. Boolean -> Prop action
interactivePopGestureEnabled = unsafeMkProps "interactivePopGestureEnabled"

-- itemWrapperStyle View#style #
itemWrapperStyle :: forall action. Boolean -> Prop action
itemWrapperStyle = unsafeMkProps "itemWrapperStyle"


navigationBarHidden :: forall action. Boolean -> Prop action
navigationBarHidden = unsafeMkProps "navigationBarHidden"


shadowHidden :: forall action. Boolean -> Prop action
shadowHidden = unsafeMkProps "shadowHidden"


titleTextColor :: forall action. Color -> Prop action
titleTextColor c = unsafeMkProps "titleTextColor" (show c)



-- style pickerStyleType #
style :: forall action. Boolean -> Prop action
style = unsafeMkProps "style"

data PM
  = PMDialog
  | PMDropDown


pickerMode :: forall action. PM -> Prop action
pickerMode PMDialog   = unsafeMkProps "mode" "dialog"
pickerMode PMDropDown = unsafeMkProps "mode" "dropdown"


prompt :: forall action. String -> Prop action
prompt = unsafeMkProps "prompt"


-- itemStyle itemStylePropType #
itemStyle :: forall action. Boolean -> Prop action
itemStyle = unsafeMkProps "itemStyle"


selectedValue :: forall action a. a -> Prop action
selectedValue = unsafeMkProps "selectedValue"


indeterminate :: forall action. Boolean -> Prop action
indeterminate = unsafeMkProps "indeterminate"

data StyleAttributes
  = SAHorizontal
  | SANormal
  | SASmall
  | SALarge
  | SAInverse
  | SASmallInverse
  | SALargeInverse


styleAttr :: forall action. StyleAttributes -> Prop action
styleAttr SAHorizontal   = unsafeMkProps "styleAttr" "Horizontal"
styleAttr SANormal       = unsafeMkProps "styleAttr" "Normal"
styleAttr SASmall        = unsafeMkProps "styleAttr" "Small"
styleAttr SALarge        = unsafeMkProps "styleAttr" "Large"
styleAttr SAInverse      = unsafeMkProps "styleAttr" "Inverse"
styleAttr SASmallInverse = unsafeMkProps "styleAttr" "SmallInverse"
styleAttr SALargeInverse = unsafeMkProps "styleAttr" "LargeInverse"


progress :: forall action. Number -> Prop action
progress = unsafeMkProps "progress"

progressTintColor :: forall action. Color -> Prop action
progressTintColor c = unsafeMkProps "progressTintColor" (show c)


data PVS
  = PVSDefault
  | PVSBar


progressViewStyle :: forall action. PVS -> Prop action
progressViewStyle PVSDefault = unsafeMkProps "progressViewStyle" "default"
progressViewStyle PVSBar     = unsafeMkProps "progressViewStyle" "bar"


trackTintColor :: forall action. Color -> Prop action
trackTintColor c = unsafeMkProps "trackTintColor" (show c)


refreshing :: forall action. Boolean -> Prop action
refreshing = unsafeMkProps "refreshing"


colors :: forall action. Array Color -> Prop action
colors cs = unsafeMkProps "colors" (map show cs)


progressBackgroundColor :: forall action. Color -> Prop action
progressBackgroundColor c = unsafeMkProps "progressBackgroundColor" (show c)


progressViewOffset :: forall action. Int -> Prop action
progressViewOffset = unsafeMkProps "progressViewOffset"

-- size enum(RefreshLayoutConsts.SIZE.DEFAULT, RefreshLayoutConsts.SIZE.LARGE) #
size :: forall action. Size -> Prop action
size SizeSmall   = unsafeMkProps "size" "small"
size SizeLarge   = unsafeMkProps "size" "large"
size (SizeNum a) = unsafeMkProps "size" a


data RefreshControlSize = RCDefault | RCLarge

refreshControlSize :: forall action. RefreshControlSize -> Prop action
refreshControlSize RCDefault = unsafeMkProps "size" refreshControlSizeDefault
refreshControlSize RCLarge = unsafeMkProps "size" refreshControlSizeLarge


-- contentContainerStyle StyleSheetPropType(ViewStylePropTypes) #
contentContainerStyle :: forall action. Boolean -> Prop action
contentContainerStyle = unsafeMkProps "contentContainerStyle"


horizontal :: forall action. Boolean -> Prop action
horizontal = unsafeMkProps "horizontal"


keyboardShouldPersistTaps :: forall action. Boolean -> Prop action
keyboardShouldPersistTaps = unsafeMkProps "keyboardShouldPersistTaps"


keyboardVerticalOffset :: forall action. Int -> Prop action
keyboardVerticalOffset = unsafeMkProps "keyboardVerticalOffset"



pagingEnabled :: forall action. Boolean -> Prop action
pagingEnabled = unsafeMkProps "pagingEnabled"

-- refreshControl element #
refreshControl :: forall action. Boolean -> Prop action
refreshControl = unsafeMkProps "refreshControl"


removeClippedSubviews :: forall action. Boolean -> Prop action
removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

showsHorizontalScrollIndicator :: forall action. Boolean -> Prop action
showsHorizontalScrollIndicator = unsafeMkProps "showsHorizontalScrollIndicator"


showsVerticalScrollIndicator :: forall action. Boolean -> Prop action
showsVerticalScrollIndicator = unsafeMkProps "showsVerticalScrollIndicator"


endFillColor :: forall action. Color -> Prop action
endFillColor c = unsafeMkProps "endFillColor" (show c)


scrollPerfTag :: forall action. String -> Prop action
scrollPerfTag = unsafeMkProps "scrollPerfTag"


alwaysBounceHorizontal :: forall action. Boolean -> Prop action
alwaysBounceHorizontal = unsafeMkProps "alwaysBounceHorizontal"


alwaysBounceVertical :: forall action. Boolean -> Prop action
alwaysBounceVertical = unsafeMkProps "alwaysBounceVertical"


automaticallyAdjustContentInsets :: forall action. Boolean -> Prop action
automaticallyAdjustContentInsets = unsafeMkProps "automaticallyAdjustContentInsets"


bounces :: forall action. Boolean -> Prop action
bounces = unsafeMkProps "bounces"


bouncesZoom :: forall action. Boolean -> Prop action
bouncesZoom = unsafeMkProps "bouncesZoom"


injectedJavaScript :: forall action. String -> Prop action
injectedJavaScript = unsafeMkProps "injectedJavaScript"


userAgent :: forall action. String -> Prop action
userAgent = unsafeMkProps "userAgent"


scalesPageToFit :: forall action. Boolean -> Prop action
scalesPageToFit = unsafeMkProps "scalesPageToFit"


startInLoadingState :: forall action. Boolean -> Prop action
startInLoadingState = unsafeMkProps "startInLoadingState"


domStorageEnabled :: forall action. Boolean -> Prop action
domStorageEnabled = unsafeMkProps "domStorageEnabled"


javaScriptEnabled :: forall action. Boolean -> Prop action
javaScriptEnabled = unsafeMkProps "javaScriptEnabled"


allowsInlineMediaPlayback :: forall action. Boolean -> Prop action
allowsInlineMediaPlayback = unsafeMkProps "allowsInlineMediaPlayback"


mediaPlaybackRequiresUserAction :: forall action. Boolean -> Prop action
mediaPlaybackRequiresUserAction = unsafeMkProps "mediaPlaybackRequiresUserAction"


canCancelContentTouches :: forall action. Boolean -> Prop action
canCancelContentTouches = unsafeMkProps "canCancelContentTouches"


centerContent :: forall action. Boolean -> Prop action
centerContent = unsafeMkProps "centerContent"


contentInset :: forall action. Box -> Prop action
contentInset = unsafeMkProps "contentInset"

type Point = {x :: Int, y :: Int}


contentOffset :: forall action. Point -> Prop action
contentOffset = unsafeMkProps "contentOffset"


data DRT
  = DRTFast
  | DRTNormal
  | DRTNum Number


decelerationRate :: forall action. DRT -> Prop action
decelerationRate DRTFast    = unsafeMkProps "decelerationRate" "fast"
decelerationRate DRTNormal  = unsafeMkProps "decelerationRate" "normal"
decelerationRate (DRTNum a) = unsafeMkProps "decelerationRate" a


directionalLockEnabled :: forall action. Boolean -> Prop action
directionalLockEnabled = unsafeMkProps "directionalLockEnabled"


data IndicatorStyle
  = ISDefault
  | ISBlack
  | ISWhite


indicatorStyle :: forall action. IndicatorStyle -> Prop action
indicatorStyle ISDefault = unsafeMkProps "indicatorStyle" "default"
indicatorStyle ISBlack   = unsafeMkProps "indicatorStyle" "black"
indicatorStyle ISWhite   = unsafeMkProps "indicatorStyle" "white"



maximumZoomScale :: forall action. Number -> Prop action
maximumZoomScale = unsafeMkProps "maximumZoomScale"

minimumZoomScale :: forall action. Number -> Prop action
minimumZoomScale = unsafeMkProps "minimumZoomScale"



scrollEventThrottle :: forall action. Int -> Prop action
scrollEventThrottle = unsafeMkProps "scrollEventThrottle"


scrollIndicatorInsets :: forall action. Box -> Prop action
scrollIndicatorInsets = unsafeMkProps "scrollIndicatorInsets"


scrollsToTop :: forall action. Boolean -> Prop action
scrollsToTop = unsafeMkProps "scrollsToTop"


data SnapToAlignment
  = STAStart
  | STACenter
  | STAEnd


snapToAlignment :: forall action. SnapToAlignment -> Prop action
snapToAlignment STAStart = unsafeMkProps "snapToAlignment" "start"
snapToAlignment STACenter = unsafeMkProps "snapToAlignment" "center"
snapToAlignment STAEnd = unsafeMkProps "snapToAlignment" "end"



snapToInterval :: forall action. Int -> Prop action
snapToInterval = unsafeMkProps "snapToInterval"


stickyHeaderIndices :: forall action. Array Int -> Prop action
stickyHeaderIndices = unsafeMkProps "stickyHeaderIndices"


zoomScale :: forall action. Number -> Prop action
zoomScale = unsafeMkProps "zoomScale"


enabled :: forall action. Boolean -> Prop action
enabled = unsafeMkProps "enabled"


momentary :: forall action. Boolean -> Prop action
momentary = unsafeMkProps "momentary"



selectedIndex :: forall action. Int -> Prop action
selectedIndex = unsafeMkProps "selectedIndex"



values :: forall action. Array String -> Prop action
values = unsafeMkProps "values"


valueNum :: forall action. Number -> Prop action
valueNum = unsafeMkProps "value"


valueBool :: forall action. Boolean -> Prop action
valueBool = unsafeMkProps "value"


maximumTrackTintColor :: forall action. Color -> Prop action
maximumTrackTintColor c = unsafeMkProps "maximumTrackTintColor" (show c)


maximumValue :: forall action. Int -> Prop action
maximumValue = unsafeMkProps "maximumValue"



minimumTrackTintColor :: forall action. Color -> Prop action
minimumTrackTintColor c = unsafeMkProps "minimumTrackTintColor" (show c)


minimumValue :: forall action. Int -> Prop action
minimumValue = unsafeMkProps "minimumValue"


step :: forall action. Int -> Prop action
step = unsafeMkProps "step"

hidden :: forall action. Boolean -> Prop action
hidden = unsafeMkProps "hidden"


backgroundColor :: forall action. Color -> Prop action
backgroundColor c = unsafeMkProps "backgroundColor" (show c)


data BarStyle
  = BSDefault
  | BSLightContent
  | BSDarkContent


barStyle :: forall action. BarStyle -> Prop action
barStyle BSDefault      = unsafeMkProps "barStyle" "default"
barStyle BSLightContent = unsafeMkProps "barStyle" "light-content"
barStyle BSDarkContent  = unsafeMkProps "barStyle" "dark-content"



networkActivityIndicatorVisible :: forall action. Boolean -> Prop action
networkActivityIndicatorVisible = unsafeMkProps "networkActivityIndicatorVisible"


data ShowHideTransition
  = SHTFade
  | SHTSlide


showHideTransition :: forall action. ShowHideTransition -> Prop action
showHideTransition SHTFade = unsafeMkProps "showHideTransition" "fade"
showHideTransition SHTSlide = unsafeMkProps "showHideTransition" "slide"



testIdentifier :: forall action. String -> Prop action
testIdentifier = unsafeMkProps "testIdentifier"



onTintColor :: forall action. Color -> Prop action
onTintColor c = unsafeMkProps "onTintColor" (show c)


thumbTintColor :: forall action. Color -> Prop action
thumbTintColor c = unsafeMkProps "thumbTintColor" (show c)


barTintColor :: forall action. Color -> Prop action
barTintColor c = unsafeMkProps "barTintColor" (show c)


data ItemPositioning
  = IPFill
  | IPCenter
  | IPAuto


itemPositioning :: forall action. ItemPositioning -> Prop action
itemPositioning IPFill   = unsafeMkProps "itemPositioning" "fill"
itemPositioning IPCenter = unsafeMkProps "itemPositioning" "center"
itemPositioning IPAuto   = unsafeMkProps "itemPositioning" "auto"


tintColor :: forall action. Color -> Prop action
tintColor c = unsafeMkProps "tintColor" (show c)


translucent :: forall action. Boolean -> Prop action
translucent = unsafeMkProps "translucent"


unselectedTintColor :: forall action. Color -> Prop action
unselectedTintColor c = unsafeMkProps "unselectedTintColor" (show c)


data Badge = BadgeStr String | BadgeNum Number


badge :: forall action. Badge -> Prop action
badge (BadgeStr str) = unsafeMkProps "badge" str
badge (BadgeNum num) = unsafeMkProps "badge" num


renderAsOriginal :: forall action. Boolean -> Prop action
renderAsOriginal = unsafeMkProps "renderAsOriginal"


selected :: forall action. Boolean -> Prop action
selected = unsafeMkProps "selected"

data SysIcon
  = SysIconBookmarks
  | SysIconContacts
  | SysIconDownloads
  | SysIconFavorites
  | SysIconFeatured
  | SysIconHistory
  | SysIconMore
  | SysIconMostRecent
  | SysIconMostViewed
  | SysIconRecents
  | SysIconSearch
  | SysIconTopRated


systemIcon :: forall action. SysIcon -> Prop action
systemIcon SysIconBookmarks  = unsafeMkProps "systemIcon" "bookmarks"
systemIcon SysIconContacts   = unsafeMkProps "systemIcon" "contacts"
systemIcon SysIconDownloads  = unsafeMkProps "systemIcon" "downloads"
systemIcon SysIconFavorites  = unsafeMkProps "systemIcon" "favorites"
systemIcon SysIconFeatured   = unsafeMkProps "systemIcon" "featured"
systemIcon SysIconHistory    = unsafeMkProps "systemIcon" "history"
systemIcon SysIconMore       = unsafeMkProps "systemIcon" "more"
systemIcon SysIconMostRecent = unsafeMkProps "systemIcon" "most-recent"
systemIcon SysIconMostViewed = unsafeMkProps "systemIcon" "most-viewed"
systemIcon SysIconRecents    = unsafeMkProps "systemIcon" "recents"
systemIcon SysIconSearch     = unsafeMkProps "systemIcon" "search"
systemIcon SysIconTopRated   = unsafeMkProps "systemIcon" "top-rated"


data EllipsizeMode
  = EMHead
  | EMMiddle
  | EMTail
  | EMClip


ellipsizeMode :: forall action. EllipsizeMode -> Prop action
ellipsizeMode EMHead   = unsafeMkProps "ellipsizeMode" "head"
ellipsizeMode EMMiddle = unsafeMkProps "ellipsizeMode" "middle"
ellipsizeMode EMTail   = unsafeMkProps "ellipsizeMode" "tail"
ellipsizeMode EMClip   = unsafeMkProps "ellipsizeMode" "clip"


selectable :: forall action. Boolean -> Prop action
selectable = unsafeMkProps "selectable"


adjustsFontSizeToFit :: forall action. Boolean -> Prop action
adjustsFontSizeToFit = unsafeMkProps "adjustsFontSizeToFit"


allowFontScaling :: forall action. Boolean -> Prop action
allowFontScaling = unsafeMkProps "allowFontScaling"


minimumFontScale :: forall action. Number -> Prop action
minimumFontScale = unsafeMkProps "minimumFontScale"


suppressHighlighting :: forall action. Boolean -> Prop action
suppressHighlighting = unsafeMkProps "suppressHighlighting"


data AutoCapitalize
  = AutoCapNone
  | AutoCapSentences
  | AutoCapWords
  | AutoCapCharacters


autoCapitalize :: forall action. AutoCapitalize -> Prop action
autoCapitalize AutoCapNone       = unsafeMkProps "autoCapitalize" "none"
autoCapitalize AutoCapSentences  = unsafeMkProps "autoCapitalize" "sentences"
autoCapitalize AutoCapWords      = unsafeMkProps "autoCapitalize" "words"
autoCapitalize AutoCapCharacters = unsafeMkProps "autoCapitalize" "characters"


autoCorrect :: forall action. Boolean -> Prop action
autoCorrect = unsafeMkProps "autoCorrect"


autoFocus :: forall action. Boolean -> Prop action
autoFocus = unsafeMkProps "autoFocus"


blurOnSubmit :: forall action. Boolean -> Prop action
blurOnSubmit = unsafeMkProps "blurOnSubmit"


defaultValue :: forall action. String -> Prop action
defaultValue = unsafeMkProps "defaultValue"


editable :: forall action. Boolean -> Prop action
editable = unsafeMkProps "editable"

data KeyBoardType
  = KBTDefault
  | KBTEmailAddress
  | KBTNumeric
  | KBTPhonePad
  | KBTAsciiCapable
  | KBTNumbersAndPunctuation
  | KBTUrl
  | KBTNumberPad
  | KBTNamePhonePad
  | KBTDecimalPad
  | KBTTwitter
  | KBTWebSearch


keyboardType :: forall action. KeyBoardType -> Prop action
keyboardType KBTDefault               = unsafeMkProps "keyboardType" "default"
keyboardType KBTEmailAddress          = unsafeMkProps "keyboardType" "email-address"
keyboardType KBTNumeric               = unsafeMkProps "keyboardType" "numeric"
keyboardType KBTPhonePad              = unsafeMkProps "keyboardType" "phone-pad"
keyboardType KBTAsciiCapable          = unsafeMkProps "keyboardType" "ascii-capable"
keyboardType KBTNumbersAndPunctuation = unsafeMkProps "keyboardType" "numbers-and-punctuation"
keyboardType KBTUrl                   = unsafeMkProps "keyboardType" "url"
keyboardType KBTNumberPad             = unsafeMkProps "keyboardType" "number-pad"
keyboardType KBTNamePhonePad          = unsafeMkProps "keyboardType" "name-phone-pad"
keyboardType KBTDecimalPad            = unsafeMkProps "keyboardType" "decimal-pad"
keyboardType KBTTwitter               = unsafeMkProps "keyboardType" "twitter"
keyboardType KBTWebSearch             = unsafeMkProps "keyboardType" "web-search"


maxLength :: forall action. Int -> Prop action
maxLength = unsafeMkProps "maxLength"


multiline :: forall action. Boolean -> Prop action
multiline = unsafeMkProps "multiline"



placeholder :: forall action. String -> Prop action
placeholder = unsafeMkProps "placeholder"


placeholderTextColor :: forall action. Color -> Prop action
placeholderTextColor c = unsafeMkProps "placeholderTextColor" (show c)


data ReturnKeyType
  = RKTDone
  | RKTGo
  | RKTNext
  | RKTSearch
  | RKTSend
  | RKTNone
  | RKTPrevious
  | RKTDefault
  | RKTEmergencyCall
  | RKTGoogle
  | RKTJoin
  | RKTRoute
  | RKTYahoo


returnKeyType :: forall action. ReturnKeyType -> Prop action
returnKeyType RKTDone           = unsafeMkProps "returnKeyType" "done"
returnKeyType RKTGo             = unsafeMkProps "returnKeyType" "go"
returnKeyType RKTNext           = unsafeMkProps "returnKeyType" "next"
returnKeyType RKTSearch         = unsafeMkProps "returnKeyType" "search"
returnKeyType RKTSend           = unsafeMkProps "returnKeyType" "send"
returnKeyType RKTNone           = unsafeMkProps "returnKeyType" "none"
returnKeyType RKTPrevious       = unsafeMkProps "returnKeyType" "previous"
returnKeyType RKTDefault        = unsafeMkProps "returnKeyType" "default"
returnKeyType RKTEmergencyCall  = unsafeMkProps "returnKeyType" "emergency-call"
returnKeyType RKTGoogle         = unsafeMkProps "returnKeyType" "google"
returnKeyType RKTJoin           = unsafeMkProps "returnKeyType" "join"
returnKeyType RKTRoute          = unsafeMkProps "returnKeyType" "route"
returnKeyType RKTYahoo          = unsafeMkProps "returnKeyType" "yahoo"



secureTextEntry :: forall action. Boolean -> Prop action
secureTextEntry = unsafeMkProps "secureTextEntry"


selectTextOnFocus :: forall action. Boolean -> Prop action
selectTextOnFocus = unsafeMkProps "selectTextOnFocus"


selectionColor :: forall action. Color -> Prop action
selectionColor c = unsafeMkProps "selectionColor" (show c)



valueString :: forall action. String -> Prop action
valueString = unsafeMkProps "value"


inlineImageLeft :: forall action. String -> Prop action
inlineImageLeft = unsafeMkProps "inlineImageLeft"


inlineImagePadding :: forall action. Int -> Prop action
inlineImagePadding = unsafeMkProps "inlineImagePadding"


numberOfLines :: forall action. Int -> Prop action
numberOfLines = unsafeMkProps "numberOfLines"


returnKeyLabel :: forall action. String -> Prop action
returnKeyLabel = unsafeMkProps "returnKeyLabel"


underlineColorAndroid :: forall action. Color -> Prop action
underlineColorAndroid c = unsafeMkProps "underlineColorAndroid" (show c)


data ClearButtonMode
 = CBMNever
 | CBMWhileEditing
 | CBMUnlessEditing
 | CBMAlways


clearButtonMode :: forall action. ClearButtonMode -> Prop action
clearButtonMode CBMNever         = unsafeMkProps "clearButtonMode" "never"
clearButtonMode CBMWhileEditing  = unsafeMkProps "clearButtonMode" "while-editing"
clearButtonMode CBMUnlessEditing = unsafeMkProps "clearButtonMode" "unless-editing"
clearButtonMode CBMAlways        = unsafeMkProps "clearButtonMode" "always"


clearTextOnFocus :: forall action. Boolean -> Prop action
clearTextOnFocus = unsafeMkProps "clearTextOnFocus"


enablesReturnKeyAutomatically :: forall action. Boolean -> Prop action
enablesReturnKeyAutomatically = unsafeMkProps "enablesReturnKeyAutomatically"


data KeyBoardAppearance
  = KBADefault
  | KBALight
  | KBADark


keyboardAppearance :: forall action. KeyBoardAppearance -> Prop action
keyboardAppearance KBADefault = unsafeMkProps "keyboardAppearance" "default"
keyboardAppearance KBALight   = unsafeMkProps "keyboardAppearance" "light"
keyboardAppearance KBADark    = unsafeMkProps "keyboardAppearance" "dark"


-- TODO: implement DocumentSelectionState through FFI
-- selectionState PropTypes.instanceOf(DocumentSelectionState) #
selectionState :: forall action. Boolean -> Prop action
selectionState = unsafeMkProps "selectionState"


data ActionPropType = ActionPropType
  { title :: String
  , icon :: String -- optionl
  , show :: String -- implement enum
  , showWithText :: Boolean
  }

data ShowProp
  = Always
  | IfRoom
  | Never

-- actions ReactPropTypes.arrayOf(ReactPropTypes.shape({ title: ReactPropTypes.string.isRequired, icon: optionalImageSource, show: ReactPropTypes.oneOf(['always', 'ifRoom', 'never']), showWithText: ReactPropTypes.bool })) #
actions :: forall action. Boolean -> Prop action
actions = unsafeMkProps "actions"


contentInsetEnd :: forall action. Int -> Prop action
contentInsetEnd = unsafeMkProps "contentInsetEnd"


contentInsetStart :: forall action. Int -> Prop action
contentInsetStart = unsafeMkProps "contentInsetStart"



rtl :: forall action. Boolean -> Prop action
rtl = unsafeMkProps "rtl"


subtitle :: forall action. String -> Prop action
subtitle = unsafeMkProps "subtitle"


subtitleColor :: forall action. Color -> Prop action
subtitleColor c = unsafeMkProps "subtitleColor" (show c)


title :: forall action. String -> Prop action
title = unsafeMkProps "title"


titleColor :: forall action. Color -> Prop action
titleColor c = unsafeMkProps "titleColor" (show c)


underlayColor :: forall action. Color -> Prop action
underlayColor c = unsafeMkProps "underlayColor" (show c)


-- background backgroundPropType #
background :: forall action. Boolean -> Prop action
background = unsafeMkProps "background"

useForeground :: forall action. Boolean -> Prop action
useForeground = unsafeMkProps "useForeground"


activeOpacity :: forall action. Number -> Prop action
activeOpacity = unsafeMkProps "activeOpacity"


accessibilityComponentType :: forall action. AccessibilityComponentTypeProp -> Prop action
accessibilityComponentType ACTPNone             = unsafeMkProps "accessibilityComponentType" "none"
accessibilityComponentType Button               = unsafeMkProps "accessibilityComponentType" "button"
accessibilityComponentType RadiobuttonChecked   = unsafeMkProps "accessibilityComponentType" "radiobutton_checked"
accessibilityComponentType RadiobuttonUnchecked = unsafeMkProps "accessibilityComponentType" "radiobutton_unchecked"



-- TODO: implement accessibilityTraits
-- accessibilityTraits View.AccessibilityTraits, [object Object] #
-- accessibilityTraits :: Array  AccessibilityTraitsProp -> Prop action
-- accessibilityTraits = unsafeMkProps "accessibilityTraits"


accessible :: forall action. Boolean -> Prop action
accessible = unsafeMkProps "accessible"


delayLongPress :: forall action. Int -> Prop action
delayLongPress = unsafeMkProps "delayLongPress"


delayPressIn :: forall action. Int -> Prop action
delayPressIn = unsafeMkProps "delayPressIn"


delayPressOut :: forall action. Int -> Prop action
delayPressOut = unsafeMkProps "delayPressOut"


disabled :: forall action. Boolean -> Prop action
disabled = unsafeMkProps "disabled"


hitSlop :: forall action. Box -> Prop action
hitSlop = unsafeMkProps "hitSlop"


pressRetentionOffset :: forall action. Box -> Prop action
pressRetentionOffset = unsafeMkProps "pressRetentionOffset"


initialPage :: forall action. Int -> Prop action
initialPage = unsafeMkProps "initialPage"


data KeyboardDismissMode
  = KDMNone
  | KDMInteractive
  | KDMOnDrag


keyboardDismissMode :: forall action. KeyboardDismissMode -> Prop action
keyboardDismissMode KDMNone        = unsafeMkProps "keyboardDismissMode" "none"
keyboardDismissMode KDMInteractive = unsafeMkProps "keyboardDismissMode" "interactive"
keyboardDismissMode KDMOnDrag      = unsafeMkProps "keyboardDismissMode" "on-drag"


pageMargin :: forall action. Int -> Prop action
pageMargin = unsafeMkProps "pageMargin"


scrollEnabled :: forall action. Boolean -> Prop action
scrollEnabled = unsafeMkProps "scrollEnabled"


renderNavigationView :: forall action. Element action -> Prop action
renderNavigationView = unsafeMkFnProps "renderNavigationView"

renderFooter :: forall action. Element action -> Prop action
renderFooter = unsafeMkFnProps "renderFooter"

renderHeader :: forall action. Element action -> Prop action
renderHeader = unsafeMkFnProps "renderHeader"

data ImageSource
  = ImgURI {uri :: String}
  | Local String
  | URIs (Array {uri :: String, width::Int, height :: Int})

sourceWithName :: forall action. String -> ImageSource -> Prop action
sourceWithName name (ImgURI uri)  = unsafeMkProps name  uri
sourceWithName name (URIs aryuri) = unsafeMkProps name aryuri
sourceWithName name (Local path)  = unsafeMkProps name (require path)

source :: forall action. ImageSource -> Prop action
source = sourceWithName "source"

defaultSource :: forall action. ImageSource -> Prop action
defaultSource = sourceWithName "defaultSource"

progressImage :: forall action. ImageSource -> Prop action
progressImage = sourceWithName "progressImage"

trackImage :: forall action. ImageSource -> Prop action
trackImage = sourceWithName "trackImage"

minimumTrackImage :: forall action. ImageSource -> Prop action
minimumTrackImage = sourceWithName "minimumTrackImage"

maximumTrackImage :: forall action. ImageSource -> Prop action
maximumTrackImage = sourceWithName "maximumTrackImage"

thumbImage :: forall action. ImageSource -> Prop action
thumbImage = sourceWithName "thumbImage"

icon :: forall action. ImageSource -> Prop action
icon = sourceWithName "icon"

overflowIcon :: forall action. ImageSource -> Prop action
overflowIcon = sourceWithName "overflowIcon"

navIcon :: forall action. ImageSource -> Prop action
navIcon = sourceWithName "navIcon"


logo :: forall action. ImageSource -> Prop action
logo = sourceWithName "logo"


selectedIcon :: forall action. ImageSource -> Prop action
selectedIcon = sourceWithName "selectedIcon"

defaultValueNode :: forall action. Element action -> Prop action
defaultValueNode = unsafeMkProps "defaultValue"

newtype TISelection = TISelection {start :: Int, end :: Int}

selection :: forall action. TISelection -> Prop action
selection = unsafeMkProps "selection"


foreign import require :: forall a. String -> a


data DataDetectorType
  = DDTPhoneNumber
  | DDTLink
  | DDTAddress
  | DDTCalendarEvent
  | DDTNone
  | DDTAll


instance showDataDetectorType :: Show DataDetectorType where
  show DDTPhoneNumber   = "phoneNumber"
  show DDTLink          = "link"
  show DDTAddress       = "address"
  show DDTCalendarEvent = "calendarEvent"
  show DDTNone          = "none"
  show DDTAll           = "all"


dataDetectorTypes :: forall action. DataDetectorType -> Prop action
dataDetectorTypes d = unsafeMkProps "dataDetectorTypes" (show d)


dataDetectorTypesAry :: forall action. Array DataDetectorType -> Prop action
dataDetectorTypesAry d = unsafeMkProps "dataDetectorTypes" (map show d)


--------- Styles ---------------

data Visibility = Visible | Hidden

-- A

data AlignItems
  = AlignItemsFlexStart
  | AlignItemsFlexEnd
  | AlignItemsCenter
  | AlignItemsStretch

alignItems :: forall action. AlignItems -> Prop action
alignItems AlignItemsFlexStart = unsafeMkProps "alignItems" "flex-start"
alignItems AlignItemsFlexEnd   = unsafeMkProps "alignItems" "flex-end"
alignItems AlignItemsCenter    = unsafeMkProps "alignItems" "center"
alignItems AlignItemsStretch   = unsafeMkProps "alignItems" "stretch"

data AlignSelf
  = AlignSelfAuto
  | AlignSelfFlexStart
  | AlignSelfFlexEnd
  | AlignSelfCenter
  | AlignSelfStretch

alignSelf :: forall action. AlignSelf -> Prop action
alignSelf AlignSelfAuto      = unsafeMkProps "alignSelf" "auto"
alignSelf AlignSelfFlexStart = unsafeMkProps "alignSelf" "flex-start"
alignSelf AlignSelfFlexEnd   = unsafeMkProps "alignSelf" "flex-end"
alignSelf AlignSelfCenter    = unsafeMkProps "alignSelf" "center"
alignSelf AlignSelfStretch   = unsafeMkProps "alignSelf" "stretch"

-- B

backfaceVisibility :: forall action. Visibility -> Prop action
backfaceVisibility Visible = unsafeMkProps "backfaceVisibility" "visible"
backfaceVisibility Hidden  = unsafeMkProps "backfaceVisibility" "hidden"


backgroundVisibility :: forall action. Visibility -> Prop action
backgroundVisibility Visible = unsafeMkProps "backgroundVisibility" "visible"
backgroundVisibility Hidden  = unsafeMkProps "backgroundVisibility" "hidden"

borderBottomColor :: forall action. Color -> Prop action
borderBottomColor c = unsafeMkProps "borderBottomColor" (show c)

borderBottomRightRadius :: forall action. Number -> Prop action
borderBottomRightRadius = unsafeMkProps "borderBottomRightRadius"

borderBottomWidth :: forall action. Number -> Prop action
borderBottomWidth = unsafeMkProps "borderBottomWidth"

borderColor :: forall action. Color -> Prop action
borderColor c = unsafeMkProps "borderColor" (show c)

borderLeftColor :: forall action. Color -> Prop action
borderLeftColor c = unsafeMkProps "borderLeftColor" (show c)

borderLeftWidth :: forall action. Number -> Prop action
borderLeftWidth = unsafeMkProps "borderLeftWidth"

borderRadius :: forall action. Number -> Prop action
borderRadius = unsafeMkProps "borderRadius"

borderRightColor :: forall action. Color -> Prop action
borderRightColor c = unsafeMkProps "borderRightColor" (show c)

borderRightWidth :: forall action. Number -> Prop action
borderRightWidth = unsafeMkProps "borderRightWidth"

data BorderStyle
  = BorderSolid
  | BorderDotted
  | BorderDashed

borderStyle :: forall action. BorderStyle -> Prop action
borderStyle BorderSolid  = unsafeMkProps "borderStyle" "solid"
borderStyle BorderDotted = unsafeMkProps "borderStyle" "dotted"
borderStyle BorderDashed = unsafeMkProps "borderStyle" "dashed"

borderTopLeftRadius :: forall action. Number -> Prop action
borderTopLeftRadius = unsafeMkProps "borderTopLeftRadius"

borderTopRightRadius :: forall action. Number -> Prop action
borderTopRightRadius = unsafeMkProps "borderTopRightRadius"

borderTopWidth :: forall action. Number -> Prop action
borderTopWidth = unsafeMkProps "borderTopWidth"

borderWidth :: forall action. Number -> Prop action
borderWidth = unsafeMkProps "borderWidth"

bottom :: forall action. Number -> Prop action
bottom = unsafeMkProps "bottom"

-- E

elevation :: forall action. Number -> Prop action
elevation = unsafeMkProps "elevation"

-- F

flex :: forall action. Number -> Prop action
flex = unsafeMkProps "flex"

flexBasis :: forall action. Number -> Prop action
flexBasis = unsafeMkProps "flexBasis"

data FlexDirection
  = Row
  | Column
  | RowReverse
  | ColumnReverse

flexDirection :: forall action. FlexDirection -> Prop action
flexDirection Row           = unsafeMkProps "flexDirection" "row"
flexDirection Column        = unsafeMkProps "flexDirection" "column"
flexDirection ColumnReverse = unsafeMkProps "flexDirection" "column-reverse"
flexDirection RowReverse    = unsafeMkProps "flexDirection" "row-reverse"

flexGrow :: forall action. Number -> Prop action
flexGrow = unsafeMkProps "flexGrow"

flexShrink :: forall action. Number -> Prop action
flexShrink = unsafeMkProps "flexShrink"

data WrapProp = Wrap | NoWrap

flexWrap :: forall action. WrapProp -> Prop action
flexWrap Wrap   = unsafeMkProps "flexWrap" "wrap"
flexWrap NoWrap = unsafeMkProps "flexWrap" "nowrap"

fontFamily :: forall action. String -> Prop action
fontFamily = unsafeMkProps "fontFamily"

fontSize :: forall action. Number -> Prop action
fontSize = unsafeMkProps "fontSize"

data FontStyle = FontNormal | FontItalic

fontStyle :: forall action. FontStyle -> Prop action
fontStyle FontNormal = unsafeMkProps "fontStyle" "normal"
fontStyle FontItalic = unsafeMkProps "fontStyle" "italic"

data FontVariant
  = SmallCap
  | OldStyleNum
  | LiningNum
  | TabularNum
  | ProportionalNum

fontVariant :: forall action. Array FontVariant -> Prop action
fontVariant ary = unsafeMkProps "fontVariant" (map fontVariantNum ary)

fontVariantNum :: FontVariant -> String
fontVariantNum SmallCap        = "small-caps"
fontVariantNum OldStyleNum     = "oldstyle-nums"
fontVariantNum LiningNum       = "lining-nums"
fontVariantNum TabularNum      = "tabular-nums"
fontVariantNum ProportionalNum = "proportional-nums"

data FontWeight
  = WeightNormal
  | WeightBold
  | Weight100
  | Weight200
  | Weight300
  | Weight400
  | Weight500
  | Weight600
  | Weight700
  | Weight800
  | Weight900

fontWeight :: forall action. FontWeight -> Prop action
fontWeight WeightNormal = unsafeMkProps "fontWeight" "normal"
fontWeight WeightBold   = unsafeMkProps "fontWeight" "bold"
fontWeight Weight100    = unsafeMkProps "fontWeight" "100"
fontWeight Weight200    = unsafeMkProps "fontWeight" "200"
fontWeight Weight300    = unsafeMkProps "fontWeight" "300"
fontWeight Weight400    = unsafeMkProps "fontWeight" "400"
fontWeight Weight500    = unsafeMkProps "fontWeight" "500"
fontWeight Weight600    = unsafeMkProps "fontWeight" "600"
fontWeight Weight700    = unsafeMkProps "fontWeight" "700"
fontWeight Weight800    = unsafeMkProps "fontWeight" "800"
fontWeight Weight900    = unsafeMkProps "fontWeight" "900"

-- H

height :: forall action. Number -> Prop action
height = unsafeMkProps "height"

--J

data JustifyContent
  = JustifyContentFlexStart
  | JustifyContentFlexEnd
  | JustifyContentCenter
  | JustifyContentSpaceBetween
  | JustifyContentSpaceAround

justifyContent :: forall action. JustifyContent -> Prop action
justifyContent JustifyContentFlexStart    = unsafeMkProps "justifyContent" "flex-start"
justifyContent JustifyContentFlexEnd      = unsafeMkProps "justifyContent" "flex-end"
justifyContent JustifyContentCenter       = unsafeMkProps "justifyContent" "center"
justifyContent JustifyContentSpaceBetween = unsafeMkProps "justifyContent" "space-between"
justifyContent JustifyContentSpaceAround  = unsafeMkProps "justifyContent" "space-around"

-- L

left :: forall action. Number -> Prop action
left = unsafeMkProps "left"

letterSpacing :: forall action. Number -> Prop action
letterSpacing = unsafeMkProps "letterSpacing"

lineHeight :: forall action. Number -> Prop action
lineHeight = unsafeMkProps "lineHeight"

-- M

margin :: forall action. Number -> Prop action
margin = unsafeMkProps "margin"

marginBottom :: forall action. Number -> Prop action
marginBottom = unsafeMkProps "marginBottom"

marginHorizontal :: forall action. Number -> Prop action
marginHorizontal = unsafeMkProps "marginHorizontal"

marginLeft :: forall action. Number -> Prop action
marginLeft = unsafeMkProps "marginLeft"

marginRight :: forall action. Number -> Prop action
marginRight = unsafeMkProps "marginRight"

marginTop :: forall action. Number -> Prop action
marginTop = unsafeMkProps "marginTop"

marginVertical :: forall action. Number -> Prop action
marginVertical = unsafeMkProps "marginVertical"

maxHeight :: forall action. Number -> Prop action
maxHeight = unsafeMkProps "maxHeight"

maxWidth :: forall action. Number -> Prop action
maxWidth = unsafeMkProps "maxWidth"

minHeight :: forall action. Number -> Prop action
minHeight = unsafeMkProps "minHeight"

minWidth :: forall action. Number -> Prop action
minWidth = unsafeMkProps "minWidth"

-- O

opacity :: forall action. Number -> Prop action
opacity = unsafeMkProps "opacity"

overflow :: forall action. Visibility -> Prop action
overflow Visible = unsafeMkProps "overflow" "visible"
overflow Hidden  = unsafeMkProps "overflow" "hidden"

overlayColor :: forall action. String -> Prop action
overlayColor = unsafeMkProps "overlayColor"

-- P

padding :: forall action. Number -> Prop action
padding = unsafeMkProps "padding"

paddingBottom :: forall action. Number -> Prop action
paddingBottom = unsafeMkProps "paddingBottom"

paddingHorizontal :: forall action. Number -> Prop action
paddingHorizontal = unsafeMkProps "paddingHorizontal"

paddingLeft :: forall action. Number -> Prop action
paddingLeft = unsafeMkProps "paddingLeft"

paddingRight :: forall action. Number -> Prop action
paddingRight = unsafeMkProps "paddingRight"

paddingTop :: forall action. Number -> Prop action
paddingTop = unsafeMkProps "paddingTop"

paddingVertical :: forall action. Number -> Prop action
paddingVertical = unsafeMkProps "paddingVertical"

data Position = Absolute | Relative

position :: forall action. Position -> Prop action
position Absolute = unsafeMkProps "position" "absolute"
position Relative = unsafeMkProps "position" "relative"

-- R

right :: forall action. Number -> Prop action
right = unsafeMkProps "right"

-- S

shadowColor :: forall action. Color -> Prop action
shadowColor c = unsafeMkProps "shadowColor" (show c)

shadowOffset :: forall action. {width :: Number, height :: Number} -> Prop action
shadowOffset = unsafeMkProps "shadowOffset"

shadowOpacity :: forall action. Number -> Prop action
shadowOpacity = unsafeMkProps "shadowOpacity"

shadowRadius :: forall action. Number -> Prop action
shadowRadius = unsafeMkProps "shadowRadius"

-- T

data TextAlign
  = TextAlignAuto
  | TextAlignLeft
  | TextAlignRight
  | TextAlignCenter
  | TextAlignJustify

textAlign :: forall action. TextAlign -> Prop action
textAlign TextAlignAuto    = unsafeMkProps "textAlign" "auto"
textAlign TextAlignLeft    = unsafeMkProps "textAlign" "left"
textAlign TextAlignRight   = unsafeMkProps "textAlign" "right"
textAlign TextAlignCenter  = unsafeMkProps "textAlign" "center"
textAlign TextAlignJustify = unsafeMkProps "textAlign" "justify"

data TextAlignVertical
  = TextAlignVerticalAuto
  | TextAlignVerticalTop
  | TextAlignVerticalBottom
  | TextAlignVerticalCenter

textAlignVertical :: forall action. TextAlignVertical -> Prop action
textAlignVertical TextAlignVerticalAuto   = unsafeMkProps "textAlignVertical" "auto"
textAlignVertical TextAlignVerticalTop    = unsafeMkProps "textAlignVertical" "top"
textAlignVertical TextAlignVerticalBottom = unsafeMkProps "textAlignVertical" "bottom"
textAlignVertical TextAlignVerticalCenter = unsafeMkProps "textAlignVertical" "center"

textDecorationColor :: forall action. Color -> Prop action
textDecorationColor c = unsafeMkProps "textDecorationColor" (show c)

data TextDecorationLine
  = None
  | Underline
  | LineThrough
  | UnderlineLineThrough

textDecorationLine :: forall action. TextDecorationLine -> Prop action
textDecorationLine None                 = unsafeMkProps "textDecorationLine" "none"
textDecorationLine Underline            = unsafeMkProps "textDecorationLine" "underline"
textDecorationLine LineThrough          = unsafeMkProps "textDecorationLine" "line-through"
textDecorationLine UnderlineLineThrough = unsafeMkProps "textDecorationLine" "underline line-through"

data TextDecorationStyle
  = TextSolid
  | TextDouble
  | TextDotted
  | TextDashed

textDecorationStyle :: forall action. TextDecorationStyle -> Prop action
textDecorationStyle TextSolid  = unsafeMkProps "textDecorationStyle" "solid"
textDecorationStyle TextDouble = unsafeMkProps "textDecorationStyle" "double"
textDecorationStyle TextDotted = unsafeMkProps "textDecorationStyle" "dotted"
textDecorationStyle TextDashed = unsafeMkProps "textDecorationStyle" "dashed"

textShadowColor :: forall action. Color -> Prop action
textShadowColor c = unsafeMkProps "textShadowColor" (show c)

textShadowOffset :: forall action. {width :: Number, height :: Number} -> Prop action
textShadowOffset = unsafeMkProps "textShadowOffset"

textShadowRadius :: forall action. Number -> Prop action
textShadowRadius = unsafeMkProps "textShadowRadius"

top :: forall action. Number -> Prop action
top = unsafeMkProps "top"

-- W

width :: forall action. Number -> Prop action
width = unsafeMkProps "width"

data WritingDirection
  = WritingDirectionAuto
  | WritingDirectionLtr
  | WritingDirectionRtl

writingDirection :: forall action. WritingDirection -> Prop action
writingDirection WritingDirectionAuto = unsafeMkProps "writingDirection" "auto"
writingDirection WritingDirectionLtr  = unsafeMkProps "writingDirection" "ltr"
writingDirection WritingDirectionRtl  = unsafeMkProps "writingDirection" "rtl"

-- Z

zIndex :: forall action. Number -> Prop action
zIndex = unsafeMkProps "zIndex"

-- TODO: Transform Props
-- TODO: resizeMode

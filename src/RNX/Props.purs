module RNX.Props where

import RNX.PropsTypes (AccessibilityComponentTypeProp(..), AccessibilityLiveRegionProp(..), ImportantForAccessibilityProp(..))
import Data.Date (Date)
import Prelude
import RNX.Color (Color)
import React.DOM.Props (Props, unsafeMkProps)
import React (ReactElement)
import RNX.Styles (StyleId)
--foreign import unsafeMkProps :: forall val. String -> val -> Props

--foreign import unsafeMkFnPropss :: forall val. String -> val -> Props

-- foreign import dPLeft :: forall a. a
-- foreign import dPRight :: forall a. a

-- foreign import refreshControlSizeDefault :: forall a. a
-- foreign import refreshControlSizeLarge :: forall a. a

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
  | SizeNum Int


pointerEvents :: PtrEvents -> Props
pointerEvents PtrEventsBoxNone = unsafeMkProps "pointerEvents" "box-none"
pointerEvents PtrEventsNone    = unsafeMkProps "pointerEvents" "none"
pointerEvents PtrEventsBoxOnly = unsafeMkProps "pointerEvents" "box-only"
pointerEvents PtrEventsAuto    = unsafeMkProps "pointerEvents" "auto"

data PtrEvents
  = PtrEventsBoxNone
  | PtrEventsNone
  | PtrEventsBoxOnly
  | PtrEventsAuto


testID :: String -> Props
testID = unsafeMkProps "testID"

key :: String -> Props
key = unsafeMkProps "key"


-- Animating

animating :: Boolean -> Props
animating = unsafeMkProps "animating"


pColor :: Color -> Props
pColor c = unsafeMkProps "color" c

accessibilityLiveRegion :: AccessibilityLiveRegionProp -> Props
accessibilityLiveRegion  ALRPNone  = unsafeMkProps "accessibilityLiveRegion" "none"
accessibilityLiveRegion  Polite    = unsafeMkProps "accessibilityLiveRegion" "none"
accessibilityLiveRegion  Assertive = unsafeMkProps "accessibilityLiveRegion" "none"


collapsable :: Boolean -> Props
collapsable = unsafeMkProps "collapsable"


importantForAccessibility :: ImportantForAccessibilityProp -> Props
importantForAccessibility IAPAuto           = unsafeMkProps "importantForAccessibility" "auto"
importantForAccessibility Yes               = unsafeMkProps "importantForAccessibility" "yes"
importantForAccessibility No                = unsafeMkProps "importantForAccessibility" "no"
importantForAccessibility NoHideDescenDants = unsafeMkProps "importantForAccessibility" "no-hide-descendents"


needsOffscreenAlphaCompositing :: Boolean -> Props
needsOffscreenAlphaCompositing = unsafeMkProps "needsOffscreenAlphaCompositing"


renderToHardwareTextureAndroid :: Boolean -> Props
renderToHardwareTextureAndroid = unsafeMkProps "renderToHardwareTextureAndroid"


shouldRasterizeIOS :: Boolean -> Props
shouldRasterizeIOS = unsafeMkProps "shouldRasterizeIOS"



hidesWhenStopped :: Boolean -> Props
hidesWhenStopped = unsafeMkProps "hidesWhenStopped"


date :: Date -> Props
date = unsafeMkProps "date"


maximumDate :: Date -> Props
maximumDate = unsafeMkProps "maximumDate"


minimumDate :: Date -> Props
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


minuteInterval :: MIType -> Props
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


modeDate :: DateMode -> Props
modeDate DMDate     = unsafeMkProps "mode" "date"
modeDate DMTime     = unsafeMkProps "mode" "time"
modeDate DMDateTime = unsafeMkProps "mode" "datetime"


timeZoneOffsetInMinutes :: Int -> Props
timeZoneOffsetInMinutes = unsafeMkProps "timeZoneOffsetInMinutes"


drawerBackgroundColor :: Color -> Props
drawerBackgroundColor c = unsafeMkProps "drawerBackgroundColor" c


data DLM
  = DLMUnlocked
  | DLMLockedClosed
  | DLMLockedOpen


drawerLockMode :: DLM -> Props
drawerLockMode DLMUnlocked     = unsafeMkProps "drawerLockMode" "unlocked"
drawerLockMode DLMLockedClosed = unsafeMkProps "drawerLockMode" "locked-closed"
drawerLockMode DLMLockedOpen   = unsafeMkProps "drawerLockMode" "locked-open"


data DrawerPosition
  = DPLeft
  | DPRight

-- drawerPosition :: DrawerPosition -> Props
-- drawerPosition DPLeft  = unsafeMkProps "drawerPosition" dPLeft
-- drawerPosition DPRight = unsafeMkProps "drawerPosition" dPRight


drawerWidth :: Int -> Props
drawerWidth = unsafeMkProps "drawerWidth"


keyboardDismissModeViewAndroid :: KDMVA -> Props
keyboardDismissModeViewAndroid KDMVANone   = unsafeMkProps "keyboardDismissModeViewAndroid" "none"
keyboardDismissModeViewAndroid KDMVAOnDrag = unsafeMkProps "keyboardDismissModeViewAndroid" "on-drag"

data KDMVA
  = KDMVANone
  | KDMVAOnDrag


statusBarBackgroundColor :: Color -> Props
statusBarBackgroundColor c = unsafeMkProps "statusBarBackgroundColor" c


data RSMode
  = RSMCover
  | RSMContain
  | RSMStretch
  | RSMRepeat
  | RSMCenter


resizeMode :: RSMode -> Props
resizeMode RSMCover   = unsafeMkProps "resizeMode" "cover"
resizeMode RSMContain = unsafeMkProps "resizeMode" "contain"
resizeMode RSMStretch = unsafeMkProps "resizeMode" "stretch"
resizeMode RSMRepeat  = unsafeMkProps "resizeMode" "repeat"
resizeMode RSMCenter  = unsafeMkProps "resizeMode" "center"


data RSMD
  = RSMAuto
  | RSMResize
  | RSMScale


resizeMethod :: RSMD -> Props
resizeMethod RSMAuto   = unsafeMkProps "resizeMethod" "auto"
resizeMethod RSMResize = unsafeMkProps "resizeMethod" "resize"
resizeMethod RSMScale  = unsafeMkProps "resizeMethod" "scale"

-- TODO: ImageSourcePropsType
data ImageURISourcePropsType = Shape


accessibilityLabel :: String -> Props
accessibilityLabel = unsafeMkProps "accessibilityLabel"


blurRadius :: Int -> Props
blurRadius = unsafeMkProps "blurRadius"

data BT
  = BTHeight
  | BTPosition
  | BTPadding


behavior :: BT -> Props
behavior BTHeight   = unsafeMkProps "behavior" "height"
behavior BTPosition = unsafeMkProps "behavior" "position"
behavior BTPadding  = unsafeMkProps "behavior" "padding"


capInsets :: Box -> Props
capInsets = unsafeMkProps "capInsets"

enableEmptySections :: Boolean -> Props
enableEmptySections = unsafeMkProps "enableEmptySections"


initialListSize :: Int -> Props
initialListSize = unsafeMkProps "initialListSize"


pageSize :: Int -> Props
pageSize = unsafeMkProps "pageSize"


scrollRenderAheadDistance :: Int -> Props
scrollRenderAheadDistance = unsafeMkProps "scrollRenderAheadDistance"



-- annotations [{latitude: number, longitude: number, animateDrop: bool, draggable: bool, onDragStateChange: function, onFocus: function, onBlur: function, title: string, subtitle: string, leftCalloutView: element, rightCalloutView: element, detailCalloutView: element, tintColor: [object Object], image: Image.propTypes.source, view: element, id: string, hasLeftCallout: deprecatedPropsType( React.PropsTypes.bool, 'Use `leftCalloutView` instead.' ), hasRightCallout: deprecatedPropsType( React.PropsTypes.bool, 'Use `rightCalloutView` instead.' ), onLeftCalloutPress: deprecatedPropsType( React.PropsTypes.func, 'Use `leftCalloutView` instead.' ), onRightCalloutPress: deprecatedPropsType( React.PropsTypes.func, 'Use `rightCalloutView` instead.' )}] #
annotations :: Boolean -> Props
annotations = unsafeMkProps "annotations"



followUserLocation :: Boolean -> Props
followUserLocation = unsafeMkProps "followUserLocation"


legalLabelInsets :: Box -> Props
legalLabelInsets = unsafeMkProps "legalLabelInsets"


data MT
  = MTStandard
  | MTSatellite
  | MTHybrid


mapType :: MT -> Props
mapType MTStandard  = unsafeMkProps "mapType" "standard"
mapType MTSatellite = unsafeMkProps "mapType" "satellite"
mapType MTHybrid    = unsafeMkProps "mapType" "hybrid"


maxDelta :: Int -> Props
maxDelta = unsafeMkProps "maxDelta"


minDelta :: Int -> Props
minDelta = unsafeMkProps "minDelta"


-- TODO: implement overlay function

newtype Coordinate = Coordinate
  { lattitude :: Number
  , longitude :: Number
  }

newtype Overlay = Overlay
  { coordinates :: Array Coordinate
  , lineWidth :: Int
  , strokeColor :: Color
  , fillColor :: Color
  , oid :: String
  }

-- overlays [{coordinates: [object Object], lineWidth: number, strokeColor: [object Object], fillColor: [object Object], id: string}] #
overlays :: Array Overlay -> Props
overlays = unsafeMkProps "overlays"


pitchEnabled :: Boolean -> Props
pitchEnabled = unsafeMkProps "pitchEnabled"

newtype Region = Region
  { lattitude :: Number
  , longitude :: Number
  , lattitudeDelta :: Number
  , longitudeDelta :: Number
  }

region :: Region -> Props
region = unsafeMkProps "region"


rotateEnabled :: Boolean -> Props
rotateEnabled = unsafeMkProps "rotateEnabled"


showsCompass :: Boolean -> Props
showsCompass = unsafeMkProps "showsCompass"


showsPointsOfInterest :: Boolean -> Props
showsPointsOfInterest = unsafeMkProps "showsPointsOfInterest"


showsUserLocation :: Boolean -> Props
showsUserLocation = unsafeMkProps "showsUserLocation"


zoomEnabled :: Boolean -> Props
zoomEnabled = unsafeMkProps "zoomEnabled"


active :: Boolean -> Props
active = unsafeMkProps "active"


data AT
  = ATNone
  | ATSlide
  | ATFade


animationType :: AT -> Props
animationType ATNone  = unsafeMkProps "animationType" "none"
animationType ATSlide = unsafeMkProps "animationType" "slide"
animationType ATFade  = unsafeMkProps "animationType" "fade"


transparent :: Boolean -> Props
transparent = unsafeMkProps "transparent"


visible :: Boolean -> Props
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


supportedOrientations :: Array SupportedOrientations -> Props
supportedOrientations ary = unsafeMkProps "supportedOrientations" (map show ary)



-- initialRouteStack [object] #
initialRouteStack :: Boolean -> Props
initialRouteStack = unsafeMkProps "initialRouteStack"

-- navigationBar node #
navigationBar :: Boolean -> Props
navigationBar = unsafeMkProps "navigationBar"

-- navigator object #
navigator :: Boolean -> Props
navigator = unsafeMkProps "navigator"




-- initialRoute {component: function, title: string, titleImage: Image.propTypes.source, passPropss: object, backButtonIcon: Image.propTypes.source, backButtonTitle: string, leftButtonIcon: Image.propTypes.source, leftButtonTitle: string, onLeftButtonPress: function, rightButtonIcon: Image.propTypes.source, rightButtonTitle: string, onRightButtonPress: function, wrapperStyle: [object Object], navigationBarHidden: bool, shadowHidden: bool, tintColor: string, barTintColor: string, titleTextColor: string, translucent: bool} #
initialRoute :: Boolean -> Props
initialRoute = unsafeMkProps "initialRoute"


interactivePopGestureEnabled :: Boolean -> Props
interactivePopGestureEnabled = unsafeMkProps "interactivePopGestureEnabled"

-- itemWrapperStyle View#style #
itemWrapperStyle :: Boolean -> Props
itemWrapperStyle = unsafeMkProps "itemWrapperStyle"


navigationBarHidden :: Boolean -> Props
navigationBarHidden = unsafeMkProps "navigationBarHidden"


shadowHidden :: Boolean -> Props
shadowHidden = unsafeMkProps "shadowHidden"


titleTextColor :: Color -> Props
titleTextColor c = unsafeMkProps "titleTextColor" c



-- style pickerStyleType #
style :: Boolean -> Props
style = unsafeMkProps "style"

data PM
  = PMDialog
  | PMDropDown


pickerMode :: PM -> Props
pickerMode PMDialog   = unsafeMkProps "mode" "dialog"
pickerMode PMDropDown = unsafeMkProps "mode" "dropdown"


prompt :: String -> Props
prompt = unsafeMkProps "prompt"


-- itemStyle itemStylePropsType #
itemStyle :: Boolean -> Props
itemStyle = unsafeMkProps "itemStyle"


selectedValue :: forall a. a -> Props
selectedValue = unsafeMkProps "selectedValue"


indeterminate :: Boolean -> Props
indeterminate = unsafeMkProps "indeterminate"

data StyleAttributes
  = SAHorizontal
  | SANormal
  | SASmall
  | SALarge
  | SAInverse
  | SASmallInverse
  | SALargeInverse


styleAttr :: StyleAttributes -> Props
styleAttr SAHorizontal   = unsafeMkProps "styleAttr" "Horizontal"
styleAttr SANormal       = unsafeMkProps "styleAttr" "Normal"
styleAttr SASmall        = unsafeMkProps "styleAttr" "Small"
styleAttr SALarge        = unsafeMkProps "styleAttr" "Large"
styleAttr SAInverse      = unsafeMkProps "styleAttr" "Inverse"
styleAttr SASmallInverse = unsafeMkProps "styleAttr" "SmallInverse"
styleAttr SALargeInverse = unsafeMkProps "styleAttr" "LargeInverse"


progress :: Number -> Props
progress = unsafeMkProps "progress"

progressTintColor :: Color -> Props
progressTintColor c = unsafeMkProps "progressTintColor" c


data PVS
  = PVSDefault
  | PVSBar


progressViewStyle :: PVS -> Props
progressViewStyle PVSDefault = unsafeMkProps "progressViewStyle" "default"
progressViewStyle PVSBar     = unsafeMkProps "progressViewStyle" "bar"


trackTintColor :: Color -> Props
trackTintColor c = unsafeMkProps "trackTintColor" c


refreshing :: Boolean -> Props
refreshing = unsafeMkProps "refreshing"


colors :: Array Color -> Props
colors = unsafeMkProps "colors"


progressBackgroundColor :: Color -> Props
progressBackgroundColor c = unsafeMkProps "progressBackgroundColor" c


progressViewOffset :: Int -> Props
progressViewOffset = unsafeMkProps "progressViewOffset"

-- size enum(RefreshLayoutConsts.SIZE.DEFAULT, RefreshLayoutConsts.SIZE.LARGE) #
size :: Size -> Props
size SizeSmall   = unsafeMkProps "size" "small"
size SizeLarge   = unsafeMkProps "size" "large"
size (SizeNum a) = unsafeMkProps "size" a


data RefreshControlSize = RCDefault | RCLarge

-- refreshControlSize :: RefreshControlSize -> Props
-- refreshControlSize RCDefault = unsafeMkProps "size" refreshControlSizeDefault
-- refreshControlSize RCLarge = unsafeMkProps "size" refreshControlSizeLarge


-- contentContainerStyle StyleSheetPropsType(ViewStylePropsTypes) #
contentContainerStyle :: StyleId -> Props
contentContainerStyle = unsafeMkProps "contentContainerStyle"


horizontal :: Boolean -> Props
horizontal = unsafeMkProps "horizontal"


keyboardShouldPersistTaps :: Boolean -> Props
keyboardShouldPersistTaps = unsafeMkProps "keyboardShouldPersistTaps"


keyboardVerticalOffset :: Int -> Props
keyboardVerticalOffset = unsafeMkProps "keyboardVerticalOffset"



pagingEnabled :: Boolean -> Props
pagingEnabled = unsafeMkProps "pagingEnabled"

-- refreshControl element #
refreshControl :: Boolean -> Props
refreshControl = unsafeMkProps "refreshControl"


removeClippedSubviews :: Boolean -> Props
removeClippedSubviews = unsafeMkProps "removeClippedSubviews"

showsHorizontalScrollIndicator :: Boolean -> Props
showsHorizontalScrollIndicator = unsafeMkProps "showsHorizontalScrollIndicator"


showsVerticalScrollIndicator :: Boolean -> Props
showsVerticalScrollIndicator = unsafeMkProps "showsVerticalScrollIndicator"


endFillColor :: Color -> Props
endFillColor c = unsafeMkProps "endFillColor" c


scrollPerfTag :: String -> Props
scrollPerfTag = unsafeMkProps "scrollPerfTag"


alwaysBounceHorizontal :: Boolean -> Props
alwaysBounceHorizontal = unsafeMkProps "alwaysBounceHorizontal"


alwaysBounceVertical :: Boolean -> Props
alwaysBounceVertical = unsafeMkProps "alwaysBounceVertical"


automaticallyAdjustContentInsets :: Boolean -> Props
automaticallyAdjustContentInsets = unsafeMkProps "automaticallyAdjustContentInsets"


bounces :: Boolean -> Props
bounces = unsafeMkProps "bounces"


bouncesZoom :: Boolean -> Props
bouncesZoom = unsafeMkProps "bouncesZoom"


injectedJavaScript :: String -> Props
injectedJavaScript = unsafeMkProps "injectedJavaScript"


userAgent :: String -> Props
userAgent = unsafeMkProps "userAgent"


scalesPageToFit :: Boolean -> Props
scalesPageToFit = unsafeMkProps "scalesPageToFit"


startInLoadingState :: Boolean -> Props
startInLoadingState = unsafeMkProps "startInLoadingState"


domStorageEnabled :: Boolean -> Props
domStorageEnabled = unsafeMkProps "domStorageEnabled"


javaScriptEnabled :: Boolean -> Props
javaScriptEnabled = unsafeMkProps "javaScriptEnabled"


allowsInlineMediaPlayback :: Boolean -> Props
allowsInlineMediaPlayback = unsafeMkProps "allowsInlineMediaPlayback"


mediaPlaybackRequiresUserAction :: Boolean -> Props
mediaPlaybackRequiresUserAction = unsafeMkProps "mediaPlaybackRequiresUserAction"


canCancelContentTouches :: Boolean -> Props
canCancelContentTouches = unsafeMkProps "canCancelContentTouches"


centerContent :: Boolean -> Props
centerContent = unsafeMkProps "centerContent"


contentInset :: Box -> Props
contentInset = unsafeMkProps "contentInset"

type Point = {x :: Int, y :: Int}


contentOffset :: Point -> Props
contentOffset = unsafeMkProps "contentOffset"


data DRT
  = DRTFast
  | DRTNormal
  | DRTNum Number


decelerationRate :: DRT -> Props
decelerationRate DRTFast    = unsafeMkProps "decelerationRate" "fast"
decelerationRate DRTNormal  = unsafeMkProps "decelerationRate" "normal"
decelerationRate (DRTNum a) = unsafeMkProps "decelerationRate" a


directionalLockEnabled :: Boolean -> Props
directionalLockEnabled = unsafeMkProps "directionalLockEnabled"


data IndicatorStyle
  = ISDefault
  | ISBlack
  | ISWhite


indicatorStyle :: IndicatorStyle -> Props
indicatorStyle ISDefault = unsafeMkProps "indicatorStyle" "default"
indicatorStyle ISBlack   = unsafeMkProps "indicatorStyle" "black"
indicatorStyle ISWhite   = unsafeMkProps "indicatorStyle" "white"



maximumZoomScale :: Number -> Props
maximumZoomScale = unsafeMkProps "maximumZoomScale"

minimumZoomScale :: Number -> Props
minimumZoomScale = unsafeMkProps "minimumZoomScale"



scrollEventThrottle :: Int -> Props
scrollEventThrottle = unsafeMkProps "scrollEventThrottle"


scrollIndicatorInsets :: Box -> Props
scrollIndicatorInsets = unsafeMkProps "scrollIndicatorInsets"


scrollsToTop :: Boolean -> Props
scrollsToTop = unsafeMkProps "scrollsToTop"


data SnapToAlignment
  = STAStart
  | STACenter
  | STAEnd


snapToAlignment :: SnapToAlignment -> Props
snapToAlignment STAStart = unsafeMkProps "snapToAlignment" "start"
snapToAlignment STACenter = unsafeMkProps "snapToAlignment" "center"
snapToAlignment STAEnd = unsafeMkProps "snapToAlignment" "end"



snapToInterval :: Int -> Props
snapToInterval = unsafeMkProps "snapToInterval"


stickyHeaderIndices :: Array Int -> Props
stickyHeaderIndices = unsafeMkProps "stickyHeaderIndices"


zoomScale :: Number -> Props
zoomScale = unsafeMkProps "zoomScale"


enabled :: Boolean -> Props
enabled = unsafeMkProps "enabled"


momentary :: Boolean -> Props
momentary = unsafeMkProps "momentary"



selectedIndex :: Int -> Props
selectedIndex = unsafeMkProps "selectedIndex"



values :: Array String -> Props
values = unsafeMkProps "values"


valueNum :: Int -> Props
valueNum = unsafeMkProps "value"


valueBool :: Boolean -> Props
valueBool = unsafeMkProps "value"


maximumTrackTintColor :: Color -> Props
maximumTrackTintColor c = unsafeMkProps "maximumTrackTintColor" c


maximumValue :: Int -> Props
maximumValue = unsafeMkProps "maximumValue"



minimumTrackTintColor :: Color -> Props
minimumTrackTintColor c = unsafeMkProps "minimumTrackTintColor" c


minimumValue :: Int -> Props
minimumValue = unsafeMkProps "minimumValue"


step :: Int -> Props
step = unsafeMkProps "step"

hidden :: Boolean -> Props
hidden = unsafeMkProps "hidden"


pBackgroundColor :: Color -> Props
pBackgroundColor c = unsafeMkProps "backgroundColor" c


data BarStyle
  = BSDefault
  | BSLightContent
  | BSDarkContent


barStyle :: BarStyle -> Props
barStyle BSDefault      = unsafeMkProps "barStyle" "default"
barStyle BSLightContent = unsafeMkProps "barStyle" "light-content"
barStyle BSDarkContent  = unsafeMkProps "barStyle" "dark-content"



networkActivityIndicatorVisible :: Boolean -> Props
networkActivityIndicatorVisible = unsafeMkProps "networkActivityIndicatorVisible"


data ShowHideTransition
  = SHTFade
  | SHTSlide


showHideTransition :: ShowHideTransition -> Props
showHideTransition SHTFade = unsafeMkProps "showHideTransition" "fade"
showHideTransition SHTSlide = unsafeMkProps "showHideTransition" "slide"



testIdentifier :: String -> Props
testIdentifier = unsafeMkProps "testIdentifier"



onTintColor :: Color -> Props
onTintColor c = unsafeMkProps "onTintColor" c


thumbTintColor :: Color -> Props
thumbTintColor c = unsafeMkProps "thumbTintColor" c


barTintColor :: Color -> Props
barTintColor c = unsafeMkProps "barTintColor" c


data ItemPositioning
  = IPFill
  | IPCenter
  | IPAuto


itemPositioning :: ItemPositioning -> Props
itemPositioning IPFill   = unsafeMkProps "itemPositioning" "fill"
itemPositioning IPCenter = unsafeMkProps "itemPositioning" "center"
itemPositioning IPAuto   = unsafeMkProps "itemPositioning" "auto"


tintColor :: Color -> Props
tintColor c = unsafeMkProps "tintColor" c


translucent :: Boolean -> Props
translucent = unsafeMkProps "translucent"


unselectedTintColor :: Color -> Props
unselectedTintColor c = unsafeMkProps "unselectedTintColor" c


data Badge = BadgeStr String | BadgeNum Int


badge :: Badge -> Props
badge (BadgeStr str) = unsafeMkProps "badge" str
badge (BadgeNum num) = unsafeMkProps "badge" num


renderAsOriginal :: Boolean -> Props
renderAsOriginal = unsafeMkProps "renderAsOriginal"


selected :: Boolean -> Props
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


systemIcon :: SysIcon -> Props
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


ellipsizeMode :: EllipsizeMode -> Props
ellipsizeMode EMHead   = unsafeMkProps "ellipsizeMode" "head"
ellipsizeMode EMMiddle = unsafeMkProps "ellipsizeMode" "middle"
ellipsizeMode EMTail   = unsafeMkProps "ellipsizeMode" "tail"
ellipsizeMode EMClip   = unsafeMkProps "ellipsizeMode" "clip"


selectable :: Boolean -> Props
selectable = unsafeMkProps "selectable"


adjustsFontSizeToFit :: Boolean -> Props
adjustsFontSizeToFit = unsafeMkProps "adjustsFontSizeToFit"


allowFontScaling :: Boolean -> Props
allowFontScaling = unsafeMkProps "allowFontScaling"


minimumFontScale :: Number -> Props
minimumFontScale = unsafeMkProps "minimumFontScale"


suppressHighlighting :: Boolean -> Props
suppressHighlighting = unsafeMkProps "suppressHighlighting"


data AutoCapitalize
  = AutoCapNone
  | AutoCapSentences
  | AutoCapWords
  | AutoCapCharacters


autoCapitalize :: AutoCapitalize -> Props
autoCapitalize AutoCapNone       = unsafeMkProps "autoCapitalize" "none"
autoCapitalize AutoCapSentences  = unsafeMkProps "autoCapitalize" "sentences"
autoCapitalize AutoCapWords      = unsafeMkProps "autoCapitalize" "words"
autoCapitalize AutoCapCharacters = unsafeMkProps "autoCapitalize" "characters"


autoCorrect :: Boolean -> Props
autoCorrect = unsafeMkProps "autoCorrect"


autoFocus :: Boolean -> Props
autoFocus = unsafeMkProps "autoFocus"


blurOnSubmit :: Boolean -> Props
blurOnSubmit = unsafeMkProps "blurOnSubmit"


defaultValue :: String -> Props
defaultValue = unsafeMkProps "defaultValue"


editable :: Boolean -> Props
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


keyboardType :: KeyBoardType -> Props
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


maxLength :: Int -> Props
maxLength = unsafeMkProps "maxLength"


multiline :: Boolean -> Props
multiline = unsafeMkProps "multiline"



placeholder :: String -> Props
placeholder = unsafeMkProps "placeholder"


placeholderTextColor :: Color -> Props
placeholderTextColor c = unsafeMkProps "placeholderTextColor" c


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


returnKeyType :: ReturnKeyType -> Props
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



secureTextEntry :: Boolean -> Props
secureTextEntry = unsafeMkProps "secureTextEntry"


selectTextOnFocus :: Boolean -> Props
selectTextOnFocus = unsafeMkProps "selectTextOnFocus"


selectionColor :: Color -> Props
selectionColor c = unsafeMkProps "selectionColor" c



valueString :: String -> Props
valueString = unsafeMkProps "value"


inlineImageLeft :: String -> Props
inlineImageLeft = unsafeMkProps "inlineImageLeft"


inlineImagePadding :: Int -> Props
inlineImagePadding = unsafeMkProps "inlineImagePadding"


numberOfLines :: Int -> Props
numberOfLines = unsafeMkProps "numberOfLines"


returnKeyLabel :: String -> Props
returnKeyLabel = unsafeMkProps "returnKeyLabel"


underlineColorAndroid :: Color -> Props
underlineColorAndroid c = unsafeMkProps "underlineColorAndroid" c


data ClearButtonMode
 = CBMNever
 | CBMWhileEditing
 | CBMUnlessEditing
 | CBMAlways


clearButtonMode :: ClearButtonMode -> Props
clearButtonMode CBMNever         = unsafeMkProps "clearButtonMode" "never"
clearButtonMode CBMWhileEditing  = unsafeMkProps "clearButtonMode" "while-editing"
clearButtonMode CBMUnlessEditing = unsafeMkProps "clearButtonMode" "unless-editing"
clearButtonMode CBMAlways        = unsafeMkProps "clearButtonMode" "always"


clearTextOnFocus :: Boolean -> Props
clearTextOnFocus = unsafeMkProps "clearTextOnFocus"


enablesReturnKeyAutomatically :: Boolean -> Props
enablesReturnKeyAutomatically = unsafeMkProps "enablesReturnKeyAutomatically"


data KeyBoardAppearance
  = KBADefault
  | KBALight
  | KBADark


keyboardAppearance :: KeyBoardAppearance -> Props
keyboardAppearance KBADefault = unsafeMkProps "keyboardAppearance" "default"
keyboardAppearance KBALight   = unsafeMkProps "keyboardAppearance" "light"
keyboardAppearance KBADark    = unsafeMkProps "keyboardAppearance" "dark"


-- TODO: implement DocumentSelectionState through FFI
-- selectionState PropsTypes.instanceOf(DocumentSelectionState) #
selectionState :: Boolean -> Props
selectionState = unsafeMkProps "selectionState"


data PropsType = PropsType
  { title :: String
  , icon :: String -- optionl
  , show :: String -- implement enum
  , showWithText :: Boolean
  }

data ShowProps
  = Always
  | IfRoom
  | Never

--s ReactPropsTypes.arrayOf(ReactPropsTypes.shape({ title: ReactPropsTypes.string.isRequired, icon: optionalImageSource, show: ReactPropsTypes.oneOf(['always', 'ifRoom', 'never']), showWithText: ReactPropsTypes.bool })) #
actions :: Boolean -> Props
actions = unsafeMkProps "actions"


contentInsetEnd :: Int -> Props
contentInsetEnd = unsafeMkProps "contentInsetEnd"


contentInsetStart :: Int -> Props
contentInsetStart = unsafeMkProps "contentInsetStart"



rtl :: Boolean -> Props
rtl = unsafeMkProps "rtl"


subtitle :: String -> Props
subtitle = unsafeMkProps "subtitle"


subtitleColor :: Color -> Props
subtitleColor c = unsafeMkProps "subtitleColor" c


title :: String -> Props
title = unsafeMkProps "title"


titleColor :: Color -> Props
titleColor c = unsafeMkProps "titleColor" c


underlayColor :: Color -> Props
underlayColor c = unsafeMkProps "underlayColor" c


-- background backgroundPropsType #
background :: Boolean -> Props
background = unsafeMkProps "background"

useForeground :: Boolean -> Props
useForeground = unsafeMkProps "useForeground"


activeOpacity :: Number -> Props
activeOpacity = unsafeMkProps "activeOpacity"


accessibilityComponentType :: AccessibilityComponentTypeProp -> Props
accessibilityComponentType ACTPNone             = unsafeMkProps "accessibilityComponentType" "none"
accessibilityComponentType Button               = unsafeMkProps "accessibilityComponentType" "button"
accessibilityComponentType RadiobuttonChecked   = unsafeMkProps "accessibilityComponentType" "radiobutton_checked"
accessibilityComponentType RadiobuttonUnchecked = unsafeMkProps "accessibilityComponentType" "radiobutton_unchecked"



-- TODO: implement accessibilityTraits
-- accessibilityTraits View.AccessibilityTraits, [object Object] #
-- accessibilityTraits :: Array  AccessibilityTraitsProps -> Props
-- accessibilityTraits = unsafeMkProps "accessibilityTraits"


accessible :: Boolean -> Props
accessible = unsafeMkProps "accessible"


delayLongPress :: Int -> Props
delayLongPress = unsafeMkProps "delayLongPress"


delayPressIn :: Int -> Props
delayPressIn = unsafeMkProps "delayPressIn"


delayPressOut :: Int -> Props
delayPressOut = unsafeMkProps "delayPressOut"


disabled :: Boolean -> Props
disabled = unsafeMkProps "disabled"


hitSlop :: Box -> Props
hitSlop = unsafeMkProps "hitSlop"


pressRetentionOffset :: Box -> Props
pressRetentionOffset = unsafeMkProps "pressRetentionOffset"


initialPage :: Int -> Props
initialPage = unsafeMkProps "initialPage"


data KeyboardDismissMode
  = KDMNone
  | KDMInteractive
  | KDMOnDrag


keyboardDismissMode :: KeyboardDismissMode -> Props
keyboardDismissMode KDMNone        = unsafeMkProps "keyboardDismissMode" "none"
keyboardDismissMode KDMInteractive = unsafeMkProps "keyboardDismissMode" "interactive"
keyboardDismissMode KDMOnDrag      = unsafeMkProps "keyboardDismissMode" "on-drag"


pageMargin :: Int -> Props
pageMargin = unsafeMkProps "pageMargin"


scrollEnabled :: Boolean -> Props
scrollEnabled = unsafeMkProps "scrollEnabled"


renderNavigationView :: ReactElement -> Props
renderNavigationView = unsafeMkProps "renderNavigationView"

renderFooter :: ReactElement -> Props
renderFooter = unsafeMkProps "renderFooter"

renderHeader :: ReactElement -> Props
renderHeader = unsafeMkProps "renderHeader"

data ImageSource
  = ImgURI {uri :: String}
  | Local String
  | URIs (Array {uri :: String, width::Int, height :: Int})

sourceWithName :: String -> ImageSource -> Props
sourceWithName name (ImgURI uri)  = unsafeMkProps name  uri
sourceWithName name (URIs aryuri) = unsafeMkProps name aryuri
sourceWithName name (Local path)  = unsafeMkProps name (require path)

source :: ImageSource -> Props
source = sourceWithName "source"

defaultSource :: ImageSource -> Props
defaultSource = sourceWithName "defaultSource"

progressImage :: ImageSource -> Props
progressImage = sourceWithName "progressImage"

trackImage :: ImageSource -> Props
trackImage = sourceWithName "trackImage"

minimumTrackImage :: ImageSource -> Props
minimumTrackImage = sourceWithName "minimumTrackImage"

maximumTrackImage :: ImageSource -> Props
maximumTrackImage = sourceWithName "maximumTrackImage"

thumbImage :: ImageSource -> Props
thumbImage = sourceWithName "thumbImage"

icon :: ImageSource -> Props
icon = sourceWithName "icon"

overflowIcon :: ImageSource -> Props
overflowIcon = sourceWithName "overflowIcon"

navIcon :: ImageSource -> Props
navIcon = sourceWithName "navIcon"


logo :: ImageSource -> Props
logo = sourceWithName "logo"


selectedIcon :: ImageSource -> Props
selectedIcon = sourceWithName "selectedIcon"

defaultValueNode :: ReactElement -> Props
defaultValueNode = unsafeMkProps "defaultValue"

newtype TISelection = TISelection {start :: Int, end :: Int}

selection :: TISelection -> Props
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


dataDetectorTypes :: DataDetectorType -> Props
dataDetectorTypes d = unsafeMkProps "dataDetectorTypes" (show d)


dataDetectorTypesAry :: Array DataDetectorType -> Props
dataDetectorTypesAry d = unsafeMkProps "dataDetectorTypes" (map show d)

navigationState :: forall ns. ns -> Props
navigationState = unsafeMkProps "navigationState"

renderScene :: forall ns. ns -> Props
renderScene = unsafeMkProps "renderScene"

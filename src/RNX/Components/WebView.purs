module WebView where

import RNX.ComponentClasses (createElementOneChild, webViewClass)
import RNX.PropTypes (ImageSource, Prop, UnKnownType)
import React (ReactElement)
import View (ViewPropsEx)

type ContentInset =
  { top :: Number
  , bottom :: Number
  , left :: Number
  , right :: Number
  }

newtype DataDetectorTypes = DataDetectorTypes String

phoneNumber :: DataDetectorTypes
phoneNumber = DataDetectorTypes "phoneNumber"

link :: DataDetectorTypes
link = DataDetectorTypes "link"

address :: DataDetectorTypes
address = DataDetectorTypes "address"

calendarEvent :: DataDetectorTypes
calendarEvent = DataDetectorTypes "calendarEvent"

none :: DataDetectorTypes
none = DataDetectorTypes "none"

all :: DataDetectorTypes
all = DataDetectorTypes "all"

type WebViewProps eff = ViewPropsEx eff
  ( automaticallyAdjustContentInsets :: Boolean
  , injectedJavaScript :: String
  , mediaPlaybackRequiresUserAction :: Boolean
  , scalesPageToFit :: Boolean
  , startInLoadingState :: Boolean
  , contentInset :: ContentInset
  , source :: ImageSource
  , dataDetectorTypes :: DataDetectorTypes
  , onError :: UnKnownType
  , onLoad :: UnKnownType
  , onLoadEnd :: UnKnownType
  , onLoadStart :: UnKnownType
  , onMessage :: UnKnownType
  , onNavigationStateChange :: UnKnownType
  , renderError :: UnKnownType
  , renderLoading :: UnKnownType
  )
  ( domStorageEnabled :: Boolean
  , javaScriptEnabled :: Boolean
  , userAgent :: String
  )
  ( allowsInlineMediaPlayback :: Boolean
  , bounces :: Boolean
  )


webView :: forall eff. Prop (WebViewProps eff) -> ReactElement -> ReactElement
webView = createElementOneChild webViewClass

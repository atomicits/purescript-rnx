module Image where

import RNX.Styles (Style, StyleProp)
import RNX.Events (EventHandler, LayoutEvent, UnitEventHandler)
import RNX.PropTypes (class AutoEnum, class CenterEnum, ImageSource, Prop)
import RNX.ComponentClasses (imageClass)
import React (ReactElement, createElement)

type ImageProps eff =
  { style       :: Style
  , onError     :: UnitEventHandler eff
  , onLayout    :: EventHandler eff LayoutEvent
  , onLoad      :: UnitEventHandler eff
  , onLoadEnd   :: UnitEventHandler eff
  , onLoadStart :: UnitEventHandler eff
  , resizeMode  :: ResizeMode
  , source      ::  ImageSource
  , testID      :: String
  , android :: Prop
                 { resizeMethod ::  ResizeMethod
                 }
  , ios :: Prop
             { accessibilityLabel :: String
             , accessible    :: Boolean
             , blurRadius    :: Number
             , capInsets     :: {top::Number, left::Number, bottom::Number, right::Number}
             , defaultSource ::  ImageSource
             , onPartialLoad :: UnitEventHandler eff
             , onProgress    :: EventHandler eff ImageProgressEvent
             }
  }

newtype ResizeMethod = ResizeMethod String

instance autoRM :: AutoEnum ResizeMethod where
  auto = ResizeMethod "auto"

resize :: ResizeMethod
resize = ResizeMethod "resize"

scale :: ResizeMethod
scale = ResizeMethod "scale"

type ImageProgressEvent =
  { nativeEvent ::
      { loaded :: Number
      , total  :: Number
      }
  }

newtype ResizeMode = ResizeMode String

cover :: ResizeMode
cover = ResizeMode "cover"

contain :: ResizeMode
contain = ResizeMode "contain"

stretch :: ResizeMode
stretch = ResizeMode "stretch"

repeat :: ResizeMode
repeat = ResizeMode "repeat"

instance rmCenter :: CenterEnum ResizeMode where
  center = ResizeMode "center"

resizeMode :: ResizeMode -> StyleProp
resizeMode = unsafeStyleProp "resizeMode"

foreign import unsafeStyleProp :: forall a. String -> a -> StyleProp


image :: forall eff. Prop (ImageProps eff) -> Array (ReactElement) -> ReactElement
image = createElement imageClass

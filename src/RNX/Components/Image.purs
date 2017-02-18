module Image where

import RNX.Styles (Style)
import RNX.Events (EventHandler, LayoutEvent, UnitEventHandler)
import RNX.PropTypes (class AutoEnum, Prop, UnKnownType)
import RNX.ComponentClasses
import React (ReactElement, createElement)


type ImageProps eff =
  { style       :: Style
  , onError     :: UnitEventHandler eff
  , onLayout    :: EventHandler eff LayoutEvent
  , onLoad      :: UnitEventHandler eff
  , onLoadEnd   :: UnitEventHandler eff
  , onLoadStart :: UnitEventHandler eff
  , resizeMode  :: UnKnownType   --ResizeMode
  , source      :: UnKnownType -- ImageSource
  , testID      :: String
  , android :: Prop
                 { resizeMethod ::  ResizeMethod
                 }
  , ios :: Prop
             { accessibilityLabel :: String
             , accessible    :: Boolean
             , blurRadius    :: Number
             , capInsets     :: {top::Number, left::Number, bottom::Number, right::Number}
             , defaultSource :: UnKnownType -- ImageSource
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


image :: forall eff. Prop (ImageProps eff) -> Array (ReactElement) -> ReactElement
image = createElement imageClass

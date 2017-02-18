module Text where

import Prelude
import RNX.Styles (Style)
import RNX.Events (EventHandler, LayoutEvent, TouchEvent)
import RNX.PropTypes (Prop)
import RNX.ComponentClasses (textClass)
import React ( ReactElement,  createElement)


type TextProps eff =
  { style :: Style
  , key :: String
  , testID :: String
  , numberOfLines :: Int
  , accessible :: Boolean
  , onLayout :: EventHandler eff LayoutEvent
  , onPress :: EventHandler eff TouchEvent
  , onLongPress :: EventHandler eff TouchEvent
  , selectable :: Boolean
  , ellipsizeMode :: EllipsizeMode
  , ios:: Prop
            { adjustsFontSizeToFit :: Boolean
            , allowFontScaling :: Boolean
            , minimumFontScale :: Number
            , suppressHilighting :: Boolean
            }
}


newtype EllipsizeMode = EllipsizeMode String


ellipsizeMode ::
  { head :: EllipsizeMode
  , middle :: EllipsizeMode
  , tail :: EllipsizeMode
  , clip :: EllipsizeMode
  }
ellipsizeMode =
  { head: EllipsizeMode "head"
  , middle: EllipsizeMode "middle"
  , tail: EllipsizeMode "tail"
  , clip: EllipsizeMode "clip"
  }


text :: forall eff. Prop (TextProps eff) ->  Array (ReactElement) -> ReactElement
text = createElement textClass

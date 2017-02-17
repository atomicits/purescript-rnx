module Text where


import RNX.Styles
import RNX.Events
import RNX.PropTypes
import RNX.ComponentClasses
import React ( ReactElement,  createElement)

type TextProps eff = {
    style :: Style
  , key :: String
  , testID :: String
  , numberOfLines :: Int
  , accessible :: Boolean
  , onLayout :: EventHandler eff LayoutEvent
  , onPress :: EventHandler eff TouchEvent
  , onLongPress :: EventHandler eff TouchEvent
  , selectable :: Boolean
  , ellipsizeMode :: EllipsizeMode
  , ios:: Prop {
      adjustsFontSizeToFit :: Boolean
    , allowFontScaling :: Boolean
    , minimumFontScale :: Number
    , suppressHilighting :: Boolean
  }
}


newtype EllipsizeMode = EllipsizeMode String
ellipsizeMode :: {
    head :: EllipsizeMode
  , middle :: EllipsizeMode
  , tail :: EllipsizeMode
  , clip :: EllipsizeMode
}
ellipsizeMode = {
    head: EllipsizeMode "head"
  , middle: EllipsizeMode "middle"
  , tail: EllipsizeMode "tail"
  , clip: EllipsizeMode "clip"
}


text :: forall eff. Prop (TextProps eff) ->  Array (ReactElement) -> ReactElement
text  = createElement textClass

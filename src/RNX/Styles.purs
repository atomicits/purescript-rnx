module RNX.Styles where

import Prelude

import RNX.Color (Color)
import React.DOM.Props (Props, unsafeMkProps)
import Unsafe.Coerce (unsafeCoerce)

-- | Proof that row `r` is a subset of row `s`
class Optional (r :: # Type) (s :: # Type)
instance srInstance :: Union r t s => Optional r s

foreign import data Style :: Type

type StyleProps =
  ( alignItems :: AlignItem
  , alignSelf :: AlignSelf
  , backfaceVisibility :: Visibility
  , backgroundColor :: Color
  , backgroundVisibility :: Visibility
  , borderBottomColor :: Color
  , borderBottomLeftRadius :: Int
  , borderBottomRightRadius :: Int
  , borderBottomWidth :: Int
  , borderColor :: Color
  , borderLeftColor :: Color
  , borderLeftWidth :: Int
  , borderRadius :: Int
  , borderRightColor :: Color
  , borderRightWidth :: Int
  , borderStyle :: BorderStyle
  , borderTopColor :: Color
  , borderTopLeftRadius :: Int
  , borderTopRightRadius :: Int
  , borderTopWidth :: Int
  , borderWidth :: Int
  , bottom :: Int
  , color :: Color
  , elevation :: Int
  , flex :: Int
  , flexBasis :: Int
  , flexDirection :: FlexDirection
  , flexGrow :: Int
  , flexShrink :: Int
  , flexWrap :: Wrap
  , fontFamily :: FontFamily
  , fontSize :: Int
  , fontStyle :: FontStyle
  , fontWeight :: FontWeight
  , height :: Int
  , justifyContent :: JustifyContent
  , left :: Int
  , letterSpacing :: Number
  , lineHeight :: Int
  , margin :: Int
  , marginBottom :: Int
  , marginHorizontal :: Int
  , marginLeft :: Int
  , marginRight :: Int
  , marginTop :: Int
  , marginVertical :: Int
  , maxHeight :: Int
  , maxWidth :: Int
  , minHeight :: Int
  , minWidth :: Int
  , opacity :: Int
  , overflow :: Visibility
  , overlayColor :: Color
  , padding :: Int
  , paddingBottom :: Int
  , paddingHorizontal :: Int
  , paddingLeft :: Int
  , paddingRight :: Int
  , paddingTop :: Int
  , paddingVertical :: Int
  , position :: Position
  , right :: Int
  , shadowColor :: Color
  , shadowOffset :: WidthHeight
  , shadowOpacity :: Int
  , shadowRadius :: Int
  , textAlign :: TextAlign
  , textAlignVertical :: TextAlignVertical
  , textDecorationColor :: Color
  , textDecorationLine :: TextDecorationLine
  , textDecorationStyle :: TextDecorationStyle
  , textShadowColor :: Color
  , textShadowOffset :: WidthHeight
  , textShadowRadius :: Int
  , top :: Int
  , width :: Int
  , writingDirection :: WritingDirection
  , zIndex :: Int
  )

foreign import createStyle_ :: forall props. props -> Style

createStyle :: forall o. Optional o StyleProps => { | o } -> Style
createStyle = createStyle_

style :: Style -> Props
style = unsafeMkProps"style"

styles :: Array Style -> Props
styles = unsafeMkProps "style"

--------- Styles ---------------

newtype AlignItem = AlignItem String

alignItems :: { flexStart :: AlignItem
, flexEnd :: AlignItem
, center :: AlignItem
, stretch :: AlignItem
}
alignItems =
  { flexStart : AlignItem "flex-start"
  , flexEnd : AlignItem "flex-end"
  , center : AlignItem "center"
  , stretch : AlignItem "stretch"
  }

newtype AlignSelf = AlignSelf String

alignSelf :: { auto :: AlignSelf
, flexStart :: AlignSelf
, flexEnd :: AlignSelf
, center :: AlignSelf
, stretch :: AlignSelf
}
alignSelf =
  { auto : AlignSelf "auto"
  , flexStart : AlignSelf "flex-start"
  , flexEnd : AlignSelf "flex-end"
  , center : AlignSelf "center"
  , stretch : AlignSelf "stretch"
  }

newtype FontFamily = FontFamily String

newtype Visibility = Visibility String

hidden :: Visibility
hidden = Visibility "hidden"

visible :: Visibility
visible = Visibility "visible"

-- B

newtype BorderStyle = BorderStyle String

borderStyle :: { solid :: BorderStyle
, dotted :: BorderStyle
, dashed :: BorderStyle
}
borderStyle =
  { solid : BorderStyle "solid"
  , dotted : BorderStyle "dotted"
  , dashed : BorderStyle "dashed"
  }

newtype FlexDirection = FlexDirection String

flexDirection :: { row :: FlexDirection
, column :: FlexDirection
, columnReverse :: FlexDirection
, rowReverse :: FlexDirection
}
flexDirection =
  { row : FlexDirection "row"
  , column : FlexDirection "column"
  , columnReverse : FlexDirection "column-reverse"
  , rowReverse : FlexDirection "row-reverse"
  }


newtype Wrap = Wrap String

wrap :: Wrap
wrap = Wrap "wrap"

nowrap :: Wrap
nowrap = Wrap "nowrap"

data FontStyle = FontStyle String

normal :: FontStyle
normal = FontStyle "normal"

italic :: FontStyle
italic = FontStyle "italic"

-- fontVariant :: Array FontVariant -> StyleProp
-- fontVariant ary = unsafeMkStyleProp "fontVariant" (map fontVariantNum ary)

-- fontVariantNum :: FontVariant -> String
-- fontVariantNum SmallCap        = "small-caps"
-- fontVariantNum OldStyleNum     = "oldstyle-nums"
-- fontVariantNum LiningNum       = "lining-nums"
-- fontVariantNum TabularNum      = "tabular-nums"
-- fontVariantNum ProportionalNum = "proportional-nums"

newtype FontWeight = FontWeight String

fontWeight :: { normal :: FontWeight
, bold :: FontWeight
, w100 :: FontWeight
, w200 :: FontWeight
, w300 :: FontWeight
, w400 :: FontWeight
, w500 :: FontWeight
, w600 :: FontWeight
, w700 :: FontWeight
, w800 :: FontWeight
, w900 :: FontWeight
}
fontWeight =
  { normal : FontWeight "normal"
  , bold : FontWeight "bold"
  , w100 : FontWeight "100"
  , w200 : FontWeight "200"
  , w300 : FontWeight "300"
  , w400 : FontWeight "400"
  , w500 : FontWeight "500"
  , w600 : FontWeight "600"
  , w700 : FontWeight "700"
  , w800 : FontWeight "800"
  , w900 : FontWeight "900"
  }

newtype JustifyContent = JustifyContent String

justifyContent :: { flexStart :: JustifyContent
, flexEnd :: JustifyContent
, center :: JustifyContent
, spaceBetween :: JustifyContent
, spaceAround :: JustifyContent
}
justifyContent =
  { flexStart : JustifyContent "flex-start"
  , flexEnd : JustifyContent "flex-end"
  , center : JustifyContent "center"
  , spaceBetween : JustifyContent "space-between"
  , spaceAround : JustifyContent "space-around"
  }

newtype Position = Position String

absolute :: Position
absolute = Position "absolute"

relative :: Position
relative = Position "relative"

newtype WidthHeight = WidthHeight {width :: Int, height :: Int}

-- T
newtype TextAlign = TextAlign String

textAlign :: { auto :: TextAlign
, left :: TextAlign
, right :: TextAlign
, center :: TextAlign
, justify :: TextAlign
}
textAlign =
  { auto : TextAlign "auto"
  , left : TextAlign "left"
  , right : TextAlign "right"
  , center : TextAlign "center"
  , justify : TextAlign "justify"
  }

newtype TextAlignVertical = TextAlignVertical String

textAlignVertical :: { auto :: TextAlignVertical
, top :: TextAlignVertical
, bottom :: TextAlignVertical
, center :: TextAlignVertical
}
textAlignVertical =
  { auto : TextAlignVertical "auto"
  , top : TextAlignVertical "top"
  , bottom : TextAlignVertical "bottom"
  , center : TextAlignVertical "center"
  }

newtype TextDecorationLine = TextDecorationLine String

textDecorationLine :: { none :: TextDecorationLine
, underline :: TextDecorationLine
, lineThrough :: TextDecorationLine
, underlineLineThrough :: TextDecorationLine
}
textDecorationLine =
  { none : TextDecorationLine "none"
  , underline : TextDecorationLine "underline"
  , lineThrough : TextDecorationLine "line-through"
  , underlineLineThrough : TextDecorationLine "underline line-through"
  }

newtype TextDecorationStyle = TextDecorationStyle String

textDecorationStyle :: { solid :: TextDecorationStyle
, double :: TextDecorationStyle
, dotted :: TextDecorationStyle
, dashed :: TextDecorationStyle
}
textDecorationStyle =
  { solid : TextDecorationStyle "solid"
  , double : TextDecorationStyle "double"
  , dotted : TextDecorationStyle "dotted"
  , dashed : TextDecorationStyle "dashed"
  }

newtype WritingDirection = WritingDirection String

writingDirection :: { auto :: WritingDirection
, ltr :: WritingDirection
, rtl :: WritingDirection
}
writingDirection =
  { auto : WritingDirection "auto"
  , ltr : WritingDirection "ltr"
  , rtl : WritingDirection "rtl"

  }

-- TODO: Transform StyleProp
-- TODO: resizeMode

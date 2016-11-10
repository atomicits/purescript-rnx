module RNX.Styles where

import RNX
import RNX.Components
import RNX.Events
import RNX.Props
import RNX.Color
import Prelude

foreign import data StyleSheet :: *
foreign import data StyleProp :: *

type StyleId = Int
data Style = Style String (Array StyleProp)
type StyleSheet' = Array {name:: String, styles:: Array StyleProp}

foreign import _createStyleSheet :: StyleSheet' -> StyleSheet

createStyleSheet :: Array Style -> StyleSheet
createStyleSheet s =
  _createStyleSheet $ map getStyle s
  where
    getStyle (Style name styleProps) = {name: name, styles: styleProps}


-- TODO: make this type safe!
foreign import getStyleId :: StyleSheet -> String -> StyleId

foreign import unsafeMkStyleProp :: forall val. String -> val -> StyleProp

style :: forall action. StyleId -> Prop action
style = unsafeMkProps "style"

styles :: forall action. Array StyleId -> Prop action
styles = unsafeMkProps "style"

--------- Styles ---------------

data Visibility = Visible | Hidden

-- A

data AlignItems
  = AlignItemsFlexStart
  | AlignItemsFlexEnd
  | AlignItemsCenter
  | AlignItemsStretch

alignItems :: AlignItems -> StyleProp
alignItems AlignItemsFlexStart = unsafeMkStyleProp "alignItems" "flex-start"
alignItems AlignItemsFlexEnd   = unsafeMkStyleProp "alignItems" "flex-end"
alignItems AlignItemsCenter    = unsafeMkStyleProp "alignItems" "center"
alignItems AlignItemsStretch   = unsafeMkStyleProp "alignItems" "stretch"

data AlignSelf
  = AlignSelfAuto
  | AlignSelfFlexStart
  | AlignSelfFlexEnd
  | AlignSelfCenter
  | AlignSelfStretch

alignSelf :: AlignSelf -> StyleProp
alignSelf AlignSelfAuto      = unsafeMkStyleProp "alignSelf" "auto"
alignSelf AlignSelfFlexStart = unsafeMkStyleProp "alignSelf" "flex-start"
alignSelf AlignSelfFlexEnd   = unsafeMkStyleProp "alignSelf" "flex-end"
alignSelf AlignSelfCenter    = unsafeMkStyleProp "alignSelf" "center"
alignSelf AlignSelfStretch   = unsafeMkStyleProp "alignSelf" "stretch"

-- B

backfaceVisibility :: Visibility -> StyleProp
backfaceVisibility Visible = unsafeMkStyleProp "backfaceVisibility" "visible"
backfaceVisibility Hidden  = unsafeMkStyleProp "backfaceVisibility" "hidden"


backgroundVisibility :: Visibility -> StyleProp
backgroundVisibility Visible = unsafeMkStyleProp "backgroundVisibility" "visible"
backgroundVisibility Hidden  = unsafeMkStyleProp "backgroundVisibility" "hidden"

borderBottomColor :: Color -> StyleProp
borderBottomColor c = unsafeMkStyleProp "borderBottomColor" (show c)

borderBottomRightRadius :: Int -> StyleProp
borderBottomRightRadius = unsafeMkStyleProp "borderBottomRightRadius"

borderBottomWidth :: Int -> StyleProp
borderBottomWidth = unsafeMkStyleProp "borderBottomWidth"

borderColor :: Color -> StyleProp
borderColor c = unsafeMkStyleProp "borderColor" (show c)

borderLeftColor :: Color -> StyleProp
borderLeftColor c = unsafeMkStyleProp "borderLeftColor" (show c)

borderLeftWidth :: Int -> StyleProp
borderLeftWidth = unsafeMkStyleProp "borderLeftWidth"

borderRadius :: Int -> StyleProp
borderRadius = unsafeMkStyleProp "borderRadius"

borderRightColor :: Color -> StyleProp
borderRightColor c = unsafeMkStyleProp "borderRightColor" (show c)

borderRightWidth :: Int -> StyleProp
borderRightWidth = unsafeMkStyleProp "borderRightWidth"

data BorderStyle
  = BorderSolid
  | BorderDotted
  | BorderDashed

borderStyle :: BorderStyle -> StyleProp
borderStyle BorderSolid  = unsafeMkStyleProp "borderStyle" "solid"
borderStyle BorderDotted = unsafeMkStyleProp "borderStyle" "dotted"
borderStyle BorderDashed = unsafeMkStyleProp "borderStyle" "dashed"

borderTopLeftRadius :: Int -> StyleProp
borderTopLeftRadius = unsafeMkStyleProp "borderTopLeftRadius"

borderTopRightRadius :: Int -> StyleProp
borderTopRightRadius = unsafeMkStyleProp "borderTopRightRadius"

borderTopWidth :: Int -> StyleProp
borderTopWidth = unsafeMkStyleProp "borderTopWidth"

borderWidth :: Int -> StyleProp
borderWidth = unsafeMkStyleProp "borderWidth"

bottom :: Int -> StyleProp
bottom = unsafeMkStyleProp "bottom"

-- E

elevation :: Int -> StyleProp
elevation = unsafeMkStyleProp "elevation"

-- F

flex :: Int -> StyleProp
flex = unsafeMkStyleProp "flex"

flexBasis :: Int -> StyleProp
flexBasis = unsafeMkStyleProp "flexBasis"

data FlexDirection
  = Row
  | Column
  | RowReverse
  | ColumnReverse

flexDirection :: FlexDirection -> StyleProp
flexDirection Row           = unsafeMkStyleProp "flexDirection" "row"
flexDirection Column        = unsafeMkStyleProp "flexDirection" "column"
flexDirection ColumnReverse = unsafeMkStyleProp "flexDirection" "column-reverse"
flexDirection RowReverse    = unsafeMkStyleProp "flexDirection" "row-reverse"

flexGrow :: Int -> StyleProp
flexGrow = unsafeMkStyleProp "flexGrow"

flexShrink :: Int -> StyleProp
flexShrink = unsafeMkStyleProp "flexShrink"

data WrapProp = Wrap | NoWrap

flexWrap :: WrapProp -> StyleProp
flexWrap Wrap   = unsafeMkStyleProp "flexWrap" "wrap"
flexWrap NoWrap = unsafeMkStyleProp "flexWrap" "nowrap"

fontFamily :: String -> StyleProp
fontFamily = unsafeMkStyleProp "fontFamily"

fontSize :: Int -> StyleProp
fontSize = unsafeMkStyleProp "fontSize"

data FontStyle = FontNormal | FontItalic

fontStyle :: FontStyle -> StyleProp
fontStyle FontNormal = unsafeMkStyleProp "fontStyle" "normal"
fontStyle FontItalic = unsafeMkStyleProp "fontStyle" "italic"

data FontVariant
  = SmallCap
  | OldStyleNum
  | LiningNum
  | TabularNum
  | ProportionalNum

fontVariant :: Array FontVariant -> StyleProp
fontVariant ary = unsafeMkStyleProp "fontVariant" (map fontVariantNum ary)

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

fontWeight :: FontWeight -> StyleProp
fontWeight WeightNormal = unsafeMkStyleProp "fontWeight" "normal"
fontWeight WeightBold   = unsafeMkStyleProp "fontWeight" "bold"
fontWeight Weight100    = unsafeMkStyleProp "fontWeight" "100"
fontWeight Weight200    = unsafeMkStyleProp "fontWeight" "200"
fontWeight Weight300    = unsafeMkStyleProp "fontWeight" "300"
fontWeight Weight400    = unsafeMkStyleProp "fontWeight" "400"
fontWeight Weight500    = unsafeMkStyleProp "fontWeight" "500"
fontWeight Weight600    = unsafeMkStyleProp "fontWeight" "600"
fontWeight Weight700    = unsafeMkStyleProp "fontWeight" "700"
fontWeight Weight800    = unsafeMkStyleProp "fontWeight" "800"
fontWeight Weight900    = unsafeMkStyleProp "fontWeight" "900"

-- H

height :: Int -> StyleProp
height = unsafeMkStyleProp "height"

--J

data JustifyContent
  = JustifyContentFlexStart
  | JustifyContentFlexEnd
  | JustifyContentCenter
  | JustifyContentSpaceBetween
  | JustifyContentSpaceAround

justifyContent :: JustifyContent -> StyleProp
justifyContent JustifyContentFlexStart    = unsafeMkStyleProp "justifyContent" "flex-start"
justifyContent JustifyContentFlexEnd      = unsafeMkStyleProp "justifyContent" "flex-end"
justifyContent JustifyContentCenter       = unsafeMkStyleProp "justifyContent" "center"
justifyContent JustifyContentSpaceBetween = unsafeMkStyleProp "justifyContent" "space-between"
justifyContent JustifyContentSpaceAround  = unsafeMkStyleProp "justifyContent" "space-around"

-- L

left :: Int -> StyleProp
left = unsafeMkStyleProp "left"

letterSpacing :: Int -> StyleProp
letterSpacing = unsafeMkStyleProp "letterSpacing"

lineHeight :: Int -> StyleProp
lineHeight = unsafeMkStyleProp "lineHeight"

-- M

margin :: Int -> StyleProp
margin = unsafeMkStyleProp "margin"

marginBottom :: Int -> StyleProp
marginBottom = unsafeMkStyleProp "marginBottom"

marginHorizontal :: Int -> StyleProp
marginHorizontal = unsafeMkStyleProp "marginHorizontal"

marginLeft :: Int -> StyleProp
marginLeft = unsafeMkStyleProp "marginLeft"

marginRight :: Int -> StyleProp
marginRight = unsafeMkStyleProp "marginRight"

marginTop :: Int -> StyleProp
marginTop = unsafeMkStyleProp "marginTop"

marginVertical :: Int -> StyleProp
marginVertical = unsafeMkStyleProp "marginVertical"

maxHeight :: Int -> StyleProp
maxHeight = unsafeMkStyleProp "maxHeight"

maxWidth :: Int -> StyleProp
maxWidth = unsafeMkStyleProp "maxWidth"

minHeight :: Int -> StyleProp
minHeight = unsafeMkStyleProp "minHeight"

minWidth :: Int -> StyleProp
minWidth = unsafeMkStyleProp "minWidth"

-- O

opacity :: Int -> StyleProp
opacity = unsafeMkStyleProp "opacity"

overflow :: Visibility -> StyleProp
overflow Visible = unsafeMkStyleProp "overflow" "visible"
overflow Hidden  = unsafeMkStyleProp "overflow" "hidden"

overlayColor :: String -> StyleProp
overlayColor = unsafeMkStyleProp "overlayColor"

-- P

padding :: Int -> StyleProp
padding = unsafeMkStyleProp "padding"

paddingBottom :: Int -> StyleProp
paddingBottom = unsafeMkStyleProp "paddingBottom"

paddingHorizontal :: Int -> StyleProp
paddingHorizontal = unsafeMkStyleProp "paddingHorizontal"

paddingLeft :: Int -> StyleProp
paddingLeft = unsafeMkStyleProp "paddingLeft"

paddingRight :: Int -> StyleProp
paddingRight = unsafeMkStyleProp "paddingRight"

paddingTop :: Int -> StyleProp
paddingTop = unsafeMkStyleProp "paddingTop"

paddingVertical :: Int -> StyleProp
paddingVertical = unsafeMkStyleProp "paddingVertical"

data Position = Absolute | Relative

position :: Position -> StyleProp
position Absolute = unsafeMkStyleProp "position" "absolute"
position Relative = unsafeMkStyleProp "position" "relative"

-- R

right :: Int -> StyleProp
right = unsafeMkStyleProp "right"

-- S

shadowColor :: Color -> StyleProp
shadowColor c = unsafeMkStyleProp "shadowColor" (show c)

shadowOffset :: {width :: Int, height :: Int} -> StyleProp
shadowOffset = unsafeMkStyleProp "shadowOffset"

shadowOpacity :: Int -> StyleProp
shadowOpacity = unsafeMkStyleProp "shadowOpacity"

shadowRadius :: Int -> StyleProp
shadowRadius = unsafeMkStyleProp "shadowRadius"

-- T

data TextAlign
  = TextAlignAuto
  | TextAlignLeft
  | TextAlignRight
  | TextAlignCenter
  | TextAlignJustify

textAlign :: TextAlign -> StyleProp
textAlign TextAlignAuto    = unsafeMkStyleProp "textAlign" "auto"
textAlign TextAlignLeft    = unsafeMkStyleProp "textAlign" "left"
textAlign TextAlignRight   = unsafeMkStyleProp "textAlign" "right"
textAlign TextAlignCenter  = unsafeMkStyleProp "textAlign" "center"
textAlign TextAlignJustify = unsafeMkStyleProp "textAlign" "justify"

data TextAlignVertical
  = TextAlignVerticalAuto
  | TextAlignVerticalTop
  | TextAlignVerticalBottom
  | TextAlignVerticalCenter

textAlignVertical :: TextAlignVertical -> StyleProp
textAlignVertical TextAlignVerticalAuto   = unsafeMkStyleProp "textAlignVertical" "auto"
textAlignVertical TextAlignVerticalTop    = unsafeMkStyleProp "textAlignVertical" "top"
textAlignVertical TextAlignVerticalBottom = unsafeMkStyleProp "textAlignVertical" "bottom"
textAlignVertical TextAlignVerticalCenter = unsafeMkStyleProp "textAlignVertical" "center"

textDecorationColor :: Color -> StyleProp
textDecorationColor c = unsafeMkStyleProp "textDecorationColor" (show c)

data TextDecorationLine
  = None
  | Underline
  | LineThrough
  | UnderlineLineThrough

textDecorationLine :: TextDecorationLine -> StyleProp
textDecorationLine None                 = unsafeMkStyleProp "textDecorationLine" "none"
textDecorationLine Underline            = unsafeMkStyleProp "textDecorationLine" "underline"
textDecorationLine LineThrough          = unsafeMkStyleProp "textDecorationLine" "line-through"
textDecorationLine UnderlineLineThrough = unsafeMkStyleProp "textDecorationLine" "underline line-through"

data TextDecorationStyle
  = TextSolid
  | TextDouble
  | TextDotted
  | TextDashed

textDecorationStyle :: TextDecorationStyle -> StyleProp
textDecorationStyle TextSolid  = unsafeMkStyleProp "textDecorationStyle" "solid"
textDecorationStyle TextDouble = unsafeMkStyleProp "textDecorationStyle" "double"
textDecorationStyle TextDotted = unsafeMkStyleProp "textDecorationStyle" "dotted"
textDecorationStyle TextDashed = unsafeMkStyleProp "textDecorationStyle" "dashed"

textShadowColor :: Color -> StyleProp
textShadowColor c = unsafeMkStyleProp "textShadowColor" (show c)

textShadowOffset :: {width :: Int, height :: Int} -> StyleProp
textShadowOffset = unsafeMkStyleProp "textShadowOffset"

textShadowRadius :: Int -> StyleProp
textShadowRadius = unsafeMkStyleProp "textShadowRadius"

top :: Int -> StyleProp
top = unsafeMkStyleProp "top"

-- W

width :: Int -> StyleProp
width = unsafeMkStyleProp "width"

data WritingDirection
  = WritingDirectionAuto
  | WritingDirectionLtr
  | WritingDirectionRtl

writingDirection :: WritingDirection -> StyleProp
writingDirection WritingDirectionAuto = unsafeMkStyleProp "writingDirection" "auto"
writingDirection WritingDirectionLtr  = unsafeMkStyleProp "writingDirection" "ltr"
writingDirection WritingDirectionRtl  = unsafeMkStyleProp "writingDirection" "rtl"

-- Z

zIndex :: Int -> StyleProp
zIndex = unsafeMkStyleProp "zIndex"

-- TODO: Transform Props
-- TODO: resizeMode

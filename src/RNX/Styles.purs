module RNX.Styles where

import Prelude hiding (bottom, top)
import RNX
import RNX.Components
import RNX.Events
import RNX.Props
import RNX.Color

foreign import data StyleSheet :: *
foreign import data StyleProp :: *

type StyleId = Int
data Style = Style String (Array StyleProp)

foreign import createStyleSheet :: Array Style -> StyleSheet
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

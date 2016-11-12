module RNX.Color where

import Prelude
import Data.String

data Color
  = RGBA Int Int Int Number
  | HSLA Int Int Int Number
  | Str String
  | Transparent
  | AliceBlue
  | AntiqueWhite
  | Aqua
  | AquaMarine
  | Azure
  | Beige
  | Bisque
  | Black
  | BlanchedAlmond
  | Blue
  | BlueViolet
  | Brown
  | BurlyWood
  | CadetBlue
  | Chartreuse
  | Chocolate
  | Coral
  | CornFlowerBlue
  | CornSilk
  | Crimson
  | Cyan
  | DarkBlue
  | DarkCyan
  | DarkGoldenRod
  | DarkGray
  | DarkGreen
  | DarkGrey
  | DarkKhaki
  | DarkMagenta
  | DarkOlivegreen
  | DarkOrange
  | DarkOrchid
  | DarkRed
  | DarkSalmon
  | DarkSeaGreen
  | DarkSlateBlue
  | DarkSlateGray
  | DarkSlateGrey
  | DarkTurquoise
  | DarkViolet
  | DeepPink
  | DeepSkyBlue
  | DimGray
  | DimGrey
  | DodgerBlue
  | FireBrick
  | FloralWhite
  | ForestGreen
  | Fuchsia
  | GainsBoro
  | GhostWhite
  | Gold
  | GoldenRod
  | Gray
  | Green
  | GreenYellow
  | Grey
  | HoneyDew
  | HotPink
  | IndianRed
  | Indigo
  | Ivory
  | Khaki
  | Lavender
  | LavenderBlush
  | LawnGreen
  | LemonChiffon
  | LightBlue
  | LightCoral
  | LightCyan
  | LightGoldenRodYellow
  | LightGray
  | LightGreen
  | LightGrey
  | LightPink
  | LightSalmon
  | LightSeaGreen
  | LightSkyBlue
  | LightSlateGray
  | LightSlateGrey
  | LightSteelBlue
  | LightYellow
  | Lime
  | LimeGreen
  | Linen
  | Magenta
  | Maroon
  | MediumAquaMarine
  | MediumBlue
  | MediumOrchid
  | MediumPurple
  | MediumSeaGreen
  | MediumSlateBlue
  | MediumSpringGreen
  | MediumTurquoise
  | MediumVioletRed
  | MidNightBlue
  | MintCream
  | MistyRose
  | Moccasin
  | NavajoWhite
  | Navy
  | OldLace
  | Olive
  | OlivedRab
  | Orange
  | OrangeRed
  | Orchid
  | PaleGoldenRod
  | PaleGreen
  | PaleTurquoise
  | PaleVioletRed
  | PapayaWhip
  | PeachPuff
  | Peru
  | Pink
  | Plum
  | PowderBlue
  | Purple
  | RebeccaPurple
  | Red
  | RosyBrown
  | RoyalBlue
  | SaddleBrown
  | Salmon
  | SandyBrown
  | SeaGreen
  | SeaShell
  | Sienna
  | Silver
  | SkyBlue
  | SlateBlue
  | SlateGray
  | SlateGrey
  | Snow
  | SpringGreen
  | SteelBlue
  | Tan
  | Teal
  | Thistle
  | Tomato
  | Turquoise
  | Violet
  | Wheat
  | White
  | WhiteSmoke
  | Yellow
  | YellowGreen

instance showColor :: Show Color where
  show (RGBA r g b a)       = "rgba(" <> show r <> ", " <> show g <> ", " <> show b <> ", "  <> show a <> ")"
  show (HSLA h s l a)       = "hsl(" <> show h <> "," <> show s  <> "% ," <> show l <> "%, " <> show a <> ")"
  show (Str str)            = str
  show Transparent          = "transparent"
  show AliceBlue            = "aliceblue"
  show AntiqueWhite         = "antiquewhite"
  show Aqua                 = "aqua"
  show AquaMarine           = "aquamarine"
  show Azure                = "azure"
  show Beige                = "beige"
  show Bisque               = "bisque"
  show Black                = "black"
  show BlanchedAlmond       = "blanchedalmond"
  show Blue                 = "blue"
  show BlueViolet           = "blueviolet"
  show Brown                = "brown"
  show BurlyWood            = "burlywood"
  show CadetBlue            = "cadetblue"
  show Chartreuse           = "chartreuse"
  show Chocolate            = "chocolate"
  show Coral                = "coral"
  show CornFlowerBlue       = "cornflowerblue"
  show CornSilk             = "cornsilk"
  show Crimson              = "crimson"
  show Cyan                 = "cyan"
  show DarkBlue             = "darkblue"
  show DarkCyan             = "darkcyan"
  show DarkGoldenRod        = "darkgoldenrod"
  show DarkGray             = "darkgray"
  show DarkGreen            = "darkgreen"
  show DarkGrey             = "darkgrey"
  show DarkKhaki            = "darkkhaki"
  show DarkMagenta          = "darkmagenta"
  show DarkOlivegreen       = "darkolivegreen"
  show DarkOrange           = "darkorange"
  show DarkOrchid           = "darkorchid"
  show DarkRed              = "darkred"
  show DarkSalmon           = "darksalmon"
  show DarkSeaGreen         = "darkseagreen"
  show DarkSlateBlue        = "darkslateblue"
  show DarkSlateGray        = "darkslategray"
  show DarkSlateGrey        = "darkslategrey"
  show DarkTurquoise        = "darkturquoise"
  show DarkViolet           = "darkviolet"
  show DeepPink             = "deeppink"
  show DeepSkyBlue          = "deepskyblue"
  show DimGray              = "dimgray"
  show DimGrey              = "dimgrey"
  show DodgerBlue           = "dodgerblue"
  show FireBrick            = "firebrick"
  show FloralWhite          = "floralwhite"
  show ForestGreen          = "forestgreen"
  show Fuchsia              = "fuchsia"
  show GainsBoro            = "gainsboro"
  show GhostWhite           = "ghostwhite"
  show Gold                 = "gold"
  show GoldenRod            = "goldenrod"
  show Gray                 = "gray"
  show Green                = "green"
  show GreenYellow          = "greenyellow"
  show Grey                 = "grey"
  show HoneyDew             = "honeydew"
  show HotPink              = "hotpink"
  show IndianRed            = "indianred"
  show Indigo               = "indigo"
  show Ivory                = "ivory"
  show Khaki                = "khaki"
  show Lavender             = "lavender"
  show LavenderBlush        = "lavenderblush"
  show LawnGreen            = "lawngreen"
  show LemonChiffon         = "lemonchiffon"
  show LightBlue            = "lightblue"
  show LightCoral           = "lightcoral"
  show LightCyan            = "lightcyan"
  show LightGoldenRodYellow = "lightgoldenrodyellow"
  show LightGray            = "lightgray"
  show LightGreen           = "lightgreen"
  show LightGrey            = "lightgrey"
  show LightPink            = "lightpink"
  show LightSalmon          = "lightsalmon"
  show LightSeaGreen        = "lightseagreen"
  show LightSkyBlue         = "lightskyblue"
  show LightSlateGray       = "lightslategray"
  show LightSlateGrey       = "lightslategrey"
  show LightSteelBlue       = "lightsteelblue"
  show LightYellow          = "lightyellow"
  show Lime                 = "lime"
  show LimeGreen            = "limegreen"
  show Linen                = "linen"
  show Magenta              = "magenta"
  show Maroon               = "maroon"
  show MediumAquaMarine     = "mediumaquamarine"
  show MediumBlue           = "mediumblue"
  show MediumOrchid         = "mediumorchid"
  show MediumPurple         = "mediumpurple"
  show MediumSeaGreen       = "mediumseagreen"
  show MediumSlateBlue      = "mediumslateblue"
  show MediumSpringGreen    = "mediumspringgreen"
  show MediumTurquoise      = "mediumturquoise"
  show MediumVioletRed      = "mediumvioletred"
  show MidNightBlue         = "midnightblue"
  show MintCream            = "mintcream"
  show MistyRose            = "mistyrose"
  show Moccasin             = "moccasin"
  show NavajoWhite          = "navajowhite"
  show Navy                 = "navy"
  show OldLace              = "oldlace"
  show Olive                = "olive"
  show OlivedRab            = "olivedrab"
  show Orange               = "orange"
  show OrangeRed            = "orangered"
  show Orchid               = "orchid"
  show PaleGoldenRod        = "palegoldenrod"
  show PaleGreen            = "palegreen"
  show PaleTurquoise        = "paleturquoise"
  show PaleVioletRed        = "palevioletred"
  show PapayaWhip           = "papayawhip"
  show PeachPuff            = "peachpuff"
  show Peru                 = "peru"
  show Pink                 = "pink"
  show Plum                 = "plum"
  show PowderBlue           = "powderblue"
  show Purple               = "purple"
  show RebeccaPurple        = "rebeccapurple"
  show Red                  = "red"
  show RosyBrown            = "rosybrown"
  show RoyalBlue            = "royalblue"
  show SaddleBrown          = "saddlebrown"
  show Salmon               = "salmon"
  show SandyBrown           = "sandybrown"
  show SeaGreen             = "seagreen"
  show SeaShell             = "seashell"
  show Sienna               = "sienna"
  show Silver               = "silver"
  show SkyBlue              = "skyblue"
  show SlateBlue            = "slateblue"
  show SlateGray            = "slategray"
  show SlateGrey            = "slategrey"
  show Snow                 = "snow"
  show SpringGreen          = "springgreen"
  show SteelBlue            = "steelblue"
  show Tan                  = "tan"
  show Teal                 = "teal"
  show Thistle              = "thistle"
  show Tomato               = "tomato"
  show Turquoise            = "turquoise"
  show Violet               = "violet"
  show Wheat                = "wheat"
  show White                = "white"
  show WhiteSmoke           = "whitesmoke"
  show Yellow               = "yellow"
  show YellowGreen          = "yellowgreen"

rgb :: Int -> Int -> Int -> Color
rgb r g b =
  rgba r g b 1.0

rgba :: Int -> Int -> Int -> Number -> Color
rgba r g b a =
    RGBA r g b a

hsl :: Int -> Int -> Int -> Color
hsl h s l  =
  hsla h s l 1.0

hsla :: Int -> Int -> Int -> Number -> Color
hsla h s l a  =
  HSLA h s l a

strColor :: String -> Color
strColor = Str

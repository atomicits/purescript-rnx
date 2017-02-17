module Picker where


import RNX.Styles
import View
import RNX.Events


type PickerProps a eff = ViewPropsEx eff (
    onValueChange :: EventHandler eff {itemValue :: a, itemPosition :: Int}
  , selectedValue :: a
) (
    enabled :: Boolean
  , mode :: PickerMode
  , prompt :: String
) (
  itemStyle :: Style
)




newtype PickerMode = PickerMode String

pickerMode :: {
    dialog :: PickerMode
  , dropdown :: PickerMode
}
pickerMode = {
    dialog: PickerMode "dialog"
  , dropdown: PickerMode "dropdown"
}

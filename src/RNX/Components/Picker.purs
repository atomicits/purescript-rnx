module Picker where

import RNX.Styles (Style)
import View (ViewPropsEx)
import RNX.Events (EventHandler)
import Prelude
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import RNX.ComponentClasses (pickerClass)


type PickerProps a eff = ViewPropsEx eff
  ( onValueChange :: EventHandler eff {itemValue :: a, itemPosition :: Int}
  , selectedValue :: a
  )
  ( enabled :: Boolean
  , mode :: PickerMode
  , prompt :: String
  )
  (itemStyle :: Style)


newtype PickerMode = PickerMode String


pickerMode ::
  { dialog :: PickerMode
  , dropdown :: PickerMode
  }
pickerMode =
  { dialog: PickerMode "dialog"
  , dropdown: PickerMode "dropdown"
  }


picker :: forall a eff. Prop (PickerProps a eff)  -> Array (ReactElement) -> ReactElement
picker = createElement pickerClass

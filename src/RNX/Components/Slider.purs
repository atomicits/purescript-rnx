module Slider where


import RNX.Events
import RNX.Color
import RNX.PropTypes
import RNX.ComponentClasses
import View
import React (ReactElement, createClass, createElement)

type SliderProps a eff = ViewPropsEx eff (
    disabled :: Boolean
  , maximumValue :: a
  , minimumValue :: a
  , onSlidingComplete :: EventHandler eff a
  , onValueChange :: EventHandler eff a
  , step :: a
  , value :: a
) () (
    maximumTrackImage :: ImageSource
  , maximumTrackTintColor :: Color
  , minimumTrackImage :: ImageSource
  , minimumTrackTintColor :: Color
  , thumbImage :: ImageSource
  , trackImage :: ImageSource
)


class SliderType a

instance intSlider :: SliderType Int
instance numberSlider :: SliderType Number



slider :: forall a eff. Prop (SliderProps a eff) -> Array ( ReactElement) -> ReactElement
slider  = createElement sliderClass

module ProgressViewIOS where

import RNX.ComponentClasses
import RNX.PropTypes (ImageSource, Prop)
import React (ReactElement)
import View (ViewPropsEx)

newtype ProgressViewStyle = ProgressViewStyle String

default' :: ProgressViewStyle
default' = ProgressViewStyle "default"

bar :: ProgressViewStyle
bar = ProgressViewStyle "bar"


type ProgressViewIOSProps eff = ViewPropsEx eff
  ()
  ()
  ( progress          :: Number
  , progressTintColor :: String
  , trackTintColor    :: String
  , progressViewStyle :: ProgressViewStyle
  , progressImage     :: ImageSource
  , trackImage        :: ImageSource
  )


progressViewIOS :: forall eff. Prop (ProgressViewIOSProps eff) -> ReactElement -> ReactElement
progressViewIOS = createElementOneChild progressViewIOSClass

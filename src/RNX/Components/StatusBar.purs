module StatusBar where

import RNX.Color (Color)
import RNX.ComponentClasses (createElementOneChild, statusBarClass)
import RNX.PropTypes (Prop)
import React (ReactElement)

newtype BarStyle = BarStyle String

defaultBarStyle :: BarStyle
defaultBarStyle = BarStyle "default"

lightContent :: BarStyle
lightContent = BarStyle "light-content'"

darkContent :: BarStyle
darkContent = BarStyle "dark-content"

newtype ShowHideTransition = ShowHideTransition String

fade :: ShowHideTransition
fade = ShowHideTransition "fade"

slide :: ShowHideTransition
slide = ShowHideTransition "slide"

type StatusBarProps =
  { animated :: Boolean
  , hidden :: Boolean
  , android :: Prop
                 { backgroundColor :: Color
                 , translucent :: Boolean
                 }
  , ios :: Prop
             { networkActivityIndicatorVisible :: Boolean
             , barStyle :: BarStyle
             , showHideTransition :: ShowHideTransition
             }
  }


statusBar :: Prop StatusBarProps -> ReactElement -> ReactElement
statusBar = createElementOneChild statusBarClass

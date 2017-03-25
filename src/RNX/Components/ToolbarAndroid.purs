module ToolbarAndroid where

import RNX.Color (Color)
import RNX.ComponentClasses (toolbarAndroidClass)
import RNX.PropTypes (ImageSource, Prop, UnKnownType)
import React (ReactElement, createElement)
import View (ViewPropsEx)


newtype Show = Show String

always :: Show
always = Show "always"

ifRoom :: Show
ifRoom = Show "ifRoom"

never :: Show
never = Show "never"

type Actions =
  { title :: String
  , icon :: ImageSource
  , showWithText :: Boolean
  , show :: Show
  }


type ToolbarAndroidProps eff  = ViewPropsEx eff
  ()
  ()
  ( contentInsetEnd :: Number
  , contentInsetStart :: Number
  , logo :: ImageSource
  , navIcon :: ImageSource
  , onActionSelected :: UnKnownType
  , onIconClicked :: UnKnownType
  , overflowIcon :: ImageSource
  , rtl :: Boolean
  , subtitle :: String
  , subtitleColor :: Color
  , testID :: String
  , title :: String
  , titleColor :: Color
  , actions :: Array Actions
  )


toolbarAndroid :: forall eff. Prop (ToolbarAndroidProps eff) -> Array ReactElement -> ReactElement
toolbarAndroid = createElement toolbarAndroidClass

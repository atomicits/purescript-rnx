module TabBarIOS where

import RNX.Color (Color)
import RNX.ComponentClasses
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import React (ReactElement, createElement)
import View (ViewPropsEx)

newtype ItemPositioning = ItemPositioning String

fill :: ItemPositioning
fill = ItemPositioning "fill"

center :: ItemPositioning
center = ItemPositioning "center"

auto :: ItemPositioning
auto = ItemPositioning "auto"


type TabBarIOSProps eff = ViewPropsEx eff
  ()
  ()
  ( barTintColor :: Color
  , tintColor :: Color
  , unselectedItemTintColor :: Color
  , unselectedTintColor :: Color
  , translucent :: Boolean
  , style :: Style
  , itemPositioning :: ItemPositioning
  )


tabBarIOS :: forall eff. Prop (TabBarIOSProps eff) -> Array ReactElement -> ReactElement
tabBarIOS = createElement tabBarIOSClass

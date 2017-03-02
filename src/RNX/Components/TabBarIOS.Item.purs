module TabBarIOS.Item where

import RNX.Color (Color)
import RNX.ComponentClasses (createElementOneChild, tabBarIOSItemClass)
import RNX.PropTypes (ImageSource, Prop)
import RNX.Styles (Style)
import React (ReactElement)
import View (ViewPropsEx)

newtype SystemIcon = SystemIcon String

bookmarks :: SystemIcon
bookmarks = SystemIcon "bookmarks"

contacts :: SystemIcon
contacts = SystemIcon "contacts"

downloads :: SystemIcon
downloads = SystemIcon "downloads"

favorites :: SystemIcon
favorites = SystemIcon "favorites"

featured :: SystemIcon
featured = SystemIcon "featured"

history :: SystemIcon
history = SystemIcon "history"

more :: SystemIcon
more = SystemIcon "more"

mostRecent :: SystemIcon
mostRecent = SystemIcon "most-recent"

mostViewed :: SystemIcon
mostViewed = SystemIcon "most-viewed"

recents :: SystemIcon
recents = SystemIcon "recents"

search :: SystemIcon
search = SystemIcon "search"

topRated :: SystemIcon
topRated = SystemIcon "top-rated"

data StringOrNumber = Number | String

type TabBarIOSItemProps eff = ViewPropsEx eff
  ()
  ()
  ( badgeColor :: Color
  , badge :: StringOrNumber
  , icon :: ImageSource
  , renderAsOriginal :: Boolean
  , selected :: Boolean
  , selectedIcon :: ImageSource
  , style :: Style
  , title :: String
  , isTVSelectable :: Boolean
  , systemIcon :: SystemIcon
  )


tabBarIOSItem :: forall eff. Prop (TabBarIOSItemProps eff) -> ReactElement -> ReactElement
tabBarIOSItem = createElementOneChild tabBarIOSItemClass

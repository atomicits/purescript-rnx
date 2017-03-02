module DrawerLayoutAndroid where

import RNX.Color (Color)
import RNX.ComponentClasses (drawerLayoutAndroidClass)
import RNX.PropTypes (Prop, UnKnownType)
import React (ReactElement, createElement)
import View (ViewPropsEx)

foreign import dPLeft :: forall a. a
foreign import dPRight :: forall a. a

newtype DrawerLockMode = DrawerLockMode String

unlocked :: DrawerLockMode
unlocked = DrawerLockMode "unlocked"

lockedClosed :: DrawerLockMode
lockedClosed = DrawerLockMode "locked-closed"

lockedOpen :: DrawerLockMode
lockedOpen = DrawerLockMode "locked-open"

newtype DrawerPosition = DrawerPosition String

dpLeft :: DrawerPosition
dpLeft = DrawerPosition dPLeft

dpRight :: DrawerPosition
dpRight = DrawerPosition dPRight

newtype KeyboardDismissMode = KeyboardDismissMode String

none :: KeyboardDismissMode
none = KeyboardDismissMode "none"

onDrag :: KeyboardDismissMode
onDrag = KeyboardDismissMode "on-drag"

type DrawerLayoutAndroidProps eff = ViewPropsEx eff
  ()
  ( drawerBackgroundColor :: Color
  , drawerWidth :: Number
  , statusBarBackgroundColor :: Color
  , keyboardDismissMode :: KeyboardDismissMode
  , drawerLockMode :: DrawerLockMode
  , drawerPosition :: DrawerPosition
  , renderNavigationView :: UnKnownType
  , onDrawerStateChanged :: UnKnownType
  , onDrawerSlide :: UnKnownType
  , onDrawerOpen :: UnKnownType
  , onDrawerClose :: UnKnownType
  )
  ()


drawerLayoutAndroid :: forall eff. Prop (DrawerLayoutAndroidProps eff) -> Array ReactElement -> ReactElement
drawerLayoutAndroid = createElement drawerLayoutAndroidClass

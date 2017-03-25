module SnapshotViewIOS where

import RNX.ComponentClasses (createElementOneChild, snapshotViewIOSClass)
import RNX.PropTypes (Prop, UnKnownType)
import React (ReactElement)
import View (ViewPropsEx)

type SnapshotViewIOSProps eff = ViewPropsEx eff
  ()
  ()
  ( testIdentifier :: String
  , onSnapshotReady :: UnKnownType
  )


snapshotViewIOS :: forall eff. Prop (SnapshotViewIOSProps eff) -> ReactElement -> ReactElement
snapshotViewIOS = createElementOneChild snapshotViewIOSClass

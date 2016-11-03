module RNX.PropsTypes where

data AccessibilityComponentTypeProp
  = ACTPNone
  | Button
  | RadiobuttonChecked
  | RadiobuttonUnchecked


data AccessibilityLiveRegionProp
  = ALRPNone
  | Polite
  | Assertive

data ImportantForAccessibilityProp
  = IAPAuto
  | Yes
  | No
  | NoHideDescenDants

data AccessibilityTraitsProp
  = ATPNone
  | ATPButton
  | Link
  | Header
  | Search
  | Image
  | Selected
  | Plays
  | Key
  | Text
  | Summary
  | Disabled
  | FrequentUpdates
  | StartsMedia
  | Adjustable
  | AllowsDirectInteraction
  | PageTurn

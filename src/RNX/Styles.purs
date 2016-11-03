module RNX.Styles where

import Prelude hiding (bottom, top)
import RNX
import RNX.Components
import RNX.Events
import RNX.Props


foreign import data StyleSheet :: *
foreign import data StyleProp :: *

type StyleId = Int
data Style = Style String (Array StyleProp)

foreign import createStyleSheet :: Array Style -> StyleSheet
foreign import getStyleId :: StyleSheet -> String -> StyleId
foreign import unsafeMkStyleProp :: forall val. String -> val -> StyleProp

style :: forall action. StyleId -> Prop action
style = unsafeMkProps "style"

styles :: forall action. Array StyleId -> Prop action
styles = unsafeMkProps "style"


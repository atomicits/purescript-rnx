module Modal where

import RNX.ComponentClasses (modalClass)
import RNX.Events (UnitEventHandler)
import RNX.PropTypes (Prop, UnKnownType)
import React (ReactElement, createElement)

type ModelProps eff =
  { animationType :: AnimationType
  , transparent   :: Boolean
  , visible       :: Boolean
  , onShow        :: UnitEventHandler eff
  , android       :: Prop
                       { hardwareAccelerated :: Boolean
                       , onRequestClose      :: UnKnownType
                       }
  , ios           :: Prop
                       { onOrientationChange   :: UnKnownType
                       , supportedOrientations :: SupportedOrientations
                       }
  }

newtype AnimationType = AnimationType String

none :: AnimationType
none = AnimationType "none"

slide :: AnimationType
slide = AnimationType "slide"

fade :: AnimationType
fade = AnimationType "fade"

newtype SupportedOrientations = SupportedOrientations String

portrait :: SupportedOrientations
portrait = SupportedOrientations "portrait"

portraitUpsideDown :: SupportedOrientations
portraitUpsideDown = SupportedOrientations "portrait-upside-down"

landscape :: SupportedOrientations
landscape = SupportedOrientations "landscape"

landscapeLeft :: SupportedOrientations
landscapeLeft = SupportedOrientations "landscape-left"

landscapeRight :: SupportedOrientations
landscapeRight = SupportedOrientations "landscape-right"


modal :: forall eff. Prop (ModelProps eff) -> Array ReactElement -> ReactElement
modal = createElement modalClass

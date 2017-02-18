module NavigatorIOS where

import RNX.Color (Color)
import React (ReactElement, ReactState, ReactThis, ReadWrite)
import RNX.Styles (Style)
import RNX.PropTypes (ImageSource, RefType)
import RNX.Events (UnitEventHandler)
import Control.Monad.Eff (Eff)
import Prelude
import Unsafe.Coerce (unsafeCoerce)


newtype NavigatorIOS = NavigatorIOS (forall props state. ReactThis props state)


type RouteDefaults r =
  { barTintColor :: Color
  , navigationBarHidden :: Boolean
  , shadowHidden :: Boolean
  , tintColor :: Color
  , titleTextColor :: Color
  , translucent :: Boolean
  | r
  }


type Route eff props = RouteDefaults
  ( component :: { navigator :: NavigatorIOS | props } -> ReactElement
  , title :: String
  , titleImage :: ImageSource
  , passProps :: {|props}
  , backButtonIcon :: ImageSource
  , backButtonTitle :: String
  , leftButtonIcon :: ImageSource
  , leftButtonTitle :: String
  , leftButtonSystemIcon :: String -- Object.keys(SystemIcons)
  , onLeftButtonPress :: UnitEventHandler eff
  , rightButtonIcon :: ImageSource
  , rightButtonTitle :: String
  , rightButtonSystemIcon :: String -- Object.keys(SystemIcons)
  , onRightButtonPress :: UnitEventHandler eff
  , wrapperStyle :: Style
  )


type NavigatorIOSProps = RouteDefaults
  ( ref :: RefType NavigatorIOS
  , initialRoute :: forall eff props. Route eff props
  , interactivePopGestureEnabled :: Boolean
  , itemWrapperStyle :: Style
  , style :: Style
  )


mkRoute :: forall props eff. {title :: String, component:: { navigator :: NavigatorIOS | props } -> ReactElement, passProps :: {|props}} -> Route eff props
mkRoute = unsafeCoerce


-- need to discuss about  unsafeApplyProps
-- mkRoute' :: forall props eff. {title :: String, component:: { navigator :: NavigatorIOS | props } -> ReactElement, passProps :: {|props}} -> Prop (Route eff props) -> Route eff props
-- mkRoute' {title,component,passProps} p = unsafeApplyProps {title,component,passProps} p


foreign import push :: forall eff props. NavigatorIOS -> Route eff props -> Eff (state::ReactState ReadWrite|eff) Unit
foreign import pop :: forall eff. NavigatorIOS -> Eff (state::ReactState ReadWrite|eff) Unit

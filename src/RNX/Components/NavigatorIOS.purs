module NavigatorIOS where


import RNX.Color
import React
import RNX.Styles
import RNX.ComponentClasses
import RNX.PropTypes
import RNX.Events
import Control.Monad.Eff (Eff)
import Prelude

newtype NavigatorIOS = NavigatorIOS (forall props state. ReactThis props state)

type RouteDefaults r = {
    barTintColor :: Color
  , navigationBarHidden :: Boolean
  , shadowHidden :: Boolean
  , tintColor :: Color
  , titleTextColor :: Color
  , translucent :: Boolean
  | r
}


type Route eff props = RouteDefaults (
    component :: { navigator :: NavigatorIOS | props } -> ReactElement
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

type NavigatorIOSProps = RouteDefaults (
    ref :: RefType NavigatorIOS
  , initialRoute :: forall eff props. Route eff props
  , interactivePopGestureEnabled :: Boolean
  , itemWrapperStyle :: Style
  , style :: Style
)


foreign import push :: forall eff props. NavigatorIOS -> Route eff props -> Eff (state::ReactState ReadWrite|eff) Unit

foreign import pop :: forall eff. NavigatorIOS -> Eff (state::ReactState ReadWrite|eff) Unit

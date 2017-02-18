module ScrollView where

import View (ViewPropsEx)
import RNX.Styles (Style)
import RNX.Color (Color)
import RNX.PropTypes (Insets, Prop, UnKnownType)
import React (ReactElement, createElement)
import RNX.Events (UnitEventHandler)
import RNX.ComponentClasses (refreshControlClass, scrollViewClass)
import Prelude


type ScrollViewProps eff = ScrollViewPropsEx eff ()


type RefreshProps eff =
  { onRefresh :: UnitEventHandler eff
  , refreshing :: Boolean
  , android :: Prop
                { colors :: Array Color
                , enabled :: Boolean
                , progressBackgroundColor :: Color
                , progressViewOffset :: Number
                , size :: UnKnownType   -- RefreshControlSize
                }
  , ios :: Prop
            { tintColor :: Color
            , title :: String
            , titleColor :: Color
            }
  }


type ScrollViewPropsEx eff r = ViewPropsEx eff
  ( contentContainerStyle :: Style
  , horizontal :: Boolean
  , keyboardDismissMode :: KeyboardDismissMode
  , keyboardShouldPersistTaps :: KeyboardShouldPersistTaps
  , onContentSizeChange :: UnKnownType --  EventHandler2 eff Number Number
  , onScroll :: UnKnownType -- EventHandler eff ScrollEvent
  , pagingEnabled :: Boolean
  , refreshControl :: RefreshControl
  , scrollEnabled :: Boolean
  , showsHorizontalScrollIndicator :: Boolean
  , showsVerticalScrollIndicator :: Boolean
  | r
  ) ScrollViewAndroid (ScrollViewIOS eff)


newtype KeyboardDismissMode = KeyboardDismissMode String
keyboardDismissMode ::
  { none :: KeyboardDismissMode
  , interactive :: KeyboardDismissMode
  , onDrag :: KeyboardDismissMode
  }
keyboardDismissMode =
  { none: KeyboardDismissMode "none"
  , interactive: KeyboardDismissMode "interactive"
  , onDrag: KeyboardDismissMode "on-drag"
  }


newtype KeyboardShouldPersistTaps = KeyboardShouldPersistTaps String
keyboardShouldPersistTaps ::
  { always :: KeyboardShouldPersistTaps
  , never :: KeyboardShouldPersistTaps
  , handled :: KeyboardShouldPersistTaps
  }
keyboardShouldPersistTaps =
  { always: KeyboardShouldPersistTaps "always"
  , never: KeyboardShouldPersistTaps "never"
  , handled: KeyboardShouldPersistTaps "handled"
  }


newtype RefreshControl = RefreshControl ReactElement


type ScrollViewAndroid =
  ( endFillColor :: Color
  , scrollPerfTag :: String
  )

type ScrollViewIOS eff =
  ( alwaysBounceHorizontal :: Boolean
  , alwaysBounceVertical :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , bouncesZoom :: Boolean
  , canCancelContentTouches :: Boolean
  , centerContent :: Boolean
  , contentInset :: Insets
  , contentOffset :: {x::Number, y::Number}
  , decelerationRate :: DecelerationRate
  , directionalLockEnabled :: Boolean
  , indicatorStyle :: IndicatorStyle
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , onScrollAnimationEnd :: UnitEventHandler eff
  , scrollEventThrottle :: Number
  , scrollIndicatorInsets :: Insets
  , scrollsToTop :: Boolean
  , snapToAlignment :: SnapToAlignment
  , snapToInterval :: Number
  , stickyHeaderIndices :: Array Number
  , zoomScale :: Number
  )


foreign import data RefreshControlSize :: *
foreign import rcSizeImpl :: String -> RefreshControlSize


refreshControlSize ::
  { default :: RefreshControlSize
  , large :: RefreshControlSize
  }
refreshControlSize =
  { default: rcSizeImpl "DEFAULT"
  , large: rcSizeImpl "LARGE"
  }


newtype DecelerationRate = DecelerationRate String
decelerationRate :: { fast :: DecelerationRate
                    , normal :: DecelerationRate
                    }
decelerationRate = { fast: DecelerationRate "fast"
                   , normal: DecelerationRate "normal"
                   }


-- need to discuss
-- decelerateBy :: Number -> DecelerationRate
-- decelerateBy = unsafeCoerce


newtype IndicatorStyle = IndicatorStyle String


indicatorStyle ::
  { default :: IndicatorStyle
  , black :: IndicatorStyle
  , white :: IndicatorStyle
  }
indicatorStyle =
  { default: IndicatorStyle "default"
  , black: IndicatorStyle "black"
  , white: IndicatorStyle "white"
  }


newtype SnapToAlignment = SnapToAlignment String


snapToAlignment ::
  { start :: SnapToAlignment
  , center :: SnapToAlignment
  , end :: SnapToAlignment
  }
snapToAlignment =
  { start: SnapToAlignment "start"
  , center: SnapToAlignment "center"
  , end: SnapToAlignment "end"
  }


refreshControl' :: forall eff. Prop (RefreshProps eff) ->  Array (ReactElement)  -> ReactElement
refreshControl'  = createElement refreshControlClass

scrollView :: forall eff. Prop (ScrollViewProps eff) -> Array (ReactElement) -> ReactElement
scrollView  = createElement scrollViewClass

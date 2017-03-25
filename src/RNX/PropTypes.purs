module RNX.PropTypes where


import React.DOM.Props (Props, unsafeMkProps)
import RNX.ComponentClasses

type Prop a = a -> a

foreign import data RefType :: * -> *

class AutoEnum a where
  auto :: a

class NormalEnum a where
  normal :: a

class CenterEnum a where
  center :: a

class VisibilityEnum a where
  visible :: a
  hidden :: a

class NoneEnum a where
  none :: a


type Insets = {top:: Number, left:: Number, bottom:: Number, right:: Number}

type UnKnownType = {}



data ImageSource
  = ImgURI {uri :: String}
  | Local String
  | URIs (Array {uri :: String, width::Int, height :: Int})


sourceWithName :: String -> ImageSource -> Props
sourceWithName name (ImgURI uri)  = unsafeMkProps name  uri
sourceWithName name (URIs aryuri) = unsafeMkProps name aryuri
sourceWithName name (Local path)  = unsafeMkProps name (require path)

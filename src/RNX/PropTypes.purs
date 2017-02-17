module RNX.PropTypes where

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


type UnKnownType = {}

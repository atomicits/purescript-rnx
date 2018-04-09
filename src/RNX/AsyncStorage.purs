module RNX.AsyncStorage where

import Prelude

import Control.Monad.Aff (Aff)
import Control.Monad.Eff (Eff)
import Control.Promise (Promise, toAffE)

foreign import _getItem :: forall e. String -> Eff e (Promise String)
foreign import _setItem :: forall e. String -> String -> Eff e (Promise Unit)
foreign import _removeItem :: forall e. String -> Eff e (Promise Unit)

getItem :: forall e. String ->  Aff e String
getItem key =  toAffE $ _getItem key

setItem :: forall e. String -> String -> Aff e Unit
setItem key value = toAffE $ _setItem key value

removeItem :: forall e. String ->  Aff e Unit
removeItem  key = toAffE $ _removeItem key

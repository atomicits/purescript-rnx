module RNX.AsyncStorage where

import Prelude

import Effect (Effect)

foreign import _getItem :: String -> Effect String
foreign import _setItem :: String -> String -> Effect Unit
foreign import _removeItem :: String -> Effect Unit

getItem :: String -> Effect String
getItem key =  _getItem key

setItem :: String -> String -> Effect Unit
setItem key value = _setItem key value

removeItem :: String ->  Effect Unit
removeItem  key = _removeItem key

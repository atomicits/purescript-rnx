module RNX.AsyncStorage where

import Prelude
import Control.Monad.Aff (attempt, Aff, makeAff)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (Error)
import Data.Either (Either(..), either)

foreign import _getItem          :: forall e scallback ecallback. String
                                                -> scallback
                                                -> ecallback
                                                -> Eff e Unit
foreign import _setItem          :: forall e scallback ecallback. String
                                                -> String
                                                -> scallback
                                                -> ecallback
                                                -> Eff e Unit
foreign import _removeItem       :: forall e scallback ecallback. String
                                                 -> scallback
                                                 -> ecallback
                                                 -> Eff e Unit

-- getItem' :: forall e. String -> Aff e String
-- getItem' key = makeAff (\error success -> (_getItem key) success error)

-- getItem :: forall e. String ->  Aff e (Either Error String)
-- getItem key = do
--   resp <- attempt $ getItem' key
--   pure $ either Left Right resp

-- setItem' :: forall e. String -> String -> Aff e Boolean
-- setItem'  key value = makeAff (\error success -> (_setItem key value) success error)

-- setItem :: forall e. String -> String -> Aff e (Either Error Boolean)
-- setItem key value = do
--     resp <- attempt $ setItem' key value
--     pure $ either Left Right resp


-- removeItem' :: forall e. String ->  Aff e Boolean
-- removeItem'  key = makeAff (\error success -> (_removeItem key) success error)

-- removeItem :: forall e. String  -> Aff e (Either Error Boolean)
-- removeItem key = do
--     resp <- attempt $ removeItem' key
--     pure $ either Left Right resp

module System.Clock where

import Prelude

import Control.Monad.Eff (kind Effect, Eff)

foreign import data CLOCK :: Effect

foreign import nanoseconds :: forall e. Eff (clock :: CLOCK | e) Number

milliseconds :: forall e. Eff (clock :: CLOCK | e) Number
milliseconds = liftM1 (_ / 1000000.0) nanoseconds

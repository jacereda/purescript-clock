module System.Clock where

import Control.Monad.Eff (kind Effect, Eff)
import Data.Ring ((-))
import Data.UInt (UInt, round)

foreign import data CLOCK :: Effect

newtype Stamp = Stamp Number
type Nanoseconds = UInt

foreign import now :: forall e. Eff (clock :: CLOCK | e) Stamp

interval :: Stamp -> Stamp -> Nanoseconds
interval (Stamp a) (Stamp b) = round (b - a)

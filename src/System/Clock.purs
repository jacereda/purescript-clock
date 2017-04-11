module System.Clock where

import Prelude

import Data.UInt (UInt, round)
import Control.Monad.Eff (kind Effect, Eff)

foreign import data CLOCK :: Effect

newtype Stamp = Stamp Number
type Nanoseconds = UInt

foreign import now :: forall e. Eff (clock :: CLOCK|e) Stamp

interval :: Stamp -> Stamp -> Nanoseconds
interval (Stamp a) (Stamp b) = round (b - a)

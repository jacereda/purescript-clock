module System.Clock where

import Control.Monad.Eff
import Prelude

foreign import data CLOCK :: !

newtype Stamp = Stamp Int
type Nanoseconds = Int

foreign import now :: forall e. Eff (clock :: CLOCK|e) Stamp

interval :: Stamp -> Stamp -> Nanoseconds
interval (Stamp a) (Stamp b) = (b - a) * 1000000

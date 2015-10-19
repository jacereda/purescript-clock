module Clock where

import Control.Monad.Eff

foreign import data Clock :: !

newtype Stamp = Stamp Number
type Nanoseconds = Number

foreign import now
"""
var now = typeof(performance) == 'undefined' && require('performance-now')
  || function() { return performance.now(); }
""" :: forall e. Eff (clock :: Clock|e) Stamp

interval :: Stamp -> Stamp -> Nanoseconds
interval (Stamp a) (Stamp b) = 0 .|. ((b - a) * 1000000 + 0.5)

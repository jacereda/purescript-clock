module System.Clock where

import Prelude
import Effect (Effect)

foreign import nanoseconds :: Effect Number

milliseconds :: Effect Number
milliseconds = liftM1 (_ / 1000000.0) nanoseconds

module Test.Main where

import Prelude
import System.Clock (CLOCK, milliseconds, nanoseconds)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

main :: forall e. Eff (clock :: CLOCK, console :: CONSOLE | e) Unit
main = do
  ms <- milliseconds
  ns <- nanoseconds
  logShow ms
  logShow ns


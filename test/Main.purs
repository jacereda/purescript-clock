module Test.Main where

import Prelude
import System.Clock (CLOCK, interval, now)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

main :: forall e. Eff (clock :: CLOCK, console :: CONSOLE | e) Unit
main = do
  t0 <- now
  t1 <- now
  logShow $ interval t0 t1
  t2 <- now
  logShow $ interval t0 t2
  t3 <- now
  logShow $ interval t0 t3  

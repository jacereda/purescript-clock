module Test.Main where

import System.Clock
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)
import Prelude (Unit, bind, ($))

main :: forall e. Eff (clock :: CLOCK, console :: CONSOLE | e) Unit
main = do
  t0 <- now
  t1 <- now
  t2 <- now
  t3 <- now
  logShow $ interval t0 t1
  logShow $ interval t0 t2
  logShow $ interval t0 t3  

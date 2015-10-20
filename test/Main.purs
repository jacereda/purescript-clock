module Test.Main where

import Prelude
import System.Clock
import Control.Monad.Eff
import Control.Monad.Eff.Console

main = do
  t0 <- now
  t1 <- now
  t2 <- now
  t3 <- now
  print $ interval t0 t1
  print $ interval t0 t2
  print $ interval t0 t3  


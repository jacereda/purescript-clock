module Test.Main where

import Clock
import Debug.Trace

main = do
  trace "You should add some tests."
  t0 <- now
  t1 <- now
  print $ interval t0 t1

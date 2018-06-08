module Test.Main where

import Prelude
import System.Clock (milliseconds, nanoseconds)
import Effect (Effect)
import Effect.Console (logShow)

main :: Effect Unit
main = do
  ms <- milliseconds
  ns <- nanoseconds
  logShow ms
  logShow ns

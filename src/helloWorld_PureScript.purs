--
-- PureScript Hello World
-- Requirements: PureScript compiler (purs) and Spago (package manager)
-- Execution: spago run

module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

-- main is the entry point of a PureScript program
main :: Effect Unit
main = do
  -- log prints a message to the console
  log "Hello, World!"

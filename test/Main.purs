module Test.Main where

import Prelude

import Effect.Class.Console (log)
import Google.AppsScript.AppsScript (GASEff)

main :: GASEff Unit
main = do
  log "🍝"
  log "You should add some tests."

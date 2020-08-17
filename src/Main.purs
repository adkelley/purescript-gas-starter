module Main where

import Prelude

import Google.AppsScript.AppsScript (GASEff)
import Google.AppsScript.SpreadsheetApp 
  ( app
  , getActiveSheet
  , getRange
  , getValue
  )
import Foreign (unsafeFromForeign)
import Effect.Console (log)

main :: GASEff Unit
main = do
  sheet <- app >>= getActiveSheet
  range <- getRange "A1" sheet
  address <- getValue range
  log $ unsafeFromForeign address

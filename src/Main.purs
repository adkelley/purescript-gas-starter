module Main where

import Prelude

import Google.AppsScript.AppsScript (GASEff)
import Google.AppsScript.SpreadsheetApp 
  ( app
  , getActiveSheet
  , getRange
  , getValue
  )
import Foreign (Foreign, unsafeFromForeign)
import Effect (Effect)
import Effect.Console (log)


getValueFromRange :: String -> GASEff Foreign
getValueFromRange range = 
  app >>= getActiveSheet >>= getRange range >>= getValue
  
main :: Effect Unit
main = do
  --value <- getValueFromRange "A1"
  getValueFromRange "A1" >>= \x -> log $ unsafeFromForeign x

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

-- | Return the value of a cell given its range in 'A1' format
getValueFromRange :: String -> GASEff Foreign
getValueFromRange range = 
  app >>= getActiveSheet >>= getRange range >>= getValue
  
-- | Print out the value of a cell given its range in 'A1' format
main :: Effect Unit
main = do
  getValueFromRange "A1" >>= \x -> log $ unsafeFromForeign x

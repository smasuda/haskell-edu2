module Main where

import qualified LangExts.ViewPattern as LV
import qualified LangExts.PatternSynonyms as LP
import qualified Types.Classes as TC
import qualified Monads.Refs as MR

main :: IO ()
main = do
    LV.run
    LP.run
    TC.run
    MR.run
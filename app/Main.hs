module Main where

import qualified LangExts.ViewPattern as LV
import qualified LangExts.PatternSynonyms as LP

main :: IO ()
main = do
    LV.run
    LP.run

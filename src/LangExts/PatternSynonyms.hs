{-# LANGUAGE PatternSynonyms #-}

module LangExts.PatternSynonyms where

pattern One = 1
pattern Two = 2

isOneOrTwo::Int->Bool
isOneOrTwo One = True
isOneOrTwo Two = True
isOneOrTwo _ = False


run :: IO()
run = do
    putStrLn . show $ isOneOrTwo 1
    putStrLn . show $ isOneOrTwo 2
    putStrLn . show $ isOneOrTwo 0

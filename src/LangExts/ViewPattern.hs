{-# LANGUAGE ViewPatterns #-}

module LangExts.ViewPattern where 

-- https://blog.tiqwab.com/2017/05/21/view-patterns.html
-- https://ocharles.org.uk/posts/2014-12-02-view-patterns.html


import      Data.Sequence (Seq, ViewR (..), fromList,
                                singleton, viewr, (<|), (|>))
import qualified Data.Sequence as S

endSeqWithZero :: Seq Int -> Bool
endSeqWithZero (viewr -> EmptyR)  = False
endSeqWithZero (viewr -> xs :> x) = x == 0

run :: IO()
run = do
    putStrLn . show $ S.viewr (S.fromList[1,2,3,4])
    putStrLn . show $ endSeqWithZero (S.fromList[1, 2, 3])
    putStrLn . show $ endSeqWithZero (S.fromList[1, 2, 3, 0])
    putStrLn . show $ endSeqWithZero (S.empty)
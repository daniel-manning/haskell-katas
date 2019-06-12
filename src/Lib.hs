module Lib
    ( someFunc,
    arabicNumberToNumeral
    ) where

import Data.Char

someFunc :: IO ()
someFunc = putStrLn "someFunc"

numerals = [('I', 'V'), ('X', 'L'), ('C', 'D'), ('M', 'M')]


arabicNumberToNumeral :: Int -> Maybe String
arabicNumberToNumeral n | n > 4000 = Nothing
                        | n < 0 = Nothing
                        | otherwise = Just $ concat $ reverse $ zipWith digitToNumeral numerals $ (map digitToInt) $ (reverse.show) n


digitToNumeral :: (Char, Char) -> Int -> [Char]
digitToNumeral (v, vs) n | n < 4 = replicate n v
                         | n == 4 = [ v, vs ]
                         | otherwise = [vs] ++ (replicate (n-5) v)


--numeralToArabicNumber :: String -> Maybe Int

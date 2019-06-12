import Test.QuickCheck
import Lib
import Data.Maybe


main :: IO ()
main = do
  quickCheck propMaxRepetitionOfI



propMaxRepetitionOfI :: Int -> Bool
propMaxRepetitionOfI arabicNumber = length (filter (=='I') (fromJust (arabicNumberToNumeral arabicNumber))) <= 4
import Test.QuickCheck
import Lib
import Data.Maybe


main :: IO ()
main = do
  quickCheck propMaxRepetitionOfI

propMaxRepetitionOfI :: Property
propMaxRepetitionOfI = forAll (choose (1,4000)) $ \n -> length (filter (=='I') (fromJust (arabicNumberToNumeral n))) <= 4
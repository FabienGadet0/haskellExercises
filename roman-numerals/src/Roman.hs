module Roman (numerals) where
import Data.Char

toL 1 = "I"
toL 2 = "II"
toL 3 = "III"
toL 4 = "IV"
toL 5 = "V"
toL 6 = "VI"
toL 7 = "VII"
toL 8 = "VIII"
toL 9 = "IX"
toL 10 = "X"
-- numerals :: Integer -> Maybe String
numerals n = map digitToInt $ show n
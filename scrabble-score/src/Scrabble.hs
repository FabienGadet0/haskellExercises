module Scrabble (scoreLetter, scoreWord) where
import Data.Char

-- scoreLetter :: Char -> Integer
scoreLetter :: Char -> Int
scoreLetter letter
    | any (== l) "AEIOULNRST" = 1
    | any (== l) "DG" = 2
    | any (== l) "BCMP" = 3
    | any (== l) "FHVWY" = 4
    | any (== l) "K" = 5
    | any (== l) "JX" = 8
    | any (== l) "QZ" = 10
    | otherwise = 0
        where l = toUpper letter

-- scoreWord :: String -> Integer
scoreWord word
    | and $ map (isAlpha) word = 0
    | otherwise = foldl (\acc b -> acc + (scoreLetter b) ) 0 word
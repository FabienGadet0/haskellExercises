module RotationalCipher (rotate) where
import Data.Char

isMaj :: Num t => Char -> t
isMaj letter
    | isUpper letter = 32
    | otherwise = 0

nextLetter :: Int -> Char -> Char
nextLetter nb letter
    | nb <= 0 || nb >= 26 || not (isAlpha letter) = letter
    | tot > ((ord 'z') - isMaj letter) = chr $ ((ord 'a') - isMaj letter)  + (tot - ((ord 'z'- isMaj letter) + 1))
    | otherwise = chr tot
        where tot = (letterNum) + nb
              letterNum = ord letter

rotate :: Int -> String -> String
rotate i = map (nextLetter i) 
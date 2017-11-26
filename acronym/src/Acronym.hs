module Acronym (abbreviate) where
import Data.Char
import Data.List

splitOn :: Char -> [Char] -> [Char]
splitOn char str =  map (\b -> if (b == char) then ' ' else b) str

firstLetterToUpper :: [Char] -> [Char]
firstLetterToUpper x = toUpper (head x) : tail x

clean :: [Char] -> [[Char]]
clean xs = map firstLetterToUpper $ words $ splitOn '-' xs

ilEstChiantCetExercice :: [Char] -> [Char]
ilEstChiantCetExercice [] = []
ilEstChiantCetExercice [a] = []

ilEstChiantCetExercice (x:y:z)
    | isUpper x &&  isUpper y || isUpper x && isLower y = x : ilEstChiantCetExercice z
    | (isLower x) && (isUpper y) = y : ilEstChiantCetExercice z
    | otherwise = ilEstChiantCetExercice z

abbreviate :: String -> String
abbreviate xs = concat $ map (ilEstChiantCetExercice) $ clean xs
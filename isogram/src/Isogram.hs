module Isogram (isIsogram) where
import Data.Char
-- findLetter :: String -> Char -> Bool
-- findLetter lst letter = elem letter lst

count :: String -> Char -> Bool
count lst x = ((length $ filter (== x) lst) < 2) || not (isAlpha x)

isIsogram :: String -> Bool
isIsogram text = all (count lower) text where lower =  map toLower text
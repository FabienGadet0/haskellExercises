module Anagram (anagramsFor) where
import Data.List
import Data.Char

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = filter (\a -> ((sort $ map toLower xs) == (sort $ map toLower a) && (map toLower $ a) /= ( map toLower $ xs))) xss
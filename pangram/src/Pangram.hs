module Pangram (isPangram) where
import Data.Char

-- findLetter :: (Eq a, Foldable t) => a -> t a -> Bool
findLetter lst letter = if letter /= ' ' then elem letter lst else True

isPangram :: String -> Bool
isPangram text
    | length text == 0 = False
    | otherwise = and $ map (findLetter lower) ['a'..'z'] where lower = map toLower text
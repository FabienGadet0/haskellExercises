module Bob (responseFor) where
import Data.Char

toomuchCAPS :: [Char] -> Bool
toomuchCAPS xs = (up == (length $ filter (isAlpha) xs)) && up /= 0 
    where up = length $ filter (isUpper) xs

isItQuestion :: [Char] -> Bool
isItQuestion xs = last str == '?' where str = filter (/= ' ') xs

responseFor :: String -> String
responseFor xs
    | length xs == 0 || all (isSpace) xs = "Fine. Be that way!"
    | toomuchCAPS xs = "Whoa, chill out!"
    | isItQuestion xs = "Sure."
    | otherwise = "Whatever."
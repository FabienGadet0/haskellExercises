module Phone (number) where
import Data.Char

clean :: [Char] -> [Char]
clean xs
    | (head xs == '1') = tail xs
    | otherwise = xs

checkValidity :: [Char] -> Bool
checkValidity xs = digitToInt (head r) > 1 && digitToInt (last r) > 1 where r = take 4 xs

isValid :: [Char] -> Bool
isValid xs
    | length xs == 11 && head xs == '1' && checkValidity (tail xs) = True
    | length xs == 10 && checkValidity xs = True
    | otherwise = False

number :: String -> Maybe String
number xs
    | isValid r = Just $ clean r
    | otherwise = Nothing
        where r = filter (isDigit) xs
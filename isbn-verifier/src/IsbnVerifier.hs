module IsbnVerifier (isbn) where
import Data.Char

getOnlyDigits :: [Char] -> [Char]
getOnlyDigits lst = filter (validator) lst

cleaner :: Char -> Int
cleaner i
    | i == 'X' = 10
    | otherwise = digitToInt i

compute :: [Char] -> Int
compute lst = sum $ zipWith (\a b -> (cleaner a) * b) lst [10, 9 .. 1]

checkBody :: [Char] -> Bool
checkBody lst = (last lst == 'X' && all isDigit (tail $reverse lst) || all isDigit lst) && length lst == 10 

isbn :: String -> Bool
isbn str
    | not (checkBody resultCleaned) = False
    | otherwise = (result `mod` 11 ) == 0
        where resultCleaned = getOnlyDigits str
              result = compute resultCleaned

validator :: Char -> Bool
validator i = isDigit i || i == 'X'
module Raindrops (convert) where

isFactor :: Int -> Int -> Bool
isFactor a b = a `mod` b == 0

toChingChong :: Int -> String
toChingChong n
    | n == 3 = "Pling"
    | n == 5 = "Plang"
    | n == 7 = "Plong"

convert :: Int -> String
convert n
    | length r == 0 = show n
    | otherwise = concatMap toChingChong r
        where r = filter (isFactor n) [3,5,7]
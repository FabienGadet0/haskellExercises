module Grains (square, total) where
import Data.Maybe

compute :: (Num t, Eq t) => t -> t -> Maybe t
compute n i
    | i == n = Just i
    | otherwise = compute (n + 1)(i * 2)
    
square :: Integer -> Maybe Integer
square n
    | n > 64 || n <= 0 = Nothing
    | otherwise = Just (2^(n - 1))

total :: Integer
total = foldl (\acc b -> acc + (fromJust $ square b)) 0 [1..64]

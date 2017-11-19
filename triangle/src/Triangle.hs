module Triangle (TriangleType(..), triangleType) where

import Data.List (sort)

data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illegal
                  deriving (Eq, Show)

illegal :: (Num a, Ord a) => [a] -> Bool
illegal [a,b,c]
    | (a + b) >= c  = False
    | otherwise = True

triangleType a b c
    | any (<= 0) [a,b,c] || illegal (sort [a, b, c]) = Illegal
    | a == b && a == c = Equilateral
    | a == b || b == c || a == c = Isosceles
    | a /= b && b /= c && a /= c = Scalene
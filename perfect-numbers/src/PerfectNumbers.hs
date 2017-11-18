module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

isDivisibleBy :: Integral a => a -> a -> Bool
isDivisibleBy x x2 = x `mod` x2 == 0 && x /= x2 

classify :: Int -> Maybe Classification
classify x
    | x <= 0 = Nothing
    | r == x = Just Perfect
    | r > x = Just Abundant
    | r < x = Just Deficient
        where r = sum (filter (isDivisibleBy x) [1,2..x])
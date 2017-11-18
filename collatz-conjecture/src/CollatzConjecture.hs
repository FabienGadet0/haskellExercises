module CollatzConjecture (collatz) where

cheater :: (Num a, Integral a1) => a1 -> a -> Maybe a
cheater i ix
    | i == 1 = Just ix
    | odd i = cheater (3 * i + 1) (ix + 1)
    | even i = cheater (i `div` 2) (ix + 1)

collatz :: Integer -> Maybe Integer
collatz i
    | i <= 0 = Nothing
    | otherwise = cheater i 0
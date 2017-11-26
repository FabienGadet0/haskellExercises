module PrimeFactors (primeFactors) where

compute n divisor
    | n == 1 = []
    | n `mod` divisor == 0 = divisor : compute r divisor 
    | otherwise = compute n (divisor + 1)
        where r = n `div` divisor

primeFactors :: Integer -> [Integer]
primeFactors n = compute n 2
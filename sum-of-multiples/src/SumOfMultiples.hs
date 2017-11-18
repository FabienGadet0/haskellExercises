module SumOfMultiples (sumOfMultiples) where
import Data.List

isFactor :: Integral a => a -> a -> Bool
isFactor x2 x = x `mod` x2 == 0

allInferiorFactors :: Integral a => a -> a -> [a]
allInferiorFactors limit x = filter (/= limit) $ filter (isFactor x) [1,2..limit]

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ nub $ concatMap (allInferiorFactors limit) factors
module SecretHandshake (handshake) where
import Data.Maybe (catMaybes)

toBin :: Int -> [Int]
toBin 0 = []
toBin n = case (n `mod` 2) of
    1 -> toBin (n `div` 2) ++ [1]
    0 -> toBin (n `div` 2) ++ [0]

toS :: Int -> Maybe String
toS n 
    | n == 1 = Just "wink"
    | n == 2 = Just "double blink"
    | n == 3 = Just "close your eyes"
    | n == 4 = Just "jump"
    | otherwise = Nothing

maybeReverse :: (Num a, Eq a, Foldable t) => t a -> Bool
maybeReverse xs = not $ any (== 5) xs

indexList :: (Enum a, Num a, Num a1, Eq a1) => [a1] -> [(a, a1)]
indexList xs = filter ((== 1).snd) $ zip [0..] xs

handshake :: Int -> [String]
handshake str = if (maybeReverse sizeOfIndexes) then reverse result else result 
    where result = catMaybes $ map (\a -> toS a) sizeOfIndexes
          r =  (toBin str)
          sizeOfIndexes  = map (\a -> (length r) - fst a) onlyIndex 
          onlyIndex =  indexList r
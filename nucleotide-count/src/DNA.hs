module DNA (nucleotideCounts) where

import Data.Map (Map, fromList)

count :: Eq a => a -> [a] -> Int
count x = length . filter (x==)


nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts xs
    | (all (`elem` "ACGT") xs) = Right $ r
    | otherwise = Left $ show r
    where xa = count 'A' xs
          xc = count 'C' xs
          xg = count 'G' xs
          xt = count 'T' xs
          r = fromList [('A',xa), ('C',xc), ('G',xg), ('T',xt)]
module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys 
    | length xs /= length ys = Nothing
    | otherwise = Just $ length . filter (==True) $ zipWith (\a b -> a /= b) xs ys
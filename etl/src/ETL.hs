module ETL (transform) where

import Data.Map (Map, fromList, toList)
import Data.Char

unpair :: Int -> [Char] -> [(Char, Int)]
unpair a (x:xs) = (toLower x, a) : unpair a xs

unpair _ [] = []

transform :: Map Int String -> Map Char Int
transform legacyData = fromList $ concatMap (\(a,b) -> unpair a b ) $ toList  legacyData
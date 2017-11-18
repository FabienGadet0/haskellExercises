module RunLength (decode, encode) where
import Data.Char
import Data.List

transform str letter = concat $ replicate (read str :: Int) letter

groupz str = groupBy (\x y -> isDigit x == isDigit y)

format [] = ""
format (x:y:xs) = replicate (read x) (head y) ++ tail y ++ format xs
-- decode (hd:tl) = transform hd tl

-- decode str = format cleaned where cleaned = groupz str

encode :: String -> String
encode str = filter (/= '1') $ concatMap (\x -> show (length x) ++ [head x]) (group str)
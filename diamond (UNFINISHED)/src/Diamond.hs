module Diamond (diamond) where
import Data.Char

nbOfLetterToDraw :: Char -> Int
nbOfLetterToDraw l =  ord l - ord 'A'

oneLine :: Char -> Int -> Int -> String
oneLine letter nbOfSpaceOut nbOfSpaceIn
    |letter == 'A' = replicate nbOfSpaceOut '.' ++ [letter] ++ replicate nbOfSpaceOut '.' ++ ['\n']
    |otherwise = replicate nbOfSpaceOut '.' ++ [letter] ++ replicate (nbOfSpaceIn) '.' ++ [letter] ++ replicate nbOfSpaceOut '.' ++ ['\n']

-- compute l spaceout spacein
--     | oneLine l spaceout spacein : compute (chr $ (ord l + 1)) (spaceout - 1) (b + 1)

diamond :: Char -> [String]
diamond l
    | l == 'A' = ["A"]
    | otherwise = ["A"] -- i dont know 

-- spaceout = nbOfLetterToDraw l - 1
-- spacein ++ a chaque iteration
-- ------------- milieu -----------
-- spacein - a chaque iteration
-- spaceout ++ (depuis 0) jusqu'a (nbOfLetterToDraw l - 1)
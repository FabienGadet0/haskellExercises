module Allergies (Allergen(..), allergies, isAllergicTo) where
import Data.Bits

data Allergen = Eggs
              | Peanuts
              | Shellfish
              | Strawberries
              | Tomatoes
              | Chocolate
              | Pollen
              | Cats
              deriving (Eq, Enum, Bounded, Show)

allergies :: Int -> [Allergen]
allergies score = foldl (\acc b -> if (testBit score b) then acc ++ [(toEnum b)] else acc) [] [0..10]

isAllergicTo :: Allergen -> Int -> Bool
isAllergicTo allergen score = allergen `elem` r where r = allergies score
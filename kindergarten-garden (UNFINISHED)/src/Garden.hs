module Garden
    ( Plant (..)
    , defaultGarden
    , garden
    , lookupPlants
    ) where

import Data.Map as M

data Plant = Clover
           | Grass
           | Radishes
           | Violets
           deriving (Eq, Show)

defaultGarden :: String -> M.Map String [Plant]
defaultGarden plants = error "You need to implement this function."

garden :: [String] -> String -> M.Map String [Plant]
garden students plants = error "You need to implement this function."

-- lookupPlants :: String -> M.Map String [Plant] -> [Plant]
lookupPlants student garden = M.lookup  student garden
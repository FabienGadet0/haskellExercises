module Robot
    ( Bearing(East,North,South,West)
    , bearing
    , coordinates
    , mkRobot
    , simulate
    , turnLeft
    , turnRight
    ) where

data Bearing = North
             | West
             | South
             | East
             deriving (Eq, Show, Enum, Bounded)

data Robot = Robot {
            coordinates :: (Integer,Integer),
            pointTo :: Bearing
} deriving (Eq,Show)

bearing :: Robot -> Bearing
bearing robot = pointTo robot

mkRobot :: Bearing -> (Integer, Integer) -> Robot
mkRobot direction c = Robot c direction

advance :: Robot -> Robot
advance (Robot (x,y) bearing) = case bearing of
        North -> Robot (x,y + 1) bearing
        East -> Robot (x + 1, y) bearing
        South -> Robot (x,y - 1) bearing
        West -> Robot (x - 1, y) bearing

simulate :: Robot -> String -> Robot
simulate robot [] = robot
simulate robot (instr:uctions)
        | not $ any (/= instr) "ALR" = robot
        | otherwise = case instr of
        'A' -> simulate (advance robot) uctions
        'L' -> simulate (Robot (coordinates robot) (turnLeft (bearing robot ))) uctions
        'R' -> simulate (Robot (coordinates robot) (turnRight (bearing robot ))) uctions

turnLeft :: Bearing -> Bearing
turnLeft direction
    | direction == maxBound = minBound
    | otherwise = succ direction

turnRight :: Bearing -> Bearing
turnRight direction
    | direction == minBound = maxBound
    | otherwise = pred direction

module School (School, add, empty, grade, sorted) where
import qualified Data.Map as M

type School = M.Map Int (String)

empty :: School
empty = M.empty

add :: Int -> String -> School -> School
add gradeNum student school = M.insertWith mappend gradeNum student school

grade :: Int -> School -> [String]
grade gradeNum school = error "You need to implement this function."

sorted :: School -> [(Int, [String])]
sorted school = error "You need to implement this function."

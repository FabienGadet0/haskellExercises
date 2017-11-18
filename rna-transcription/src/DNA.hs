module DNA (toRNA) where

compute 'G' = Just 'C'
compute 'C' = Just 'G'
compute 'T' = Just 'A'
compute 'A' = Just 'U'
compute a = Nothing

toRNA :: String -> Maybe String
toRNA = mapM compute
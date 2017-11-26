module ListOps
  ( length
  , reverse
  , map
  , filter
  , foldr
  , foldl'
  , (++)
  , concat
  ) where

import Prelude hiding
  ( length, reverse, map, filter, foldr, (++), concat )

-- foldl' :: (Num b => b -> a -> b) -> b -> [a] -> b
foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' _ z []     = z
foldl' f z (x:xs) = z `seq` foldl' f (f z x) xs

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ z []     = z
foldr f z (x:xs) = f x (foldr f z xs)

length :: [a] -> Int
length xs =  foldl (\acc _ -> acc + 1 ) 0 xs

reverse :: [a] -> [a]
reverse [] = []
reverse a = last a : reverse (init a) 

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (hd:tl) = f hd : map f tl 

filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (hd:tl) | p hd = hd : filter p tl | otherwise = filter p tl 

(++) :: [a] -> [a] -> [a]
[] ++ [] = []
[] ++ (h2:t2) = h2 : (++) [] t2 
(h1:t1) ++ [] = h1 : (++) [] t1
(h1:t1) ++ xss = h1 : (++) t1  xss

concat :: [[a]] -> [a]
concat [] = []
concat (x:xs) = x ++ concat xs
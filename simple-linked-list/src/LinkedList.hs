module LinkedList
    ( LinkedList
    , datum
    , fromList
    , isNil
    , new
    , next
    , nil
    , reverseLinkedList
    , toList
    ) where

data LinkedList a = Nil | CurrentElem a ( LinkedList a)  deriving (Eq, Show)

datum :: LinkedList a -> a
datum (CurrentElem a _) = a

fromList :: [a] -> LinkedList a
fromList [] = Nil
fromList (hd:tl) = CurrentElem hd (fromList tl)

isNil :: LinkedList a -> Bool
isNil Nil = True
isNil a = False

new :: a -> LinkedList a -> LinkedList a
new x linkedList = CurrentElem x linkedList

next :: LinkedList a -> LinkedList a
next (CurrentElem _ n) = n

nil :: LinkedList a
nil = Nil

reverseLinkedList :: LinkedList a -> LinkedList a
reverseLinkedList linkedList = fromList $ reverse $ toList linkedList

toList :: LinkedList a -> [a]
toList Nil = []
toList (CurrentElem a b) = a : toList b
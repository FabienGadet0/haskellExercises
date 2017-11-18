module ComplexNumbers
(Complex,
 conjugate,
 abs,
 real,
 imaginary,
 mul,
 add,
 sub,
 div,
 complex) where

import Prelude hiding (div, abs)

-- Data definition -------------------------------------------------------------
data Complex a = Dummy deriving(Eq, Show)

complex :: (a, a) -> Complex a
complex = uncurry Complex

-- unary operators -------------------------------------------------------------
conjugate :: Num a => Complex a -> Complex a
conjugate (Complex r i) = Complex r (-i)

abs :: Floating a => Complex a -> a
abs (Complex a b) = sqrt(a^2 + b^2)

real :: Num a => Complex a -> a
real = error "You need to implement this function"

imaginary :: Num a => Complex a -> a
imaginary = error "You need to implement this function"

-- binary operators ------------------------------------------------------------
mul :: Num a => Complex a -> Complex a -> Complex a
mul = error "You need to implement this function"

add :: Num a => Complex a -> Complex a -> Complex a
add = error "You need to implement this function"

sub :: Num a => Complex a -> Complex a -> Complex a
sub = error "You need to implement this function"

div :: Fractional a => Complex a -> Complex a -> Complex a
div = error "You need to implement this function"

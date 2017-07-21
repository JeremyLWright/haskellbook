module Exercises where

-- Chapter 4
awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, alsoAwesome]

-- Problem #1

length' :: [a] -> Integer
length' a = lengthAcc a 0 
  where 
    lengthAcc (_:as) acc = lengthAcc as (acc + 1)
    lengthAcc [] acc = acc

-- | Problem #2 
--  What are the results of the following expressions?
--
--  >>> length' [1,2,3,4,5]
--  5
--  >>> length [(1, 2), (2, 3), (3, 4)]
--  3
--  >>> length allAwesome
--  2
--  >>> length (concat allAwesome) 
--  5

-- | Problem #3
--
-- >>> 6 / 3
-- 2.0

-- Problem #4 
-- Use a different divisor function to make the code work.
--
-- >>> 6 `div` length' [1,2,3]
-- 2

-- | Problem #5
-- What is the type of the following expression?
--
-- >>> (2 + 3 == 5) :: Bool
-- True

-- | Problem #6
-- What is the type and expected result value of the following?
--
-- >>> let x = 5
-- >>> x + 3 == 5
-- False
-- >>> x + 3
-- 8

-- | Problem #7
-- Below are some bits of code. Which will work?
--
-- >>> length allAwesome == 2
-- True
--
-- length [1, 'a', 3, 'b'] --Type Error, because lists are homogeneous
--
-- >>> length allAwesome + length awesome
-- 5
--
-- >>> (8 == 8) && ('b' < 'a')
-- False
-- >>> (8 == 8)
-- True
-- >>> ('b' < 'a')
-- False
-- >>> ('a' < 'b')
-- True
--
-- (8 == 8) && 9 -- Type Error, one cannot 9 is a Num (Int or Integer) && only
-- works for boolean types

-- | Problem #8
-- Write a function that tells you whether or not a given String (or list) is
-- a palindrome. 
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome s = reverse s == s

-- | Problem #9 
-- Write a function to return the absolute value of a number using
-- if-then-else
myAbs :: Integer -> Integer
myAbs n = if n < 0 then n * (-1) else n

myPatternAbs :: Integer -> Integer
myPatternAbs n
  | n < 0 = n * (-1)
  | otherwise = n

-- | Problem #10
-- Fill in the definition of the following function, using fst and snd:
--
-- >>> f (1,2) (3,4)
-- ((2,4),(1,3))
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tab tcd = ((snd tab, snd tcd), (fst tab, fst tcd))  

-- | Correcting Syntax
-- Problem #1
--
-- Here we want a function that adds 1 to the length of a string argument and
-- returns that result.

x :: Integer -> Integer -> Integer
x = (+)

f1 :: String -> Integer
f1 xs = x w 1
  where w = fromIntegral (length xs) 

-- | Problem #2
--
-- This is supposed to be the identity function id.

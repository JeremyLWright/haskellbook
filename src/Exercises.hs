module Exercises where

myAbs :: Integer -> Integer
myAbs n = if n < 0 then n * (-1) else n

isPalindrome :: String -> Bool
isPalindrome s = reverse s == s

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
--
--  What are the results of the following expressions?
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
--
-- Problem #4 
-- Use a different divisor function to make the code work.
-- >>> 6 `div` length' [1,2,3]
-- 2

-- | Problem #5
-- What is the type of the following expression?
-- >>> (2 + 3 == 5) :: Bool
-- True

    
prob6 :: Bool
prob6 = x + 3 == 5
  where x = 5 :: Integer



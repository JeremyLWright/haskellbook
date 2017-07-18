module Exercises where

myAbs :: Integer -> Integer
myAbs n = if n < 0 then n * (-1) else n

isPalindrome :: String -> Bool
isPalindrome s = reverse s == s

-- Chapter 4
-- Problem #1
length' :: [a] -> Integer
length' a = lengthAcc a 0 
  where 
    lengthAcc (_:as) acc = lengthAcc as (acc + 1)
    lengthAcc [] acc = acc
    
prob6 :: Bool
prob6 = x + 3 == 5
  where x = 5 :: Integer



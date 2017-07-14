module Exercises where

myAbs :: Integer -> Integer
myAbs n = if n < 0 then n * (-1) else n

isPalindrome :: String -> Bool
isPalindrome s = reverse s == s

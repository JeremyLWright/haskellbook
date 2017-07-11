module Main where


dropWhile' :: (Char -> Bool) -> String -> String
dropWhile' f (c:cs) 
  | f c = cs
  | otherwise = dropWhile' f cs

countHelper :: String -> Integer -> Integer 
countHelper (x:xs) n = if x == ' ' then n else countHelper xs n+1

getIndexOfSpace :: String -> Integer
getIndexOfSpace s = countHelper s 0

rvrs :: String -> String
rvrs x = x

main :: IO ()
main = print (rvrs "Curry is awesome")

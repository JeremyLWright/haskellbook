module Reverse where

import Data.String.Utils
import Data.Char

isWhitespace :: Char -> Bool
isWhitespace s = 
  s == ' ' || s == '\n' || s == '\r' || s == '\f' || s == '\v' || s == '\160'

taker :: String -> String -> [String] -> [String]
taker (s:ss) acc list 
  | ss == [] = packToFrontOfList accumulate
  | s == ' ' = taker ss "" (packToFrontOfList acc)
  | otherwise = taker ss accumulate list
  where
    accumulate = acc ++ [s]
    packToFrontOfList a = a : list

rvrs :: String -> String
rvrs "" = ""
rvrs " " = ""
rvrs s = strip $ unwords $ taker cleanS "" []
  where cleanS = map replaceWithSpace $ strip s

replaceWithSpace :: Char -> Char
replaceWithSpace s
  | isPrint s = s
  | otherwise = ' '

main :: IO ()
main = print (rvrs "Curry is awesome")

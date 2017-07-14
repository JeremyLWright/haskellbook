-- Load in ghci with: stack ghci --package QuickCheck
module Reverse.Test where

import Reverse
import Test.QuickCheck

rvrs' :: String -> String
rvrs' s = unwords (reverse $ words cleanS)
  where cleanS = map replaceWithSpace s


prop_bookReverse s = (rvrs' s) == (rvrs s)

test = quickCheck prop_bookReverse

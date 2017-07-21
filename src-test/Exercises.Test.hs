module Exercises.Test where


import Exercises
import Test.QuickCheck

import Test.Tasty
import Test.Tasty.QuickCheck as QC
import Test.Tasty.SmallCheck as SC
import Test.Tasty.HUnit 

import Data.Set as DS

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [properties] --, unitTests, examples]

properties :: TestTree
properties = testGroup "Properties" [qcProps]

qcProps = testGroup "(checked by QuickCheck)"
  ]

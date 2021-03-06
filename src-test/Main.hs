import Test.Tasty
import Test.Tasty.HUnit
import Test.Tasty.SmallCheck as SC
import Test.Tasty.QuickCheck as QC

import Lib (inc)
import Exercises

main :: IO ()
main = defaultMain $ testGroup "all-tests" tests

tests :: [TestTree]
tests =
  [ testGroup "SmallCheck" scTests
  , testGroup "Unit tests" huTests
  , testGroup "QuickCheck" qcTests
  ]

scTests :: [TestTree]
scTests =
  [ SC.testProperty "inc == succ" prop_succ
  , SC.testProperty "inc . negate == negate . pred" prop_pred
  ]

qcTests :: [TestTree]
qcTests = 
  [ QC.testProperty "Reverse of a palindrome is a palindrome" prop_myPalindromeReverseOfPalindromeIsPalindrome 
  ,  QC.testProperty "Absolute Value is always positive" prop_myAbsIsAlwaysPositive 
  ,  QC.testProperty "Absolute Value with pattern matching is always positive" prop_myPatternAbsIsAlwaysPositive 
  ,  QC.testProperty "Concatenate a with reverse a is a palindrome" prop_ConcatReverseOfStringIsAPalindrome 
  ,  QC.testProperty "f1 adds one to the length" prop_LengthOfStringIsOneExtra 
  ]

huTests :: [TestTree]
huTests =
  [ testCase "Increment below TheAnswer" case_inc_below
  , testCase "Decrement above TheAnswer" case_dec_above
  , testCase "Length of list awesome" case_awesome
  , testCase "Length of list alsoAwesome" case_alsoAwesome 
  , testCase "Length of list of list" case_allAwesome
  ]


prop_myAbsIsAlwaysPositive :: Integer -> Bool
prop_myAbsIsAlwaysPositive i = myAbs i >= 0

prop_myPatternAbsIsAlwaysPositive :: Integer -> Bool
prop_myPatternAbsIsAlwaysPositive i = myPatternAbs i >= 0

prop_myPalindromeReverseOfPalindromeIsPalindrome :: String -> Bool
prop_myPalindromeReverseOfPalindromeIsPalindrome s = (isPalindrome palindrome) == (isPalindrome $ reverse palindrome)
  where palindrome = s ++ reverse s

prop_ConcatReverseOfStringIsAPalindrome :: String -> Bool
prop_ConcatReverseOfStringIsAPalindrome s = isPalindrome palindrome
  where palindrome = s ++ reverse s

prop_LengthOfStringIsOneExtra :: String -> Bool
prop_LengthOfStringIsOneExtra s = (f1 s) == (+) (fromIntegral (length s)) 1


-- Chapter 4
-- Problem #1

case_awesome :: Assertion
case_awesome = (Exercises.length' awesome) @?= 3

case_alsoAwesome :: Assertion
case_alsoAwesome = Exercises.length' alsoAwesome @?= 2

case_allAwesome :: Assertion
case_allAwesome = Exercises.length' allAwesome @?= 2



prop_succ :: Integer -> Bool
prop_succ n = inc n == succ n

prop_pred :: Integer -> Bool
prop_pred n = inc (negate n) == negate (pred n)

case_inc_below :: Assertion
case_inc_below = inc 41 @?= (42 :: Int)

case_dec_above :: Assertion
case_dec_above = negate (inc (negate 43)) @?= (42 :: Int)

module TypeInference1 where

f :: Num a => a -> a -> a
f x y = x + y + 3

-- | Chapter 5
-- >>> :t f
-- f :: Num a => a -> a -> a
-- >>> f 1 2
-- 6
--
-- Evaluate the partial application
-- >>> :t f 1
-- f 1 :: Num a => a -> a
-- 

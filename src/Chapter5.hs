module Chapter5 where


-- | Chapter 5
-- | Apply Yourself
-- 1. Given that the general type of concat is
-- (++) :: [a] -> [a] -> [a]
--
-- What happens when we apply it to the function
-- >>> myConcat x = x ++ " yo"
-- >>> :t myConcat
-- myConcat :: [Char] -> [Char]
--
-- The type variable 'a' in the general case becomes a specific Char to match
-- the type of " yo" 

-- | 2. General function
-- (*) :: Num a => a -> a -> a
-- >>> myMult x = (x / 3) * 5
-- >>> :t myMult
-- myMult :: Fractional a => a -> a
--
-- Originally I expected, myMult :: Int -> Int, but I see now
-- that the / operator applies the Fractional constraint.
--
--
--



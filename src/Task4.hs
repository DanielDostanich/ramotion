module Task4 where

--https://projecteuler.net/problem=4
task4 :: IO ()
task4 = print $ largestPalindrome 3

largestPalindrome :: Integer -> Integer
largestPalindrome digits = let max = 10 ^ digits - 1 in
  maximum [i * j | i <- [1 .. max],
                   j <- [i .. max],
                   isPalindrome (i * j)]

isPalindrome :: Integer -> Bool
isPalindrome n =
  let list = makeList n
      half = length list `div` 2 in
        and $ zipWith (==) (take half list) (reverse $ drop (half + length list `mod` 2) list)
  where
    makeList n
      | n == 0    = []
      | otherwise = n `mod` 10 : makeList (n `div` 10)
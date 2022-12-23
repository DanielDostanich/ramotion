module Task3 where

import Data.List

--https://projecteuler.net/problem=3
task3 :: IO ()
task3 = print $ largestPrimeFactor 600851475143

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n = maximum $ factors n

factors :: Integer -> [Integer]
factors n = case find (\x -> (n `mod` x) == 0) [2 .. n `div` 2] of
  Nothing -> [n]
  Just factor -> factor : factors (n `div` factor)


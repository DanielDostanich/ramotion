module Task7 where

import Data.List

--https://projecteuler.net/problem=7
task7 :: IO ()
task7 = print $ nthPrime 10001

nthPrime :: Integer -> Integer
nthPrime n = sieve [2 .. ] `genericIndex` (n - 1)

sieve :: [Integer] -> [Integer]
sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
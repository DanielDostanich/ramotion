module Task10 where

--https://projecteuler.net/problem=15
task10 :: IO ()
task10 = print $ paths 20

binom :: Integer -> Integer -> Integer
binom n k = factorial n `div` (factorial (n - k) * factorial k)

factorial :: Integer -> Integer
factorial n = product [1..n]

paths :: Integer -> Integer
paths size = sum $ (^2) . binom size <$> [0 .. size]
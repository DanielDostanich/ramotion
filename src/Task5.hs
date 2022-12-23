module Task5 where

--https://projecteuler.net/problem=5
task5 :: IO ()
task5 = print $ smallestMultiple 20

smallestMultiple :: Integer -> Integer
smallestMultiple max = foldl lcm 1 [1 .. max]
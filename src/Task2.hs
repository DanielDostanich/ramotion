module Task2 where

--https://projecteuler.net/problem=2
task2 :: IO ()
task2 = print $ evenFibonacciSum 4000000

evenFibonacciSum :: Integer -> Integer
evenFibonacciSum max = sum $ takeWhile (< max) $ evenFibonacci 2 3
  where
    evenFibonacci fn fn1 = fn : evenFibonacci (fn + 2 * fn1) (2 * fn + 3 * fn1)
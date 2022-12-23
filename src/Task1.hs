module Task1 where

--https://projecteuler.net/problem=1
task1 :: IO ()
task1 = print $ findSum 1000

findSum :: Integer -> Integer
findSum n = fivesSum + threesSum - fifteensSum
  where
    threesCount = (n - 1) `div` 3
    threesSum = threesCount * (3 + (threesCount * 3)) `div` 2

    fivesCount = (n - 1) `div` 5
    fivesSum = fivesCount * (5 + (fivesCount * 5)) `div` 2

    fifteensCount = (n - 1) `div` 15
    fifteensSum = fifteensCount * (15 + (fifteensCount * 15)) `div` 2
module Task6 where

--https://projecteuler.net/problem=6
task6 :: IO ()
task6 = print $ diff 20

diff :: Integer -> Integer
diff max = (sum [1 .. max] ^ 2) - (sum $ fmap (^2) [1 .. max])
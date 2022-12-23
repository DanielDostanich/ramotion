module Task9 where

--https://projecteuler.net/problem=9
task9 :: IO ()
task9 = print $ head $ triplet 1000

triplet n = [a * b * c | a <- [1 .. n], b <- [1 .. a], let c = n - a - b, a^2 + b^2 == c^2]
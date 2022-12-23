module Main where

import Task1
import Task2
import Task3
import Task4
import Task5
import Task6
import Task7
import Task8
import Task9
import Task10

main :: IO ()
main = do
  report "Task 1: Multiples of 3 or 5: " task1
  report "Task 2: Even Fibonacci numbers: " task2
  report "Task 3: Largest prime factor: " task3
  report "Task 4: Largest palindrome product: " task4
  report "Task 5: Smallest multiple: " task5
  report "Task 6: Sum square difference: " task6
  report "Task 7: 10001st prime: " task7
  report "Task 8: Largest product in a series: " task8
  report "Task 9: Special Pythagorean triplet: " task9
  report "Task 10: Lattice paths: " task10




report :: String -> IO () -> IO ()
report msg task = do
  putStr msg
  task
  putStrLn ""
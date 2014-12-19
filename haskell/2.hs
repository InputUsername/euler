module Main where

main :: IO ()
main = putStrLn $ show euler2

euler2 :: Integer
euler2 = sum $ filter even (takeWhile (\x -> x < 4000000) fibs)

-- infinite list of Fibonacci numbers
fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

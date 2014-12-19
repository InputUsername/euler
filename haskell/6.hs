module Main where

main :: IO ()
main = putStrLn $ show euler6

euler6 :: Integer
euler6 = (sum [1..100] ^ 2) - (sum [x ^ 2 | x <- [1..100]])

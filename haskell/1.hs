module Main where

main :: IO ()
main = putStrLn $ show euler1

euler1 :: Integer
euler1 = sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..999]

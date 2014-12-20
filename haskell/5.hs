module Main where

main :: IO ()
main = putStrLn $ show euler5

euler5 :: Integer
euler5 = foldl (lcm) 1 [1..20]
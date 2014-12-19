module Main where

main :: IO ()
main = putStrLn $ show $ euler5 20

euler5 :: Integer -> Integer
euler5 0 = 1
euler5 n = lcm n $ euler5 (n-1)

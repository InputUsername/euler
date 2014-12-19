module Main where

main :: IO ()
main = putStrLn $ show euler16

euler16 :: Int
euler16 = sum $ digits (2 ^ 1000)

digits :: Integer -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

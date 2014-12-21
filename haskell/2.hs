module Main where
import Library

main :: IO ()
main = putStrLn $ show euler2

euler2 :: Integer
euler2 = sum $ filter even $ takeWhile (<4000000) fibs

module Main where
import Library

main :: IO ()
main = putStrLn $ show euler2

euler2 :: Integer
euler2 = sum $ filter even (takeWhile (\x -> x < 4000000) fibs)

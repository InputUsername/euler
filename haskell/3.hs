module Main where
import Library

main :: IO ()
main = putStrLn $ show euler3

euler3 :: Integer
euler3 = last $ primeFactors 600851475143

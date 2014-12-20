module Main where

main :: IO ()
main = putStrLn $ show euler3

euler3 :: Integer
euler3 = last $ primeFactors 600851475143

-- taken from http://stackoverflow.com/questions/21276844/prime-factors-in-haskell
-- I'll implement it myself later because lazy
primeFactors :: Integer -> [Integer]
primeFactors n =
	case factors of
		[] -> [n]
		_  -> factors ++ primeFactors (n `div` (head factors))
	where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]

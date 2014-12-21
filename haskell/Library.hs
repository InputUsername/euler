module Library where
import Data.Char (digitToInt)
import Data.OrdList (minus)

fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

-- taken from http://stackoverflow.com/questions/21276844/prime-factors-in-haskell
-- I'll implement it myself later because lazy
primeFactors :: Integer -> [Integer]
primeFactors n =
	case factors of
		[] -> [n]
		_  -> factors ++ primeFactors (n `div` (head factors))
	where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]

digits :: Integer -> [Int]
digits = map digitToInt . show

ndigits :: Integer -> Int
ndigits = length . show

-- taken from https://www.haskell.org/haskellwiki/Prime_numbers
-- I'll implement it myself later because lazy
primesTo m = eratos [2..m] where
	eratos [] 		= []
	eratos (p:xs) = p : eratos (xs `minus` [p,p+p..m])

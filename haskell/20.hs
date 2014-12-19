module Main where

main :: IO ()
main = putStrLn $ show euler20

euler20 :: Int
euler20 = sum $ digits $ fact 100

-- as found on http://stackoverflow.com/questions/6806946/built-in-factorial-function-in-haskell
fact n = product [n, n-1 .. 1]

digits :: Integer -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

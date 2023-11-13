-- Function's declaration --
-- Income type -> outcome type --
sumTo :: Int -> Int
-- Inizialize function --
sumTo 0 = 0
-- Define function with recursion --
sumTo n = n + sumTo (n - 1)
main :: IO ()
main = print (sumTo 8)
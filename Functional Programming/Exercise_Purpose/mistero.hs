-- Function's declaration --
-- Income type -> outcome type --
mistero :: Int -> Int
-- Inizialize function --
mistero 0 = 0
-- Define function with recursion --
mistero n = n + 2
main :: IO ()
main = print (mistero 1)
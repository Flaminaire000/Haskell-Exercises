apri :: [(Int, Int)] -> [Int, Int]
apri [] [] = []
apri ((x, y) : xs) = (x : apri xs, y : apri xs)
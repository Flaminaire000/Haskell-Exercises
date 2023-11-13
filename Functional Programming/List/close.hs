chiudi :: [Int] -> [Int] -> [(Int, Int)]
chiudi [] [] = []
chiudi (x : xs) (y : ys) = (x, y) : chiudi xs ys 
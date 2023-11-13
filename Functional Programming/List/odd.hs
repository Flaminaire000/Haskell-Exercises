dispari :: [Int] -> [Int]
dispari [] = []
dispari (x : xs) | (x `mod` 2) == 1 = [x] ++ dispari(xs)
              | otherwise           = dispari(xs)
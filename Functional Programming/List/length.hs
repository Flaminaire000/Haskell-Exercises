gjate :: [Int] -> Int
gjate [] = 0 
gjate (x : xs) = 1 + gjate xs
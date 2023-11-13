shumezime :: [Int] -> Int
shumezime [] = 0
shumezime (x : xs) = x + shumezime xs
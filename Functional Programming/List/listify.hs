listify :: [(Int, Int)] -> [Int]
listify [] = 0
listify ((x, y) : xs) = (x * y) : listify xs

--MAYBE VERSION 
prodotto :: [Maybe Int] -> [Int]
prodotto (Nothing : xs) = prodotto xs
prodotto (Just x : xs) = x : prodotto xs
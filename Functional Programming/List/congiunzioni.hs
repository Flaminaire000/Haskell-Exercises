--Definire le funzioni congiunzioni :: [Bool] -> Bool e
--disgiunzioni :: [Bool] -> Bool
congiunzioni :: [Bool] -> Bool
congiunzioni [] = False
congiunzioni (x : xs) = x && congiunzioni xs

disgiunzioni :: [Bool] -> Bool
disgiunzioni [] = False
disgiunzioni (x : xs) = x || congiunzioni xs
--Definire la funzione negazioni :: [Bool] -> [Bool] che nega
--una lista di valori booleani
negazioni :: [Bool] -> [Bool]
negazioni [] = []
negazioni (x : xs) | x == True  = [False] ++ negazioni xs
                   | otherwise  = [True] ++ negazioni xs
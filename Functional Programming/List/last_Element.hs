--Definire la funzione parziale ultimoP :: [Int] -> Int e la
--funzione totale ultimoT :: [Int] -> Maybe Int per ottenere
--l’ultimo elemento di una lista, se presente
ultimoP :: [Int] -> Int
ultimoP [] = 0
ultimoP (x : xs) = ultimoP xs

ultimoT :: [Int] -> Maybe Int
ultimoT [] = Nothing
ultimoT [x] = Just x
ultimoT (x : xs) = ultimoT xs
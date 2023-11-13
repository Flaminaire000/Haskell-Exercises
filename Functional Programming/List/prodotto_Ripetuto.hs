--Definire la funzione prods :: [Int] -> Int che calcola il
--prodotto degli elementi di una lista
prods :: [Int] -> Int
--In base case the minum value axcepted must be 1 cause if i
--use 0 all tre multiplications will be 0 as well despite the 
--list isn't empty
prods [] = 1
prods (x : xs) = x * prods xs
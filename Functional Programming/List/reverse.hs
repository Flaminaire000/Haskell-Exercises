--Usando l’operatore ++ definire la funzione inversa :: [Int] ->
--[Int] che inverte l’ordine degli elementi di una lista di numeri interi
inversa :: [Int] -> [Int]
inversa [] = []
inversa (x : xs) = inversa (xs) ++ [x]
--Definire la funzione pari :: [Int] -> [Int] che, applicata a
--una lista di numeri interi xs, produca la lista degli elementi pari di xs
pari :: [Int] -> [Int]
pari [] = []
pari (x : xs) | (x `mod` 2) == 0 = [x] ++ pari(xs)
              | otherwise        = pari(xs)
import Prelude
--Calcolare la somma degli elementi di una lista di numeri.
somma :: Num a => [a] -> a
somma (x : xs) = foldr (+) x xs

--Calcolare la media degli elementi pari di una lista di numeri interi.
--CHATGPT SOLUTION
mediaPari :: [Int] -> Double
mediaPari xs = let
                 (sumPari, numPari) = foldr aggiungiSePari (0, 0) xs
               in
                 if numPari == 0 then 0 else fromIntegral sumPari / fromIntegral numPari
               where
                 aggiungiSePari :: Int -> (Int, Int) -> (Int, Int)
                 aggiungiSePari x (acc, cnt)
                   | even x    = (acc + x, cnt + 1)
                   | otherwise = (acc, cnt)

--Calcolare il prodotto degli elementi non nulli di una lista di numeri.
result :: (Num a, Eq a) => [a] -> a
result (x : xs) =  foldr (*) x (filter (/=0) xs)

--Calcolare il modulo di un vettore rappresentato come lista di numeri.
arrayModule :: Floating a => [a] -> a
arrayModule [] = 0
arrayModule (x : xs) = sqrt (sum (map (^2) xs))

--Calcolare la lunghezza di una lista (senza usare length).
lunghezza :: Num a => [a] -> a
lunghezza [] = 0
lunghezza (x : xs) = 1 + lunghezza (xs)

--Verificare se una lista è ordinata.
isSortedList :: Ord a => [a] -> Bool
isSortedList []           = False
isSortedList [_]          = True
isSortedList (x : y : xs) = (x <= y) && isSortedList(y : xs) 

--Verificare se una lista non è ordinata.
isNotSortedList :: Ord a => [a] -> Bool
isNotSortedList []           = False
isNotSortedList [_]          = False
isNotSortedList (x : y : xs) = (x > y) || isNotSortedList(y : xs) 

--Verificare se una lista contiene elementi duplicati.
isDoubled :: Ord a => [a] -> Bool
isDoubled [] = False
isDoubled [_] = False
isDoubled (x : xs) = elem x xs || isDoubled(xs)

--Concatenare due liste (senza usare ++).
union :: [a] -> [a] -> [a]
union [] [] = []
union xs ys = foldr (:) ys xs

--Concatenare tutte le liste di una lista di liste (senza usare concat).
--CHATGPT SOLUTION
concatAll :: [[a]] -> [a]
concatAll xs = foldr append [] xs
  where append ys acc = foldr (:) acc ys
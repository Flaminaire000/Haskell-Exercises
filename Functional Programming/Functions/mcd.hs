--Definire la funzione gcd :: Int -> Int -> Int che, applicata a
--due numeri interi positivi m ed n, calcoli il massimo comun divisore di
--m ed n. Fare riferimento all’algoritmo di Euclide.

--FUNCTION DEFINITION
mcd :: Int -> Int -> Int

--Function explanation of Euclide's algorithm
-- https://it.wikipedia.org/wiki/Algoritmo_di_Euclide
mcd m 0 = m
mcd m n = mcd n (m `mod` n)
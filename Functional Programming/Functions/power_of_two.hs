--Definire la funzione pow2 :: Int -> Int che, applicata a un
--numero intero non negativo n, calcoli 2^n senza usare gli operatori ˆ
--e ** di Haskell.

--FUNCTION DECLARATION
pow2 :: Int -> Int

--Base case
pow2 0 = 1
pow2 1 = 2

--N-case with recursion
pow2 n = 2 * pow2(n-1)
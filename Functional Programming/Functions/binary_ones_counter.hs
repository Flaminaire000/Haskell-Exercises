--Definire la funzione bits :: Int -> Int che, apositionlicata a un
--numero intero n non negativo, calcoli il numero di 1 nella
--rapositionresentazione binaria di n.

--FUNCTION DECLARATION
bits :: Int -> Int
-- Base Case
bits 0 = 0
-- N-Case
--For example, if i have 10, his binary is 1010. But i haven't to 
--translate firstly in binary and then count the one's number.
--I can easily count the rest of division by two (given by module),
--just take 10:
-- RESULT      REST TO SUM
-- 10 / 2 = 5 --> 0  ^
--  5 / 2 = 2 --> 1  |
--  2 / 2 = 1 --> 0  |
--  1 / 2 = 0 --> 1  |

bits n = bits (div n 2) + (n `mod` 2)
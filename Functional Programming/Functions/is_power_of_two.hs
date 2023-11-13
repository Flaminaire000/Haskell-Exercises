--Definire la funzione powerOfTwo :: Int -> Bool che, applicata
--a un numero intero n non negativo, determini se n è una potenza di
--2 oppure no.

--FUNCTION DECLARATION
powerOfTwo :: Int -> Bool

--FUNCTION DEFINITION
--If i wanna find the fact that x is or not a result of 2^n,
--i have to divide the given number by 2 untill the mod operation
--give me 0. If in this loop, x reach the value of 2, means that
--suerly the x was a result. Otherwise i can't divide by two anymore
--and the value is not 2, so i can say that it's False for sure.

powerOfTwo x | x == 2         = True
             | x `mod` 2 == 0 = powerOfTwo (div x 2) --Check the mod but the recursion is given by division
             | x `mod` 2 == 1 = False

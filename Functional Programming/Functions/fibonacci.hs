--La sequenza di Fibonacci inizia con i numeri 0 e 1 e ogni numero
--successivo è la somma dei due che lo precedono. Definire una
--funzione fibo :: Int -> Int che, applicata a un numero
--naturale k, restituisca il numero di Fibonacci con indice k.

--METHOD DECLARATION
fibo :: Int -> Int

--In this case i have at least 2 BASE CASE
fibo 0 = 1
fibo 1 = 1

--N-case
--The complexity of Fibonacci's function is exponential so the
--solution is not optimized. To veify it just prove fibo 30 and fibo 34
fibo k = (fibo (k - 2)) + (fibo (k - 1))

--The following codde simulate the behaviour of While cycle
--Three paramethers and one Integer return
--Last one is the index
go :: Int -> Int -> Int -> Int
go m n 0 = m
go m n k = go n (m + n) (k - 1)

--Fix the complexity issue
betterFibo :: Int -> Int
betterFibo k = go 0 1 k 
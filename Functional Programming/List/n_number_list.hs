--NOT REALLY OPTIMIZED SYSTEM
build :: Int -> [Int]
--Case Base Neccesary in order to stop when n == 0
build 0 = []
--calling Build recoursively
build n = build (n - 1) ++ [n]

--ENDLESS SYSTEM
make :: Int -> [Int]
make n = take n (da 1)
    where 
        da k = k : da (k + 1)

--INDEX SOLUTION
--Strating from 1 I add 1 recursively till my k > n
--so I add as last element []
till :: Int -> [Int]
till n = go 1
    while
    go k | k <= n    = k : go (k + 1)
         | otherwise = []

--BUFFER SOLUTION
buffer :: Int -> [Int]
buffer n = go [] n 
    where
        go xs 0 = xs --When n == 0 i resturn all the list xs
        go xs n = go (n : xs) (n - 1) --Till n != 0, decrease n by one and add n to silst xs
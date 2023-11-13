--A code explanation of mergesort's functioning
--I already have a sorted array (it must be sorted)
--then i split this one in two pieces untill the remaining
--part of the stating array is a single unit. Then 

--FUNCTION DECLARATION
mergesort :: Ord a -> [a] -> [a]
--Both empty
mergesort [] = []
--With something init
mergesort [x] = [x]

--The list should contains at least two element
mergesort xs = merge (mergesort((ys)) mergesort((zs))) --Same size or size - 1 
        where 
            n  = length xs 'div' 2 --Number of partition's element
            ys = take n xs
            zs = drop n xs--What remaining in list after dropping

--AUXILLIARY FUNCTION DECLARATION
--Not all of given list have the same size
merge :: Ord a -> [a] -> [a] -> [a]
--First list empty & second list full
merge [] as = as 
--First list full & second list empty
merge bs [] = bs
--Both full but x < y
merge (b : bs) (a : as) | b <= a = b : merge bs (a : as)
--Both full but y > x
merge bs (a : as) = a : merge bs as
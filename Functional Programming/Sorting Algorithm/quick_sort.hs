--Pick a element that will be a 'Pivot' then
--sort all the elements minors than pivont on
--the left of it and the biggers on thr right

--FUNCTION DEFINITION
qsort :: Ord a => [a] -> [a]
--Base case
qsort [] = []
--We start from a collecions and we want two of them
--that respects the previous condition
-- --------------------------------------------------------------------------------------
-- |                                     SINTAX:                                        |
-- | (RECURSIVE SORTING SMALLERS VALUES) ++ [PIVOT] ++ (RECURSIVE SORTING BIGGER VALUES)|
-- --------------------------------------------------------------------------------------
qsort (x : xs) = qsort (filter (< x) xs) ++ [x] ++ qsort (filter (>= x) xs)
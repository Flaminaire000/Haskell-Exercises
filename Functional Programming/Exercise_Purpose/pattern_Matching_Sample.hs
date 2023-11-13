--FUNCTION DECLARATION
open :: [(Int,Bool)] -> [(Int,Bool)]
--Base case
open [] = ([], [])

--The result contains 2 list, with the first element x
--x
--When i use cons at the right i gave to insert a list,
--although on the left a single element.
open ((x, y) : (z, s)) = (x : ..., y : ...)
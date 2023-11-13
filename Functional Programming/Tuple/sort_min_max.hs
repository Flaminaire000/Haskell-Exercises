--Definire una funzione sort :: (Int, Int, Int) -> (Int,
--Int, Int) che, applicata a una tripla di numeri interi, restituisca la
--tripla con le componenti ordinate in modo non decrescente.
--FUNCTION DECLARATION
sort :: (Int, Int, Int) -> (Int, Int, Int)
--Use walls in order to know when i have to sort again
--I return only when i'm sure that the three variable are already sorted
sort (x, y, z) | x > y     = sort(y, x, z) --first element is clearly > than second
               | y > z     = sort(x, z, y) --second element is cleary > than third
               | otherwise = (x, y, z) --all element are sorted min to max
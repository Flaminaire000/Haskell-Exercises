--Definire una funzione swap :: (Int, Int) -> (Int, Int)
--che, applicata a una coppia di numeri interi, restituisca la coppia con
--le componenti scambiate.

--Just a funtion declaration with swapping formula
--Haskell is so clever that don't need to specify an istance variable 
--in order of make the swapping
swap :: (Int, Int) -> (Int, Int)
swap (x, y) = (y, x)
--Realizzare una funzione con tipo Eq a => [a] -> Bool che,
--applicata a una lista, determina se la lista contiene elementi duplicati.
doubleInIt :: Eq a => [a] -> Bool
doubleInIt []  = False
doubleInIt (x : xs) = doubleness x xs || doubleInIt(xs) 
    where
        doubleness _ [] = False
        doubleness z (x : xs) = z == x || doubleness z xs
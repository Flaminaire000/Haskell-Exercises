-- In un file 2048.hs di dimensione massima 155 byte dichiarare una
-- stringa s composta da 2048 caratteri a. Applicare la funzione
-- length a s per verificare che la lunghezza di s sia corretta.

-- VARIABLE DECLARATION
-- Static assignement
s :: String 
-- I used a function of module 'PRELUDE' called 'REPLICATE' that have the following sintax:
--      replicate       number_of_occurence      character that i need to repeat
s = replicate 2048 'a'

occurence :: Int
-- In order to get the length of the string i use function 'LENGTH' from 'PRELUDE' that
-- has he same function of java's one
occurence = length s

--TAKE n i pased a string and take function extract from the string the first n character
str :: String
str = take 2048 a
    where
        a = "a" ++ a
occurencestr = length str

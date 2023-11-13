--Function that give me the absolute value of an Integer
absolute :: Int -> Int
absolute x | x >= 0    = x --In this braches the value is non negative so it's absolute already
           | otherwise = negate x --Here i have to return the negation of x -(-3) = 3

--The following code cause error because not every generic number from Num can work
--with the operators <, >, = . EDUCATIONAL POURPOSE
--abs :: Num a => a -> a 
--abs x | x >= 0    = x
--      | otherwise = negate x

sign :: Float -> Int
sign x   | x < 0     = -1
         | x > 0     = 1
         | otherwise = 0

--The following code is the same as the previous one, but in differnt notation
sign1 :: Float -> Int
sign1 x  | x < 0     = -1
sign1 x  | x > 0     = 1
sign1 x              = 0 --I don't use otherwise clause

--To abilitate warnings just type in the prompt -wall

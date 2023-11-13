--() stand for unit
f :: () -> Int
--I can write the value's type instead of the variable
--but has no sense, even if i declare the function as
-- f :: Int -> () cause i can make the most complex operations
--but f give me back always a unit. So it's senseless and useless
f () = 2 + 3

--Take as paramethers a couple 
g :: (Int,Int) -> ((Int,Int), (Int,Int))
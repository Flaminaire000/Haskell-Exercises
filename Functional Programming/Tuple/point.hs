--Alias Type to define the new type "Point" that's formed by
--a couple of Float value that rapresents the carthesian coordination
--remember that Point == (Float, Float)
type Point = (Float, Float)

--Function that means to get two point in the space and return 
--the distance amoung them, the sintax is the following:
--distance   POINT_ONE   POINT_TWO
--where for formula's purpose
distance :: Point -> Point -> Float
distance(x, y) (a, b) = sqrt ((dx ^ 2) + (dy ^ 2))
    where
        dx = x - a
        dy = y - b
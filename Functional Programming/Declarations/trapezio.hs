--                             TASK
--In un file Trapezio.hs dichiarare baseMinore, baseMaggiore,
--altezza, perimetro e area di un trapezio rettangolo, esprimendo
--perimetro e area in funzione delle altre quantità fissate a piacere.

-- VARIABLE DECLARATION
-- Static assignement
baseMaggiore :: Float
baseMaggiore = 10

baseMinore :: Float
baseMinore = 5

height :: Float
height = 5

-- Added poupusly in order to make easier the calculation
side :: Float
side = 5

-- Perimether's formula
perimether :: Float
perimether = baseMaggiore + baseMinore + height + side

-- Area's formula
area :: Float
area = ((baseMaggiore + baseMinore) * height)/2

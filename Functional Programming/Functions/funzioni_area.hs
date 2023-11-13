-- FUNCTION DEFINITION
--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                              AREA1                            |
-- | Definire la funzione area1 :: Float -> Float tale che area1   |
-- | r è l’area del cerchio con raggio r.                          |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

ray :: Float
ray = 0

area1 :: Float -> Float
area1 ray = pi * ray ^ 2

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                              AREA2                            |
-- | Definire la funzione area2 :: Float -> Float -> Float tale    |
-- | che area2 b h è l’area del triangolo rettangolo di base b     |
-- | e alto h.                                                     |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

b :: Float
b = 0
h :: Float
h = 0

area2 :: Float -> Float -> Float
area2 b h = ((b*h)/2)

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                              AREA3                            |
-- | Definire la funzione area3 :: Float -> Float -> Float ->      |
-- | Float tale che area3 a b h è l’area del trapezio rettango     |
-- | lo con base minore a, base maggiore c e altezza h.            |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

baseMinore :: Float
baseMinore = 0

baseMaggiore :: Float
baseMaggiore = 0

height :: Float
height = 0

area3 :: Float -> Float -> Float -> Float
area3 baseMaggiore baseMinore height = ((baseMaggiore + baseMinore)*height)/2

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                              AREA4                            |
-- | Definire la funzione area4 :: Float -> Float tale che area4   |
-- | p è l’area del cerchio di perimetro p.                        |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

perimethers :: Float
perimethers = 0

area4 :: Float -> Float
area4 perimethers = ((perimethers ^ 2)/(4*pi))

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                              PERIM                            |
-- | Definire la funzione perim :: Float -> Float rale che perim   |
-- | a è il perimetro del cerchio di area a.                       |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

area :: Float
area = 0

perim :: Float -> Float
perim area = sqrt (4 * pi * area)

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                             ISEVEN                            |
-- | Definire la funzione isEven :: Int -> Bool che determina se   |
-- | un numero intero è pari oppure no.                            |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

x :: Int
x = 0

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                              LEAP                             |
-- | Definire la funzione leap :: Int -> Bool che determina se un  |
-- | anno è bisestile. Suggerimento: usare i connettivi logici     |
-- |  && e ||.                                                     |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

year :: Int
year = 0

leap :: Int -> Bool
leap year = ((((year `mod` 4) == 0) && ((year `mod` 100) /= 0)) || ((year `mod` 400) == 0))

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                             ISLEAP                            |
-- | Definire la funzione leap :: Int -> Bool che determina se un  |
-- | anno è bisestile.                                             |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

anno :: Int
anno = 0

-- It's a variation of preavious function Leap that avoid the use of
-- logical opartions and check if the year in input is leap using only
-- Switch case clause and the guard

isLeap :: Int -> Bool
isLeap anno
    | anno ` mod ` 400 == 0 = True
    | anno ` mod ` 100 == 0 = False
    | anno ` mod ` 4 == 0 = True
    | otherwise = False

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                          LEAPVARIATION                        |
-- | Definire la funzione leap :: Int -> Bool che determina se un  |
-- | anno è bisestile. Suggerimento: usare i connettivi logici     |
-- |  && e ||.                                                     |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

-- Dopo ciascuna equazione dichiarata definisco delle dichiarazioni locali ausiliari alla funzione

--I have grouped mod operation in a integer function multipleof 
--that give me 0 if the mod operations amoung 2 numbers is 0 
--and otrher value  otherwise. It only is fìdefined for readability pourpose cause 
--its exactly the same of preavious leap

bisestile :: Int -> Bool
bisestile n = (n ` multipleof ` 4 && not (n ` multipleof ` 100)) || (n ` multipleof ` 400)
    where
        multipleof x y = x ` mod ` y = 0

--LET IN construct that defines localy something 
--firstly i introduce the function and then where i used it
--let x = E1 in E2 i value e1 but if in E2 i have some referral to x i used E1

bisestile n = let  multipleof x y = x ` mod ` y = 0
              in (n ` multipleof ` 4 && not (n ` multipleof ` 100)) || (n ` multipleof ` 400)

--  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- |                                P                              |
-- | Definire la funzione p :: Float -> Float che rappresenti il   |
-- | polinomio di secondo grado p(x) = x^2+ 2x + 1.                |
-- | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

value :: Float
value = 0

p :: Float -> Float
p value = ((value ^ 2) + (value * 2) + 1)

--remember that Point == (Float, Float)
type Point = (Float, Float)

slope :: Point -> Point -> Maybe Float
slope (a, b) (c, d) | dx /= 0   = Just ((d - b) / dx)
                    | otherwise = Nothing
    where
        dx = c - a

--Showing results as String
--To avoide "Maybe" value just use maybe as a passen paramether
--and not as return type
showSlope :: Maybe Float -> String
showSlope Nothing = " Vertical Line "
showSlope (Just v) = " The Slope is " ++ show v
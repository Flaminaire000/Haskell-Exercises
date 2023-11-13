--Si considerino i seguenti tipi, successivamente realizzare funzioni
-- “ragionevoli” di conversione f :: T -> S e g :: S -> T. In base ai
--risultati ottenuti, possiamo dire che i tipi T ed S permettono di
--rappresentare la stessa quantità di informazione?
--type T = Maybe (Bool, Bool)
--type S = (Maybe Bool, Maybe Bool)

--TYPE DECLARATION
type T = Maybe (Bool, Bool)
type S = (Maybe Bool, Maybe Bool)

--Convertion from T to S
f :: T -> S
f Nothing = (Nothing, Nothing)
f (Just(x, y)) = (Just x, Just y)

--Convertion from S to T
g :: S -> T
g (Nothing, _ ) = Nothing
g (_ , Nothing) = Nothing
g (Just x, Just y) = Just(x, y)

--Maybe(Bool, Bool) has maximun 5 possible combination:
--Nothing
--(False, False)
--(False, True)
--(True, False)
--(True, True)
--So we can say that T can reach 5 possible solutions

--(Maybe Bool, Maybe Bool) can be:
--(Nothing, Nothing)
--(Nothing, False)
--(Nothing, True)
--(False, Nothing)
--(False, False)
--(False, True)
--(True, Nothing)
--(True, False)
--(True, True)
--In other word a maximum of 9 possible results for S

--With all the evidence, we can definetively say that
--I can covert wisely from T to S but not contrary.
--So function "f" is injective but "g".
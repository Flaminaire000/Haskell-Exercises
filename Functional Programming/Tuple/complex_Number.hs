--Un numero complesso può essere rappresentato da una coppia
--ordinata di numeri (per esempio, di tipo Double). Definire funzioni
--per sommare, negare, coniugare e sottrarre numeri complessi e
--calcolarne il modulo.

--TYPE DEFINITION
type ComplexNumber = (Double, Double)

--N.B. All the results are suposed to be multiply by an constant
-- i = sqrt(-1) in order to making the result complex as well

--ARITHMATICAL OPERATIONS
--Sum Declaration
summ :: ComplexNumber -> ComplexNumber -> ComplexNumber
summ (x, y) (a, b) = ((x + a), (y + b)) 

--Diff Declaration
diff :: ComplexNumber -> ComplexNumber -> ComplexNumber
diff (x, y) (a, b) = ((x - a), (y - b))

--Time Declaration
time :: ComplexNumber -> ComplexNumber -> ComplexNumber
time (x, y) (a, b) = (((x * a) - (y * b)), ((x * b) + (y * a)))

--Division Declaration
divv :: ComplexNumber -> ComplexNumber -> ComplexNumber
divv (x, y) (a, b) = (((x * a + y * b) / (a ^ 2 + b ^ 2)), ((y * a - x * b) / (a ^ 2 + b ^ 2)))

--LOGICAL OPERATIONS
--Opposite
nega :: ComplexNumber -> ComplexNumber
nega (x, y) = (negate x, negate y)

--Conjugate op. needs only to reverse irrational part
conjugate :: ComplexNumber -> ComplexNumber
conjugate (x, y) = (x, negate y)

--Mod always return a Double not a Complex anymore
modulus :: ComplexNumber -> Double
modulus (x, y) = sqrt((x ^ 2 + y ^ 2))

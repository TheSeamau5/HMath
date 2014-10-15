module Vector2 where
{-| Represents a two dimensional vector.

    #Type and Constructors
    @docs Vector, origin, xUnit, yUnit

    #Mathematical Operations
    @docs add, subtract, multiply, divide, dotMultiply, norm, mannhattanNorm, length, scaleBy, distance, manhattanDistance

    #Useful aliases and operators
    @docs (<+>), (<->), (<*>), (</>), (<.>), sub, mul, div, dot
-}

{-| The Vector type for 2-d vector operations. Useful for 2d graphics and vector math -}
type Vector = { x : Float, y : Float }

{-| Default constructor at x : 0, y : 0 -}
origin = Vector 0 0

{-| Simple constructor at x : 1, y : 0 -}
xUnit = Vector 1 0

{-| Simple Constructor a x : 0, y : 1 -}
yUnit = Vector 0 1


{-| Vector addition.

    (Vector 2 1) <+> (Vector 4 4) == Vector 6 5
-}
(<+>) : Vector -> Vector -> Vector
p <+> q = Vector (p.x + q.x) (p.y + q.y)

{-| Vector addition

    add (Vector 2 1) (Vector 4 4) == Vector 6 5
-}
add : Vector -> Vector -> Vector
add = (<+>)


{-| Vector subtraction

    (Vector 3 4) <-> (Vector 2 2) == Vector 1 2
-}
(<->) : Vector -> Vector -> Vector
p <-> q = Vector (p.x - q.x) (p.y - q.y)

{-| Vector subtraction

    subtract (Vector 3 4) (Vector 2 2) == Vector 1 2
-}
subtract : Vector -> Vector -> Vector
subtract = (<->)

{-| Vector subtraction

    sub (Vector 3 4) (Vector 2 2) == Vector 1 2
-}
sub : Vector -> Vector -> Vector
sub = subtract

{-| Vector multiplication. Element by element multiplication.
    For dot product see "<.>".

    (Vector 3 4) <*> (Vector 2 2) == Vector 6 8
-}
(<*>) : Vector -> Vector -> Vector
p <*> q = Vector (p.x * q.x) (p.y * q.y)

{-| Vector multiplication. Element by element multiplication.
    For dot product see "dotMultiply".

    multiply (Vector 3 4) (Vector 2 2) == Vector 6 8
-}
multiply : Vector -> Vector -> Vector
multiply = (<*>)

{-| Vector multiplication. Element by element multiplication.
    For dot product see "dot".

    mul (Vector 3 4) (Vector 2 2) == Vector 6 8
-}
mul : Vector -> Vector -> Vector
mul = multiply

{-| Vector division. Element by element division. 
    
    (Vector 6 4) </> (Vector 2 2) == Vector 3 2 
-}
(</>) : Vector -> Vector -> Vector
p </> q = Vector (p.x / q.x) (p.y / q.y)

{-| Vector division. Element by element division. 
    
    divide (Vector 6 4) (Vector 2 2) == Vector 3 2 
-}
divide : Vector -> Vector -> Vector
divide = (</>)

{-| Vector division. Element by element division. 
    
    div (Vector 6 4) (Vector 2 2) == Vector 3 2 
-}
div : Vector -> Vector -> Vector
div = divide

{-| Dot product. 
    
    (Vector 3 4) <.> (Vector 2 2) == 14
-}
(<.>) : Vector -> Vector -> Float
p <.> q = p.x * q.x + p.y * q.y

{-| Dot product. 
    
    dotMultiply (Vector 3 4) (Vector 2 2) == 14
-}
dotMultiply : Vector -> Vector -> Float
dotMultiply = (<.>)

{-| Dot product. 
    
    dot (Vector 3 4) (Vector 2 2) == 14
-}
dot : Vector -> Vector -> Float
dot = dotMultiply


{-| Find the nth norm of a vector. This is a generalized form of length or distance.
    Note that typical pythagorean length or euclidean distance is just "norm 2".

    norm 2 (Vector 5 12) == 13
-}
norm : number -> Vector -> number
norm n v = ((v.x ^ n) + (v.y ^ n)) ^ (1 / n)

{-| Find the manhattan (or taxicab) norm of a vector. -}
mannhattanNorm : Vector -> number
mannhattanNorm v = (abs v.x) + (abs v.y)

{-| Find the euclidean length of a vector. 
    This is the most typical measure for the length of a vector. 
    Use this if unsure. 

    length (Vector 5 12) == 13
-}
length : Vector -> number
length = norm 2

{-| Scalar multiplication. Scale a vector by some value
    
    scaleBy 3 (Vector 2 8) == Vector 6 24
-}
scaleBy : number -> Vector -> Vector 
scaleBy n v = Vector (v.x * n) (v.y * n)

{-| Finds the euclidean distance between two vectors. 
    This is the most typical measure of distance between two vectors.
    Use this if unsure
-}
distance : Vector -> Vector -> number
distance p q = length (p <-> q)

{-| Finds the manhattan (or taxicab) distance between two vectors.
-}
mannhattanDistance : Vector -> Vector -> number
mannhattanDistance p q = mannhattanNorm (p <-> q)


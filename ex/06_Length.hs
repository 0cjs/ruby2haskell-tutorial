data Length = Length Int
    deriving Show

(|+|) :: Length -> Length -> Length
Length x |+| Length y = Length (x+y)

main = print $ Length 3 |+| Length 7

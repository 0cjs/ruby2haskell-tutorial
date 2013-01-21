x   = 100
f   = x + 1
g x = x + 1
h   =  let x = 300  -- "local variable"
        in x + 1

main =
     do putStr "x     = "; print x
        putStr "f     = "; print f
        putStr "g 200 = "; print (g 200)
        putStr "h     = "; print h

data Color = Red | Green | Blue
    deriving (Show)

go :: Color
go = Green

aoi :: Color -> Bool
aoi Red   = False
aoi Green = True
aoi Blue  = True

matching :: Color -> Color -> Bool
matching c1 c2
    | aoi c1    = aoi c2
    | otherwise = not (aoi c2)

find p (x:xs) | p x       = x
              | otherwise = find p xs

main =
     do print (aoi go)
        print (matching Red Green)
        print (matching Green Blue)

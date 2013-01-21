data Point = Cart Double Double | Polar Double Double
    deriving Show

toCart :: Point -> Point
toCart xy@(Cart _ _) = xy
toCart (Polar r θ)   = Cart (r * cos θ) (r * sin θ)

distanceTo :: Point -> Point -> Double
distanceTo p1 p2 = sqrt $ (x2-x1)^2 + (y2-y1)^2
    where Cart x1 y1 = toCart p1
          Cart x2 y2 = toCart p2

main =
     do let p1 = Cart 3 5
            p2 = Polar 5 (3.1415/4)
        print $ toCart p1
        print $ toCart p2
        print $ p1 `distanceTo` p2

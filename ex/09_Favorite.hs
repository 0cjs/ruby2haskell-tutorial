class Favorite a where
    isFavorite, notFavorite :: a -> Bool
    isFavorite  = not.notFavorite
    notFavorite = not.isFavorite

data Color = Red | Green | Blue

instance Favorite Color where
    isFavorite Green = True
    isFavorite _     = False

instance Favorite Int where
    notFavorite = (/= 42)

hasFavorite :: Favorite a => [a] -> Bool
hasFavorite (x:xs) = isFavorite x || hasFavorite xs
hasFavorite []     = False

main = do
    print $ isFavorite Green
    print $ isFavorite Blue
    print $ notFavorite Red
    print $ isFavorite (41::Int)
    print $ hasFavorite [Red, Green, Blue]
    print $ hasFavorite [(0::Int)..39]

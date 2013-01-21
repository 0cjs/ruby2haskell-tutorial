class Eq a => Favorite a where
    favorite :: a
    isFavorite :: a -> Bool
    isFavorite = (== favorite)

data Color = Red | Green | Blue         deriving (Show, Eq)

instance Favorite Color where
    favorite = Green

instance Favorite Int where
    favorite = 42

main = do
    print $ (favorite::Color)
    print $ isFavorite Blue
    print $ isFavorite (42::Int)

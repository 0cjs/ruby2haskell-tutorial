data List a = a :. (List a) | Nil
    deriving Show
infixr 2 :.         -- magic to make this right-associatve with low precedence

l0 :: List Int
l0 = Nil

l1 :: List Int
l1 = 1 :. 0 :. Nil

la :: List Char
la = 'c' :. 'b' :. 'a' :. Nil

fruits :: List String
fruits = "pear" :. "peach" :. "apple" :. Nil

sumListOfInt :: List Int -> Int
sumListOfInt Nil = 0
sumListOfInt (i :. is) = i + sumListOfInt is

len :: List a -> Int
len Nil = 0
len (_ :. xs) = 1 + len xs

main = do
    print l0
    print l1
    print la
    print fruits
    print $ sumListOfInt (3 :. 7 :. 12 :. Nil)
    print $ len (1 :. 2 :. 3 :. 4 :. Nil)

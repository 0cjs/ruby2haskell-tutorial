find p xs =
    if p (head xs) then (head xs)
                   else find p (tail xs)

main = print (find (\x -> x > 3) [1,2,3,4,5])

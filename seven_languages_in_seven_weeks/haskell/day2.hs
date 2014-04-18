quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
  let lte = quicksort [a | a <- xs, a <= x]  
      gt = quicksort [a | a <- xs, a > x]  
  in  lte ++ [x] ++ gt 

cmpsort :: (a -> a -> Bool) -> [a] -> [a] 
cmpsort f [] = []
cmpsort f (x:xs) = cmpsort f [a | a <- xs, f a x] ++ [x] ++ cmpsort f [a | a <- xs, not (f a x)]


currencyAmount (d:s) = read (filter (/= ',') s) :: Float

fx x = x:(fx (x + 3))
fy y = y:(fy (y + 5))
fxy x y = zipWith (+) (fx x) (fy y)

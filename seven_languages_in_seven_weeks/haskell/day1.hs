reverse' xs = rev xs [] where
	rev [] acc = acc  	
	rev	(x:xs) acc = rev xs (x:acc)

colorTuples colors = [(a,b) | a <- colors, b <- colors, a < b] 

multiplicationTable = [(a,b,a*b) | a <- [1..12],  b <- [1..12], a /= b]

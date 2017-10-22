
--Safe Sqrt
safeSqrt x = if x < 0 then "invalid input" else show $ sqrt x

--Averages of numbers
averages :: Maybe [Double] -> [Double]
averages Nothing = []
averages (Just l)
  | length l < 2 = []
  | otherwise = buildList (head l) (tail l)
  where buildList _ [] = []
        buildList pred (h:t) = (pred+h)/2 : (buildList h t)

--Build Tower        
buildTower :: Int -> [String]
buildTower n = map floor [1..n]
  where spaces m = replicate (n-m) ' '
        blocks m = replicate (1+(m-1)*2) '*'
        floor m = spaces m ++ blocks m ++ spaces m
        
main = putStr("")
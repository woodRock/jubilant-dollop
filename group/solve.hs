solve :: [Int] -> [[Int]]
solve l = [[x,y,z] | x<-l, y<-l, z<-l, x < y && y < z, sum [x,y,z] == 0]

main :: IO ()
main = interact $ unlines . map show . solve . map read

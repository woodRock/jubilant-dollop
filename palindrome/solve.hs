import Data.Char (isLetter, toLower)

isPalindrome :: String -> Bool
isPalindrome x 
    | length x < 2 = True
    | head x /= last x = False
    | otherwise = isPalindrome . init . tail $ x

solve :: String -> Bool
solve = isPalindrome . map toLower . filter isLetter

main = interact $ show . solve

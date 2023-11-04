module Practice where

isPrefix :: String -> String -> Bool
isPrefix "" ys = True
isPrefix xs "" = False
isPrefix (x:xs) (y:ys)
  | x==y = isPrefix xs ys
  | otherwise = False

removePrefix :: String -> String -> String
--Pre:
removePrefix "" ys = ys
removePrefix (x:xs) (y:ys)
  | x==y = removePrefix xs ys
  | otherwise = ys

suffixes :: [a] -> [[a]]
suffixes [] = []
suffixes (x:xs) = (x:xs) : suffixes xs

isSubstring :: String -> String -> Bool
isSubstring [] _ = True
isSubstring xs [] = False
isSubstring xs (y:ys) = (isPrefix xs (y:ys)) || (isSubstring xs ys)

findSubstrings :: String -> String -> [Int]
findSubstrings = undefined 

--findSubstrings xs ys = map (`isSubstring` xs) ys


{-  where
    helper :: String -> String -> Int
    helper
      | isSubstring zs qs = (length ys) - (length qs)

findSubstrings xs (y:ys)
  | isSubstring xs (y:ys) = [findSubstrings xs ys
  | otherwise
  where
    indexList = [0..(length (y:ys)-1)] -}

module Lib
    ( isPalindrome, preProcess
    ) where
import Data.Char(isPunctuation)

preProcess :: String -> String
preProcess = filter (not . isPunctuation)

isPalindrome :: String -> Bool
isPalindrome str = cleanStr == reverse cleanStr
    where cleanStr = preProcess str
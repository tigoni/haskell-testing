module Lib
    ( isPalindrome
    ) where

isPalindrome :: String -> Bool
isPalindrome str = cleanStr == reverse cleanStr
    where cleanStr =
           filter (/= '!') str

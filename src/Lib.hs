module Lib
    ( isPalindrome, preProcess
    ) where
import Data.Char(isPunctuation)
import Data.Text as T

preProcess :: T.Text -> T.Text
preProcess = filter (not . isPunctuation)

isPalindrome :: T.Text -> Bool
isPalindrome str = cleanStr == reverse cleanStr
    where cleanStr = preProcess str
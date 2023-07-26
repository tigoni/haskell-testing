import Lib
import Data.Char
import Test.QuickCheck
import Data.Text as T

prop_PunctuationInvariant text = preProcess text == preProcess noPuncText where
    noPuncText = filter (not . isPunctuation) text

assert :: Bool -> T.Text -> T.Text -> IO ()
assert test passStatement failStatement = 
    if test 
    then putStrLn passStatement
    else putStrLn failStatement

main :: IO  ()
main = do
    quickCheck prop_PunctuationInvariant
    putStrLn "done!"
    -- putStrLn "Running Tests..."
    -- assert (isPalindrome "racecar") "passed 'racecar'" "Fail: 'racecar'"
    -- assert (isPalindrome "racecar!") "passed 'racecar!'" "Fail: 'racecar!'"
    -- assert (isPalindrome "racecar.") "passed 'racecar.'" "Fail: 'racecar.'"
    -- assert ((not . isPalindrome) "cat") "passed 'cat" "Fail: 'cat'"
    -- putStrLn "done!"

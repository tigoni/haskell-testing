import Lib

assert :: Bool -> String -> String -> IO ()
assert test passStatement failStatement = 
    if test 
    then putStrLn passStatement
    else putStrLn failStatement

main :: IO  ()
main = do
    putStrLn "Running Tests..."
    assert (isPalindrome "racecar") "passed 'racecar'" "Fail: 'racecar'"
    assert (isPalindrome "racecar!") "passed 'racecar!'" "Fail: 'racecar!'"
    assert (isPalindrome "racecar.") "passed 'racecar.'" "Fail: 'racecar.'"
    assert ((not . isPalindrome) "cat") "passed 'cat" "Fail: 'cat'"
    putStrLn "done!"

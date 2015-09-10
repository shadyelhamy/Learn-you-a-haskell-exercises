{-
 - Lets implement the UNIX echo command
 - The program arguments are simply printed to the standard output.
 - If the first argument is -n, this argument is not printed, and no trailing newline is printed
 -}
import System.Environment
import System.IO
import Data.List
import System.Random
main = do
        (arg1:rest) <- getArgs
        let s = unwords rest 
        if arg1 == "-n" then putStr $ s
        else putStrLn $  arg1 ++ s
{- Write a lottery number picker
 - This function should take a StdGen instance, and produce a list of six unique numbers between 1 and 49, in numerical order
 -}
lottery :: StdGen -> [Int]
lottery gen = sort $ take 6 (randomRs(1,49) gen)

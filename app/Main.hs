module Main (main) where

import Lib
import Control.Monad

main :: IO ()
main = forever $ do
    putStrLn "Enter equation"
    l <- getLine
    putStrLn $ show $ solveRPN l

module Lib
    ( solveRPN
    ) where

import Data.List


solveRPN :: String -> Float
solveRPN = head . foldl solve [] . words
    where solve (x:y:ys) "*" = (x*y):ys
          solve (x:y:ys) "+" = (x+y):ys
          solve (x:y:ys) "-" = (x-y):ys
          solve (x:y:ys) "/" = (x/y):ys
          solve xs num = read num:xs

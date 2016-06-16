main = do
  let program = "+ + * - /"
      accumulator = calcProgram program
  putStrLn $ "The program \"" ++ program ++ "\" calculates the value " ++ show accumulator

calcProgram = foldl foldFunction 0 . words
  where foldFunction acc "+" = acc + 1
        foldFunction acc "-" = acc - 1
        foldFunction acc "*" = acc * 2
        foldFunction acc "/" = acc / 2
        foldFunction acc _ = acc


contrario :: IO()

contrario = do
  putStrLn "Digite uma palavra: "
  palavra <- getLine
  putStrLn("O contrário de " ++ palavra ++ " é " ++ reverse palavra)

main = do contrario

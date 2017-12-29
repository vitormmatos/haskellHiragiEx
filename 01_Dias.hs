dias:: Integer -> IO()

dias anos = do
  putStrLn (show anos ++ " anos eh igual a " ++ show (anos * 365) ++ " dias")

diasParam::IO()

diasParam = do
  putStrLn "Digite a quantidade de anos: "
  n <- getLine
  let anos = read n :: Integer
  dias anos

main = do diasParam

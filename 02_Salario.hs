converteSalario:: Float -> IO()

converteSalario salario = do
  putStrLn (show salario ++ " reais equivale a " ++ show (salario / 3.25) ++ " dolares")
  putStrLn (show salario ++ " reais equivale a " ++ show (salario / 937) ++ " salarios minimos")

salarioParam::IO()

salarioParam = do
  putStrLn "Digite o salario em reais: "
  n <- getLine
  let salario = read n :: Float
  converteSalario salario

main = do salarioParam

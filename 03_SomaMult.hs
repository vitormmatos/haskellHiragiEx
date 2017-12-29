somaMult :: Integer -> Integer -> Integer -> IO()

somaMult x y z = do
  putStr("A soma dos números " ++ show y ++ " e " ++ show z)
  if (x == y + z) then putStrLn(" é igual a " ++ show x)
  else putStrLn(" não é igual a " ++ show x)

somaMultParam :: IO()

somaMultParam = do
  putStrLn "Digite o primeiro número: "
  n1 <- getLine
  let num1 = read n1 :: Integer
  putStrLn "Digite o segundo número: "
  n2 <- getLine
  let num2 = read n2 :: Integer
  putStrLn "Digite o terceiro número: "
  n3 <- getLine
  let num3 = read n3 :: Integer
  somaMult num1 num2 num3

main = do somaMultParam

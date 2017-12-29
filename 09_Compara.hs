maior :: Integer -> Integer -> IO()

maior x y =
  if (x>y) then putStrLn "O primeiro eh o maior"
  else if (y>x) then putStrLn "O segundo eh o maior"
  else putStrLn "Os numeros sao iguais"

maiorParam :: IO()

maiorParam = do
  putStrLn "Digite o primeiro número: "
  n1 <- getLine
  let num1 = read n1 :: Integer
  putStrLn "Digite o segundo número: "
  n2 <- getLine
  let num2 = read n2 :: Integer
  maior num1 num2

main = do maiorParam

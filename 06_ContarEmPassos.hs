contarinifimpasso:: Integer -> Integer -> Integer -> IO()

contarinifimpasso inicio fim passo =
  if (inicio < (fim - passo + 1)) then do
  print (inicio)
  contarinifimpasso (inicio + passo) fim passo
  else
  print(inicio)

contarparam::IO()

contarparam = do
  putStrLn "Digite o início: "
  i <- getLine
  let inicio = read i :: Integer
  putStrLn "Digite o fim: "
  f <- getLine
  let fim = read f :: Integer
  putStrLn "Digite o passo: "
  p <- getLine
  let passo = read p :: Integer
  print ("Contagem:")
  do contarinifimpasso inicio fim passo

main = do contarparam

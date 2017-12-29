fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

fatorialParam::IO()

fatorialParam = do
  putStrLn "Digite um número: "
  n <- getLine
  let numero = read n :: Integer
  putStrLn ("O fatorial de " ++ show numero ++ " é " ++ show (fatorial numero))

main = do fatorialParam

fibo :: Integer -> Integer

fibo 1 = 1
fibo 2 = 1
fibo n = fibo (n-1) + fibo (n-2)

fiboParam = do
  putStrLn "Digite um número: "
  n <- getLine
  let numero = read n :: Integer
  putStrLn ("O " ++ show numero ++ "o termo de fibonacci é " ++ show (fibo numero))

main = do fiboParam

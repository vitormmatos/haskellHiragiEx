divs :: Integer -> [Integer]

divs n = [e | e<-[1..n], n `mod` e == 0]

primo :: Integer -> Bool

primo n = divs n == [1, n]

primos :: Integer -> [Integer]

primos n = [e | e <- [2..n], primo e]

nprimos :: Integer -> Integer -> [Integer] -> [Integer]

nprimos conta n lista = if (n<2) then lista
    else if (primo conta)
    then nprimos (conta+1) (n-1)
    (lista ++ [conta])
    else nprimos (conta+1) n lista

nprimosParam :: IO()

nprimosParam = do
  putStrLn "Digite um numero: "
  n <- getLine
  let numero = read n :: Integer
  putStrLn ("Os " ++ show numero ++ " primeiros números primos são: ")
  putStrLn (show (nprimos 2 numero []))

main = do nprimosParam

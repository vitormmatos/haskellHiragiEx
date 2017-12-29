contar :: Integer -> IO()

contar 0 = do
  print 0
contar n = do
  contar (n-1)
  print n

contarparam::IO()

contarparam = do
  putStrLn "Digite até qual número quer contar: "
  n <- getLine
  let num = read n :: Integer
  putStrLn "Contando:"
  do contar num

main = do contarparam

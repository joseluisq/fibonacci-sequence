fib = (fibs !!) where fibs = 0 : scanl (+) 1 fibs

main = do
    print(fib 50)

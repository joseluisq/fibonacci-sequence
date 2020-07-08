# The optimized implementation

def fib(n):
    if (n == 1 or n == 2):
        return 1

    prev = 1
    curr = 1

    for i in range(2, n):
        sums = prev + curr
        prev = curr
        curr = sums

    return curr

print(fib(50))

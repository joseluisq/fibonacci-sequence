#include <stdio.h>
#include <stdint.h>

// The naive implementation

uint64_t fib(uint64_t n)
{
    if (n == 1 || n == 2)
        return 1;
    else
        return fib(n - 1) + fib(n - 2);
}

// The optimized implementation

uint64_t fibo(uint64_t n)
{
    if (n == 1 || n == 2)
    {
        return 1;
    }

    uint64_t prev = 1;
    uint64_t curr = 1;

    for (uint64_t i = 3; i <= n; i++)
    {
        uint64_t sum = prev + curr;
        prev = curr;
        curr = sum;
    }

    return curr;
}

int main()
{
    uint64_t complx = 50;
    printf("%llu \n", fibo(complx));
    return 0;
}

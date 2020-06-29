// The naive implementation

#include <stdio.h>

u_int64_t fib(u_int64_t n)
{
    if (n == 1 || n == 2)
        return 1;
    else
        return fib(n - 1) + fib(n - 2);
}

// ----

// The optimized implementation

u_int64_t fibo(u_int64_t n)
{
    if (n == 1 || n == 2)
    {
        return 1;
    }

    u_int64_t prev = 1;
    u_int64_t curr = 1;

    for (u_int64_t i = 3; i <= n; i++)
    {
        u_int64_t sum = prev + curr;
        prev = curr;
        curr = sum;
    }

    return curr;
}

int main()
{
    u_int64_t complx = 50;

    printf("%llu \n", fibo(complx));
    return 0;
}

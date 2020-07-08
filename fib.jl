# The optimized implementation

function fib(n::UInt64)
    if n == 1 || n == 2
        return UInt64(1)
    end

    prev = UInt64(1)
    curr = UInt64(1)

    for i = 3:n
        sum = prev + curr
        prev = curr
        curr = sum
    end

    return curr
end

complx = UInt64(50)

println(fib(complx))

# The optimized implementation

def fib(n)
    if (n == 1 or n == 2)
        return 1
    end

    prev = 1
    curr = 1

    3.upto(n) do |_|
        sums = prev + curr
        prev = curr
        curr = sums
    end

    return curr
end

puts fib(50)

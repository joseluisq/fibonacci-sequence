-- The optimized implementation

function fib(n)
    if n == 1 or n == 2 then
        return 1
    end

    local prev = 1
    local curr = 1

    for i = 3, n do
        local sum = prev + curr
        prev = curr
        curr = sum
    end

    return curr
end

complx = 50

print(fib(complx))

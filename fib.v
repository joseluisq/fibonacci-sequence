// The optimized implementation

fn fib(n u64) u64 {
    if n == 1 || n == 2 {
        return 1
    }

    mut prev := u64(1)
    mut curr := u64(1)

    for i := 2; i <= n; i++ {
        sum := prev + curr
        prev = curr
        curr = sum
    }

    return curr
}

fn main() {
    complx := u64(50)
    println(fib(complx))
}

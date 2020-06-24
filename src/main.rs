// The optimized implementation

fn fib(n: usize) -> usize {
    if n == 1 || n == 2 {
        return 1;
    }

    let mut prev = 1;
    let mut curr = 1;

    for _ in 3..=n {
        let sum = prev + curr;
        prev = curr;
        curr = sum;
    }

    curr
}

fn main() {
    let num: usize = 50;

    println!("Fibonacci sequence of `{}` is `{}`", num, fib(num));
}

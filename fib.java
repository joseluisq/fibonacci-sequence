// The optimized implementation

public class fib {
    public static long fibo(long n) {
        if (n == 1 || n == 2) {
            return 1;
        }

        long prev = 1;
        long curr = 1;

        for (long i = 3; i <= n; i++) {
            long sum = prev + curr;
            prev = curr;
            curr = sum;
        }

        return curr;
    }

    public static void main(String[] args) {
        long complx = 50;
        System.out.println(fibo(complx));
    }
}

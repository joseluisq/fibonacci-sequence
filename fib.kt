fun fibo(n: Long): Long {
    if (n == 1L || n == 2L) {
        return 1L
    }

    var prev = 1L
    var curr = 1L

    for (i in 3L..n) {
        val sum = prev + curr
        prev = curr
        curr = sum
    }

    return curr
}

fun main() {
    val complx = 50L
    println(fibo(complx))
}

package main

import (
	"fmt"
	"strconv"
)

// The optimized implementation

func fib(n uint64) uint64 {
	if n == 1 || n == 2 {
		return 1
	}

	prev := uint64(1)
	curr := uint64(1)

	for i := uint64(3); i <= n; i++ {
		sum := prev + curr
		prev = curr
		curr = sum
	}

	return curr
}

func main() {
	complx := uint64(50)
	complxResult := fib(complx)
	strResult := strconv.FormatUint(complxResult, 10)

	fmt.Println(strResult)
}

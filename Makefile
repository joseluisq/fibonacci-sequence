hs:
	@ghc --make -dynamic Main.hs -o fib_hs
	@./fib_hs
.PHONY: hs

cpp:
	@g++ main.cpp -o fib_cpp
	@./fib_cpp
.PHONY: cpp

c:
	@gcc main.c -o fib_c
	@./fib_c
.PHONY: c

rs:
	@cargo build --release
	@./target/release/fibonacci-sequence-sample
.PHONY: rs

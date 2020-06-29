ifeq ($(shell uname),Darwin)
    LDFLAGS := -Wl,-dead_strip
else
    LDFLAGS := -Wl,--gc-sections -lpthread -ldl
endif

hs:
	@ghc --make -dynamic fib.hs -o fib_hs
	@./fib_hs
.PHONY: hs

cpp:
	@g++ $(LDFLAGS) fib.cpp -o fib_cpp
	@./fib_cpp
.PHONY: cpp

c:
	@gcc $(LDFLAGS) fib.c -o fib_c
	@./fib_c
.PHONY: c

rs:
	@cargo build --release
	@./target/release/fibonacci-sequence-sample
.PHONY: rs

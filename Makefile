ifeq ($(shell uname),Darwin)
	LDFLAGS := -Wl,-dead_strip
else
	LDFLAGS := -Wl,--gc-sections -lpthread -ldl
endif

# Compiled languages

c:
	@gcc $(LDFLAGS) fib.c -o fib_c
	@./fib_c
.PHONY: c

cpp:
	@g++ $(LDFLAGS) fib.cpp -o fib_cpp
	@./fib_cpp
.PHONY: cpp

hs:
	@ghc --make -dynamic fib.hs -o fib_hs
	@./fib_hs
.PHONY: hs

rs:
	@cargo build --release
	@./target/release/fibonacci-sequence-sample
.PHONY: rs

go:
	@go build fib.go
	@./fib
.PHONY: go

java:
	@javac fib.java
	@java \
		-Dfile.encoding=UTF-8 \
		-classpath . fib
.PHONY: java

kt:
	@kotlinc fib.kt -include-runtime -d fib.jar
	@java -jar fib.jar
.PHONY: kt

v:
	@v fib.v
	@./fib
.PHONY: v


# Scripting languages

lua:
	@lua fib.lua
.PHONY: lua

jl:
	@julia fib.jl
.PHONY: jl

py:
	@python fib.py
.PHONY: py

rb:
	@ruby fib.rb
.PHONY: rb

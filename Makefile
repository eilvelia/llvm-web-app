.PHONY: default
default: build

# Works at least with clang-900.0.39.2 (LLVM version 9.0.0)
.PHONY: build
build:
	clang -O1 -m32 main.ll -o main.out

.PHONY: build_release
build_release:
	clang -O2 -m32 main.ll -o main.out

.PHONY: c_test
c_test:
	clang -m32 -S -emit-llvm test.c -o test.ll

.PHONY: c_test_opt
c_test_opt:
	clang -O1 -m32 -S -emit-llvm test.c -o test.ll

.PHONY: start
start:
	./main.out

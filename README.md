
## llvm-web-app

A HTTP server that returns your User-Agent, as in [brainfuck-web-app][].

Written in pure LLVM IR.

[brainfuck-web-app]: https://github.com/EvanHahn/brainfuck-web-app

[Code](main.ll).

### Build

```console
$ clang -O1 -m32 main.ll -o main.out
```

`clang` can be replaced with [llc](https://llvm.org/docs/CommandGuide/llc.html).

### Run

- `$ ./main.out`
- Open http://localhost:3434/

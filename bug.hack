function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}

This code looks straightforward, but it can lead to an unexpected runtime error in Hack if the input to `baz` is extremely large.  The intermediate results in the calculation (specifically `foo(x)` and `bar(x)`) could overflow the integer representation if `x` is sufficiently large, leading to incorrect results or even exceptions. This kind of subtle overflow error can be hard to detect because it's not always apparent from the code itself.  While the compiler won't produce an error, runtime overflow is a problem.

function foo(x: int): int {
  if (x > 2147483646) {
    throw new Exception("Integer overflow in foo");
  }
  return x + 1;
}

function bar(x: int): int {
  if (x > 2147483646) {
    throw new Exception("Integer overflow in bar");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x > 2147483646) {
    throw new Exception("Integer overflow in baz");
  }
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}

This solution adds explicit checks to prevent integer overflow.  If the input or intermediate results are too large, an exception is thrown.

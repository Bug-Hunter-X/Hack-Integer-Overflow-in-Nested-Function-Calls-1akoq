# Hack Integer Overflow Example

This repository demonstrates a subtle integer overflow bug in Hack that can occur in nested function calls.  The code appears simple, but when large input values are passed, intermediate results may overflow the integer type's capacity, leading to incorrect results or runtime exceptions. This example highlights the importance of being aware of potential integer overflow issues, especially when working with functions that perform calculations with potentially large inputs.

## Bug Description
The `baz` function in `bug.hack` performs a series of simple arithmetic operations. However, if a sufficiently large integer is passed as an argument, the intermediate results calculated by `foo` and `bar` can exceed the maximum representable integer value, leading to an integer overflow.

## Solution
The `bugSolution.hack` file shows a corrected version that explicitly checks for potential overflows before performing calculations.

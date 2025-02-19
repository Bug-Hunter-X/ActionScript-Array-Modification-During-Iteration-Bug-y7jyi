# ActionScript Array Modification During Iteration Bug

This repository demonstrates a common error in ActionScript related to modifying an array while iterating through it using a `for` loop and the `splice` method.  The code attempts to remove a specific element from the array, but the array's length changes during the iteration, causing unexpected behavior.

The `bug.as` file contains the buggy code. The `bugSolution.as` file provides a corrected version.

## Bug Description

Modifying an array while iterating over it can lead to unexpected results or errors.  The `splice` method alters the array's length, making the loop index inaccurate after the `splice` call. This results in either skipping elements or encountering an index out-of-bounds error.

## Solution

The solution involves iterating through the array in reverse order. This prevents issues with index shifts caused by removing elements.

## How to Reproduce

1. Compile and run the `bug.as` file. Observe the unexpected output.
2. Compile and run the `bugSolution.as` file. Observe the correct output.

## Lessons Learned

- Avoid modifying arrays directly during a standard `for` loop iteration. Consider using a `while` loop or iterating in reverse order instead. 
- Always be mindful of the index when modifying an array within a loop.
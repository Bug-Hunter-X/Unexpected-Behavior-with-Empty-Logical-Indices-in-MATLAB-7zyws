# Unexpected Behavior with Empty Logical Indices in MATLAB

This repository demonstrates an uncommon error in MATLAB related to implicit type conversion and unexpected behavior when using logical indexing with an empty index.  The issue arises when a logical index evaluates to an empty array, leading to errors or unexpected results.

## The Bug

The `bug.m` file contains a function that performs calculations and then applies logical indexing to modify the result.  The problem occurs when the logical condition results in an empty index. Attempting to access or modify elements using an empty index in this context can lead to an error. 

## The Solution

The `bugSolution.m` file presents a corrected version. The solution is to check if the logical index is empty before applying the modification. If the index is empty no change is applied and no error occurs.
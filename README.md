# Assembly Language Bug: Incorrect System Call for String Output

This repository demonstrates a common error in assembly programming: using incorrect system call numbers and register arguments for performing I/O operations.

The `bug.asm` file contains code that attempts to print the string "Hello, world!" to the console, but due to the incorrect system call parameters, it fails to produce any output. The `bugSolution.asm` file provides a corrected version of the code. 

## Bug Description
The original code uses incorrect register values for the `sys_write` system call. It also uses `int 0x80` which is obsolete.
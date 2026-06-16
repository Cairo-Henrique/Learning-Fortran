# Learning Fortran

<a href="https://fortran-lang.org"><img src="https://skillicons.dev" /></a>

This repository contains a collection of Fortran 90 (`.f90`) programs documenting my progression in learning Modern Fortran. As a physics student, I am building these foundational high-performance computing skills to support scientific computing and the simulation of many-body systems.

---

## Repository Structure

The scripts are located in the `Codes/` directory and are numbered sequentially to map out a clear learning path:

### Basics & Core Syntax
* **`1_helloworld.f90`**: Introduction to Fortran program structure and basic terminal output.
* **`2_variables.f90`**: Variable declarations, standard data types, and implicit none.
* **`3_operations.f90`**: Mathematical, logical, and relational operators.
* **`4_conditions.f90`**: Control flow structures (`if`, `else if`, `else`).
* **`5_do_loops.f90`**: Iteration using standard `do` and `do while` loops.

### Data Handling & I/O
* **`6_text_files.f90`**: File handling, including opening, reading, writing, and closing external files.
* **`7_data_tables.f90`**: Reading and parsing structured tabular data.
* **`8_precision.f90`**: Managing numerical precision using `kind` parameters (essential for accurate physics simulations).
* **`9_arrays.f90`**: Multi-dimensional array operations, slicing, and broadcasting.
* **`10_output_formatting.f90`**: Using format descriptors for clean, readable terminal and file outputs.
* **`example.txt`**: A sample text file utilized by the file I/O scripts for testing.

### Advanced Concepts & Physics Application
* **`11_subroutines.f90`**: Modularizing code using subroutines and functions.
* **`12_recursive.f90`**: Implementing self-calling recursive procedures.
* **`13_oop.f90`**: Exploring Object-Oriented Programming (OOP) capabilities within Modern Fortran (derived types, type-bound procedures).
* **`14_harmonic_osc.f90`**: A practical application of the concepts above to model a harmonic oscillator system.

## Compilation and Execution

To compile and run these codes, a Fortran compiler such as `gfortran` is required. 

1. **Navigate to the working directory**:
```bash
   cd Codes/

```

2. **Compile a specific script** (e.g., the harmonic oscillator):

```bash
   gfortran 14_harmonic_osc.f90 -o harmonic_osc

```

3. **Execute the compiled binary**:

```bash
   ./harmonic_osc

```

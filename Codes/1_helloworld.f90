program helloworld
    print *, "Hello, World!" ! * means to print to the standard output
    ! * stands for "list-directed" output, which means that the compiler will choose the appropriate format based on the type of data being printed. It is a convenient way to print variables without having to specify a format string.

    print '(A)', "Hello, World!" ! A means to print a string of any length, so it will print the entire string
    print '(A5)', "Hello, World!" ! A5 means to print a string of length 5, so it will only print "Hello"
    ! A stands for "Alphanumeric" and is used for strings. The number after A specifies the width of the field. If the string is shorter than the specified width, it will be right-aligned and padded with spaces on the left. If the string is longer than the specified width, it will be truncated.

    print '(I5)', 42 ! I5 means to print an integer with width 5, so it will print "   42"

    print '(F6.2)', 3.14159 ! F6.2 means to print a floating-point number with width 6 and 2 decimal places, so it will print " 3.14"

    print '(E10.3)', 0.00123 ! E10.3 means to print a floating-point number in scientific notation with width 10 and 3 decimal places, so it will print " 1.230E-03"
    ! E stands for "Exponential" and is used for floating-point numbers in scientific notation.

end program helloworld
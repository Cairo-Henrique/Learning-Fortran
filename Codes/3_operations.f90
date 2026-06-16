program operations

    implicit none

    integer :: a, b, sum, difference, product
    real :: quotient

    ! Initialize the variables
    a = 10
    b = 5

    ! Perform arithmetic operations
    sum = a + b
    difference = a - b
    product = a * b
    quotient = real(a) / real(b) ! Convert integers to real for division

    ! Print the results
    print *, "a: ", a
    print *, "b: ", b
    print *, "Sum: ", sum
    print *, "Difference: ", difference
    print *, "Product: ", product
    print *, "Quotient: ", quotient

end program operations
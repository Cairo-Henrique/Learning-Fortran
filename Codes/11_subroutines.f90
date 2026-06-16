program subroutines

    implicit none

    integer :: a, b, result

    a = 10
    b = 5

    call add_numbers(a, b, result) ! Call the subroutine to add the numbers

    ! Print the result using formatted output.
    write (*, '(A, I0)') "The sum is ", result ! A is for strings and I0 is for integers.
    
    ! Subroutines are like functions, but they do not return a value. Instead, they are blocks of code that can be called anytime.
    contains ! The contains statement allows us to define subroutines and functions within the same program unit.
    subroutine add_numbers(x, y, sum)
        ! Use intent() to specify the purpose of each parameter. It also allows the compiler to optimize the code and catch errors if you try to modify an input parameter or read an output parameter before it's assigned.
        integer, intent(in) :: x, y ! Input parameters
        integer, intent(out) :: sum ! Output parameter

        sum = x + y ! Perform the addition
    end subroutine add_numbers

end program subroutines
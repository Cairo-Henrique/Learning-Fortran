program factorial_calculator

    implicit none

    integer(8) :: n, result

    do 
        print *, "Enter a positive integer:"
        read *, n

        if (n < 0) then
            print *, "Negative inputs are not allowed."
        else
            print *, "Calculating factorial using iterative approach..."
            call factorial(n, result)
            print *, "The result is ", result
            print *, "Calculating factorial using recursive approach..."
            result = factorial_recursive(n) ! We do not use call for functions, we just assign the result to a variable
            print *, "The result is ", result
        end if
    end do

    contains
    subroutine factorial(input, output)
        
        integer(8), intent(in) :: input
        integer(8), intent(out) :: output
        integer(8) :: i

        output = 1
        do i=1, input
            output = output * i
        end do
    end subroutine factorial

    ! recursive functions are functions that call themselves in their definition
    recursive function factorial_recursive(n) result(output) ! the result keyword is used to specify the output variable for the function
        integer(8), intent(in) :: n
        integer(8) :: output

        if (n == 0) then
            output = 1
        else
            output = n * factorial_recursive(n - 1) ! math property: n! = n * (n-1)!
        end if
    end function factorial_recursive

end program factorial_calculator
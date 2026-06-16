program arrays

    implicit none

    ! Creating static arrays
    ! A parameter is a constant value that cannot be changed during the execution of the program. It is used to define constants that are used throughout the program, such as the size of an array. In this case, we define a parameter n that specifies the size of the array a. By using a parameter, we can easily change the size of the array by modifying a single value, and it also improves code readability by giving a meaningful name to the constant.
    integer, parameter :: n = 5
    real :: a(n) ! Declare an array of size n
    integer :: i

    ! Creating dynamical arrays
    real, allocatable, dimension(:) :: b ! Declare an allocatable array b with one dimension
    integer :: elements
    elements = 3
    allocate(b(elements)) ! Allocate memory for the array b with size elements

    ! Initialize the arrays
    do i = 1, n
        ! Assign the value of i to the i-th element of the array
        a(i) = real(i)
    end do

    do i = 1, elements
        ! Assign the value of i to the i-th element of the array
        b(i) = real(i)
    end do

    ! a(6) = 6.0 ! This would cause an error because it is out of bounds.
    ! In F, arrays are indexed starting from 1 by default, so the valid indices for the static array a are from 1 to n

    ! Print the array a elements
    print *, "Array elements:"
    do i = 1, n
        print *, a(i)
    end do

    elements = 4
    b(4) = 4.0 ! This is valid because the array b is dynamically allocated and can be resized using the variable elements.

    ! Print the array b elements
    print *, "Array elements:"
    do i = 1, elements
        print *, b(i)
    end do

    deallocate(b) ! Deallocate the memory allocated for the array b at the end of the program to free up resources.

end program arrays
program conditions

    implicit none

    integer :: a, b

    ! Initialize the variables
    a = 10
    b = 5

    ! Check conditions using if statements
    if (a > b) then
        print *, "a is greater than b"
    else if (a < b) then
        print *, "a is less than b"
    else
        print *, "a is equal to b"
    end if

    ! Logical variables are written as .true. or .false.

    if (.not. (a == b)) then
        print *, "a and b are not equal"
    end if

    if (.true.) then
        print *, "This condition is always true"
    end if

    ! Use .not. for negation, .and. for logical AND, and .or. for logical OR

    if (a > b .and. a < 20) then
        print *, "a is greater than b and less than 20"
    end if

    if (a > 0 .or. b < 0) then
        print *, "Either a is positive or b is negative"
    end if

end program conditions
program do_loops

    implicit none

    integer :: i, j

    ! Simple do loop
    print *, "Simple do loop from 1 to 10 jump by 2:"
    do i = 1, 10, 2
        print *, i
    end do

    ! Nested do loops
    print *, "Nested do loops (i from 1 to 3, j from 1 to 2):"
    do i = 1, 3
        do j = 1, 2
            print *, "i: ", i, " j: ", j
        end do
    end do

    ! Do loop with a variable step
    print *, "Do loop with a variable step (i from 1 to 10, step is i):"
    do i = 1, 10, i
        print *, i
    end do

    ! Do loop with a negative step
    print *, "Do loop with a negative step (i from 10 to 1):"
    do i = 10, 1, -1
        print *, i
    end do

    ! Do loop with an exit condition
    print *, "Do loop with an exit condition (i from 1 to 10, exit when i is 5):"
    do i = 1, 10
        if (i == 5) then
            print *, "Exiting loop at i = ", i
            exit
        end if
        print *, i
    end do

    ! Do loop with a cycle condition
    print *, "Do loop with a cycle condition (i from 1 to 10, skip when i is 5):"
    do i = 1, 10
        if (i == 5) then
            print *, "Skipping i = ", i
            cycle
        end if
        print *, i
    end do

    ! Do loop with a while condition
    print *, "Do loop with a while condition (i starts at 1, loop while i is less than 10):"
    i = 1
    do while (i < 10)
        print *, i
        i = i + 1
    end do
    
end program do_loops
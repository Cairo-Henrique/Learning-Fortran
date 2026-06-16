program data_tables

    implicit none

    integer :: i, j
    real :: data_table(3, 3) ! data_table is an array of real numbers, like numpy arrays in Python

    ! Initialize the data table
    do i = 1, 3
        do j = 1, 3
            data_table(i, j) = real(i + j) ! Fill the table with the sum of indices as an example
        end do
    end do

    ! Print the data table
    print *, "Data Table:"
    do i = 1, 3
        do j = 1, 3
            write(*, '(F6.2)', advance='no') data_table(i, j)
        end do
        print * ! New line after each row
    end do

end program data_tables
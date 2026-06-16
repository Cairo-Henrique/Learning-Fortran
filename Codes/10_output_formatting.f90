program output_formatting

    implicit none

    double precision, dimension(2,2) :: matrix ! dimension(2,2) creates a 2x2 matrix
    integer :: i, j

    do i = 1,2
        do j = 1,2
            matrix(i,j) = real(i + j) ! Fill the matrix with the sum of the indices
        end do
    end do

    ! Default printing
    print *, "Default output:"
    print *, matrix ! This will print the matrix in a default format, which may not be very readable.

    ! Write function with formatted output
    print *, "Formatted output:"
    write(*, '(2F10.5)') matrix ! Print the matrix elements 2 columns, a distance element-to-element of 10, and 5 decimal places.

end program output_formatting
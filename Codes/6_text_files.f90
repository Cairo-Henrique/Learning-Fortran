program text_files

    implicit none

    character(len=100) :: filename
    character(len=200) :: line
    integer :: i, unit

    ! Set the filename
    filename = "example.txt"

    ! Open the file for writing
    ! 'newunit' will automatically assign an available unit number
    ! 'replace' will create a new file or overwrite an existing one
    ! 'write' specifies that we will be writing to the file
    open(newunit=unit, file=filename, status='replace', action='write')

    ! Write some lines to the file
    ! We use unit to specify which file we are writing to
    write(unit, *) "This is an example text file."
    write(unit, *) "It contains multiple lines of text."
    write(unit, *) "Fortran can read and write text files easily."

    ! Close the file
    close(unit)

    ! Open the file for reading
    ! 'old' specifies that the file must already exist
    ! 'read' specifies that we will be reading from the file
    open(newunit=unit, file=filename, status='old', action='read')

    ! Read and print each line from the file
    print *, "Contents of the file:"
    do
        read(unit, '(A)', iostat=i) line ! iostat is used to check for end of file or errors
        if (i /= 0) exit ! Exit loop on end of file or error
        print *, trim(line)
    end do

    ! Close the file
    close(unit)

end program text_files
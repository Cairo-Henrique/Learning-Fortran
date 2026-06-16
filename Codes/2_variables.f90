program namer

    ! The following statement is used to enforce explicit declaration of all variables.
    ! Without implicit none, variables starting with I, J, K, L, M, N are INTEGER. Others are REAL.
    ! By using implicit none, you must declare all variables explicitly, which can help catch errors at compile time.
    implicit none 

    ! Declare the variable to hold the user's name
    character(len=20) :: name ! In F, you need to specify the length of the string when declaring a character variable. Here, we set it to 20 characters.

    ! Ask the user for their name
    print *, "What is your name?"

    ! Read the user's input into the variable 'name'
    read *, name

    ! Print a greeting message using the user's name
    print *, "Hello, ", name, "!" ! In F, you can concatenate strings using the comma operator in the print statement. This will print "Hello, " followed by the user's name and an exclamation mark.
    print *, "Hello, ", trim(name), "!" ! trim is used to remove any trailing spaces from the name variable, ensuring that the output looks clean.

end program namer
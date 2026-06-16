program oop_example

    implicit none

    ! Object-Oriented Programming (OOP) in Fortran allows us to define custom data types (called "derived types") that can encapsulate both data and procedures. This is similar to classes in other programming languages.
    type :: Person
        ! We can define components (data) within the derived type
        character(len=50) :: name
        integer :: age
    end type Person

    type(Person) :: person1 ! We create an instance of the Person type

    ! We can access the components of the derived type using the % operator.
    person1%name = "Alice"
    person1%age = 30

    print *, "Name: ", person1%name
    print *, "Age: ", person1%age

    ! We can also define procedures (subroutines and functions) that operate on the data within the type

    call introduce_yourself(person1) ! We can call the subroutine and pass the entire object (instance of the type) to it

    contains

    subroutine introduce_yourself(this)
        class(Person) :: this ! The "class" keyword allows us to pass the entire object (instance of the type) to the subroutine
        print *, "Hello, my name is ", trim(this%name), " and I am ", this%age, " years old."
    end subroutine introduce_yourself

    ! What we have done here is a very basic example of OOP in Fortran. We have defined a derived type (Person) that encapsulates data (name and age) and a procedure (introduce_yourself) that operates on that data. This allows us to create more complex data structures and behaviors in our programs, making them more modular and easier to maintain.

end program oop_example


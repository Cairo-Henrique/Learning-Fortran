program precision

    implicit none

    integer, parameter :: ikind = selected_real_kind(p=20, r=307) ! p is the number of decimal digits, r is the range of exponents
    real(ikind) :: a, b, c, d ! Declare variables with the specified precision
    double precision :: e, f, g

    ! p goes from 1 to 20, r goes from 1 to 307 for real(ikind) with the specified precision

    ! Example with p 

    a = 1.0_ikind
    b = 3.0_ikind
    c = a / b ! Good precision
    d = 1.0 / 3.0 ! Bad precision

    print *, "a = ", a
    print *, "b = ", b
    print *, "c = a / b = ", c
    print *, "d = 1.0 / 3.0 = ", d

    ! Example with r

    a = 1.0e+300_ikind
    b = 1.0e-300_ikind
    c = a * b ! Good precision

    print *, "a = ", a
    print *, "b = ", b
    print *, "c = a * b = ", c

    ! Example with double precision
    ! Double precision typically has a precision of about 15-17 decimal digits and a range of about 10^-308 to 10^308
    ! It is used for very high precision calculations, but it is not as precise as real(ikind) with p=20
    ! Its advantage is that it is widely supported and can be faster than real(ikind) with p=20 on some hardware

    e = 1.0d0
    f = 3.0d0
    g = e / f ! Good precision

    print *, "e = ", e
    print *, "f = ", f
    print *, "g = e / f = ", g

end program precision
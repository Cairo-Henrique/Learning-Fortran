program harmonic_oscillator

    ! This program simulates a simple harmonic oscillator using object-oriented programming principles in Fortran. We define a derived type "System" to encapsulate the properties and state of the oscillator, and we use subroutines and functions to update the system's state over time.

    implicit none

    real :: dt, t_max

    type :: System
        real :: mass, spring_constant, damping_coefficient, initial_displacement, initial_velocity, displacement, velocity, time
    end type System

    type(System) :: oscillator

    ! Define the parameters for the harmonic oscillator
    oscillator%mass = 1.0
    oscillator%spring_constant = 100.0
    oscillator%damping_coefficient = 1.0
    oscillator%initial_displacement = 10.0
    oscillator%initial_velocity = 0.0
    dt = 0.01
    t_max = 1.0

    call simulation(oscillator, dt, t_max)

    contains
    subroutine simulation(this, dt, t_max) ! Simulate the harmonic oscillator over time
        class(System), intent(inout) :: this
        real, intent(in) :: dt, t_max
        integer :: n_steps, i

        n_steps = int(t_max / dt)

        this%time = 0.0
        this%displacement = this%initial_displacement
        this%velocity = this%initial_velocity

        do i = 1, n_steps
            call update_system(this, dt)
            print *, "Time: ", this%time, " Displacement: ", this%displacement, " Velocity: ", this%velocity
        end do

    end subroutine simulation

    subroutine update_system(this, dt) ! Update the state of the system based on the forces acting on it
        class(System), intent(inout) :: this
        real, intent(in) :: dt
        real :: force, acceleration

        force = force_function(this)
        acceleration = force / this%mass

        this%velocity = this%velocity + acceleration * dt
        this%displacement = this%displacement + this%velocity * dt
        this%time = this%time + dt

    end subroutine update_system

    function force_function(this) result(output) ! Calculate the force acting on the system based on Hooke's law and damping
        class(System), intent(in) :: this
        real :: output

        ! F = -kx - bv
        output = -this%spring_constant * this%displacement - this%damping_coefficient * this%velocity
    end function force_function

end program harmonic_oscillator
module algorithmen
    use funktionen
    implicit none
    contains

    subroutine EulerCauchy(n,dt,phi,omega)
        implicit none
        integer(KIND=8)  :: n,i
        double precision    :: dt
        double precision,dimension(:)   ::phi,omega

        do i = 1,n
            phi(i+1) = phi(i) + dt*omega(i)
            omega(i+1) = omega(i) + dt * omegaAbleitung(phi(i))
        end do
    end subroutine

end module algorithmen

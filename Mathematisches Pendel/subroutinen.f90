module algorithmen
    use funktionen
    implicit none
    contains

    SUBROUTINE EulerCauchy(n,dt,phi,omega)
        implicit none
        integer(KIND=8)  :: n,i
        real                :: dt
        real,dimension(:)   ::phi,omega

        do i = 1,n
            phi(i+1) = phi(i) + dt*omega(i)
            omega(i+1) = omega(i) + dt * omegaAbleitung(phi(i))
        end do
        
    END SUBROUTINE
    
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    SUBROUTINE rk4(n,dt,phi,omega)
    
        implicit none
        
        integer             :: n,i
        real                :: dt
        real,dimension(:)   :: phi, omega
        real                :: k1p,k1o, k2p, k2o, k3p, k3o, k4p, k4o
        real                :: kp, ko
        
        
        do i = 1,n
            k1p = dphi(omega(i)) 
            k1o = omegaAbleitung(phi(i))
            k2p = dphi (omega(i) + k1o * dt / 2)
            k2o = omegaAbleitung(phi(i) + k1p * dt / 2)
            k3p = dphi (omega(i) + k2o * dt / 2)
            k3o = omegaAbleitung(phi(i) + k2p * dt / 2)
            k4p = dphi (omega(i) + k3o * dt)
            k4o = omegaAbleitung(phi(i) + k3p * dt)
            
            kp = (k1p + 2 * k2p + 2 * k3p + k4p)
            ko = (k1o + 2 * k2o + 2 * k3o + k4o)
            
            phi(i+1) = phi(i) + 1.0 / 6.0 * dt * kp
            omega(i+1) = omega(i) + 1.0 / 6.0* dt * ko
        end do
        
    END SUBROUTINE rk4

end module algorithmen

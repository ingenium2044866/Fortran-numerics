MODULE Algorithmen
    
    use Daten
    use Gleichung
    
    implicit none 
    
    contains
    
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    SUBROUTINE euler (v, t)
        implicit none
        
        real,dimension(:)   :: v, t
        integer             :: i
        
        
        do i = 1, n
            v( i + 1 ) = v(i) + fallgleichung(v(i), t(i)) * dt
        end do
        
    
    END SUBROUTINE euler
    
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    SUBROUTINE euler2 (v, t)
        implicit none
        
        real,dimension(:)   :: v, t
    
    END SUBROUTINE euler2
    
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    SUBROUTINE heun (v, t)
        implicit none
        
        real,dimension(:)   :: v, t
    
    
    
    END SUBROUTINE heun
    
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    SUBROUTINE rk2 (v, t)
        implicit none
        
        real,dimension(:)   :: v, t
        real                :: k1, k2
        integer             :: i
        
        do i = 1, n
            k1 = fallgleichung(v(i), t(i))
            k2 = fallgleichung(v(i) + k1 * dt/2, t(i) + dt/2)
            v(i+1) = v(i) + k2 * dt
        end do 
        
        
    END SUBROUTINE rk2
    
!++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    SUBROUTINE rk4 (v, t)
        implicit none
        
        real,dimension(:)   :: v, t
        real                :: k1, k2, k3, k4, k
        integer             :: i
        
        do i = 1, n
            k1 = fallgleichung(v(i), t(i))
            k2 = fallgleichung(v(i) + k1 * dt/2, t(i) + dt/2)
            k3 = fallgleichung(v(i) + k2 * dt/2, t(i) + dt/2)
            k4 = fallgleichung(v(i) + k3 * dt, t(i) + dt)
            k  = ( k1 + 2 * k2 + 2 * k3 + k4) / 6
            v(i+1) = v(i) + k * dt
        end do 
        
        
    END SUBROUTINE rk4
    
END MODULE Algorithmen
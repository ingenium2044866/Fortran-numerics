
    PROGRAM FallMitLuftwiderstand
    use Daten
    use Gleichung
    use Algorithmen
    use Output
    
    implicit none
    
    real,dimension(n + 1)    :: v, t
    double precision         :: tStart, tEnde
    integer                  :: i
    
    v(1) = v0
    t(1) = t0
    
    do i = 1, n 
        t(i + 1) = dt * i
    end do

    
    tStart = secnds(0.0)
        call euler(v,t)
    tEnde = secnds(tStart)
    
    write(*,*) "Euler-Cauchy: berechnet in ", tEnde, " s"
    
    call ausgabeDatei(v,t,"euler")
    
    tStart = secnds(0.0)
        call rk2(v,t)
    tEnde = secnds(tStart)
    
    write(*,*) "Runge-Kutta 2.Ordnung:berechnet in ", tEnde, " s"
    
    call ausgabeDatei(v,t,"rk2")
    
    tStart = secnds(0.0)
        call rk4(v,t)
    tEnde = secnds(tStart)
    
    write(*,*) "Runge-Kutta 4.Ordnung: berechnet in ", tEnde, " s"
    
    call ausgabeDatei(v,t,"rk4")
    
    
    pause
    
    END PROGRAM FallMitLuftwiderstand
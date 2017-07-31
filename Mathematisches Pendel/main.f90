! A fortran95 program for G95
! By Sergej Kuzmin
program main
    use funktionen
    use algorithmen
    use konstanten
    use ausgabe
    implicit none
    integer(KIND=8)      :: i
    integer(KIND=8)      :: n    ! Integrationsschritte
    real        :: dt   ! Schrittweite
    real        :: t0 = 0.0, phi0 = 0.0, &
    &                 omega0 = 0.0 ! Startwerte
    real        :: tEnd     ! Endzeit [s]
    double precision        :: t_begin, t_schluss
    real,dimension(:),allocatable   :: t,phi,d_phi,d_omega
    real,dimension(:),allocatable   :: omega
    character(len = 256)            :: algoName
    integer                 :: io_err,alg


!   Simulationswerte
    phi0 = pi/2

    do      ! Abfangen der Eingabefehler
        print "(A$)", "Algorithmus: "
        print "(/,A,/,A)", "(0) - Euler - Cauchy", "(1) - Runge-Kutta 4. Ordnung"
        read (*,*,iostat = io_err) alg
        if (io_err == 0) exit
        print "(A)", "Falsche Eingabe, nochmal"
        cycle
    end do
    
    
    do      ! Abfangen der Eingabefehler
        print "(/,A$)", "Anzahl der Integrationsschritte: "
        read (*,*,iostat = io_err) n
        if (io_err == 0) exit
        print "(A)", "Falsche Eingabe, nochmal"
        cycle
    end do

    tEnd = 10
    dt = (tEnd - t0)/n
    ! Vektoren werden allokiert
    allocate(t(n + 1))
    allocate(omega(n + 1))
    allocate(phi(n + 1))
    ! Initialisierung
    phi(1) = phi0
    phi(2:n+1) = 0
    omega(1) = omega0
    omega(2:n+1) = 0
    d_phi = omega   ! Ableitung des Winkels = die Winkelgeschwindigkeit

    t(1) = t0
    do i = 2,n ! Berechnung des Zeitvektors
        t(i) = t0 + dt*i
    end do

    if (alg == 0) then
        algoName = "euler_cauchy"
    else if (alg == 1) then
        algoName = "rk4"
    else
        print*,"Unbekannter Algorithmus"
        stop
    end if

    select case (algoName)
        case("euler_cauchy")
                t_begin = secnds(0.0)
                    call EulerCauchy(n,dt,phi,omega)
                t_schluss = secnds(t_begin)
            call standardOutput(n,t,phi,omega,t_schluss,trim(adjustl(algoName)))
        case("rk4")
            t_begin = secnds(0.0)
                call rk4(n,dt,phi,omega)
            t_schluss = secnds(t_begin)
        call standardOutput(n,t,phi,omega,t_schluss,trim(adjustl(algoName)))
    end select


    deallocate(t)
    deallocate(omega)
    deallocate(phi)

    print "(A)", "Enter zum Schliessen ..."
    read(*,*)

end program main

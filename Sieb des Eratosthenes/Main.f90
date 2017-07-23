program SiebEratosthenes
    
    use zahlen
    use output
    use algos
    
    implicit none 
    
    integer(kind = 8)                  :: oberGrenze
    integer                            :: counter
    integer, allocatable, dimension(:) :: prime 
    double precision                   :: tStart, tEnde
    
    character(len = 4)                 :: abfrage
    integer                            :: io_err


    
    do 
        write(*,"($A)") "Zahl eingeben: "
        read (*,*,iostat = io_err) oberGrenze
        if (io_err == 0) exit
        print "(A)", "Falsche Eingabe, nochmal"
        cycle
    end do
        
    
    allocate(prime(oberGrenze))
    
    prime = 0
    
    tStart = secnds(0.0)
        call sieb(prime)
    tEnde = secnds(tStart)
    
    write(*,*) "Maximale Primzahl: ", prime(size(prime))
    write(*,*) "Berechnungszeit = ", tEnde , " s"
    write(*,*)
    
        do
            write(*,"($A)") "Sollen die Primzahlen gespeichert werden ? [y/n] -> "
            read (*,*,iostat = io_err) abfrage
                call ausgabeDatei(prime,tEnde,"primZahlen",abfrage)
            if (io_err == 0) exit
            print "(A)", "Falsche Eingabe, nochmal"
            cycle
    end do

    deallocate(prime)
    
    print*
    pause
    
end program SiebEratosthenes
    
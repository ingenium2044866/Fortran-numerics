MODULE output
    implicit none
    contains
    
    SUBROUTINE ausgabeKonsole(liste)
    implicit none 
    
    integer,dimension(:) :: liste
    integer              :: i
    
    do i = 1, size(liste)
        write(*,*) liste(i)
    end do
    
    
    END SUBROUTINE ausgabeKonsole
    
    SUBROUTINE ausgabeDatei(liste,zeit,dateiName,ausgabePrims)
    implicit none
    
    integer,dimension(:) :: liste
    integer              :: i,outputUnit = 99
    double precision     :: zeit
    character(len = *)    :: dateiName
    character(len=*)      :: ausgabePrims
    
    open(unit = OutputUnit, file = dateiname//".dat")
        write(OutputUnit,"(A,/)")  "Ausgabe:"
        write (OutputUnit, "(I9,A,F12.6,A)") size(liste), " Primzahlen wurden in ", zeit, " s berechnet"
        write(OutputUnit, "(/,A,I9)") "Maximale Prizahl ist: ", liste(size(liste))
        write(OutputUnit,"(/,A,/)")  "Liste der Primzahlen:"
        
        if (ausgabePrims == "y") then
            do i = 1, size(liste)
                write(OutputUnit,*) i,") ", liste(i)
            end do
        end if
    close(unit = OutputUnit)
    
    END SUBROUTINE ausgabeDatei
    
    
END MODULE output
    
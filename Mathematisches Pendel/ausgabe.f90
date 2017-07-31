module ausgabe
    implicit none

    contains

    subroutine standardOutput(n,t,phi,omega,zeit,dateiname)
        implicit none
        real,dimension(:)   ::t,phi,omega
        integer(KIND=8)              :: i,n,OutputUnit
        character(*)        :: dateiname
        character(100)      :: nummer
        double precision                :: zeit
        OutputUnit = 99
        print "(A,/)", "Ausgabe:"

!        print "(6X,A,15X,A,15X,A)", "t", "phi", "omega"
!        print "(A,/)", "------------------------------------------------"
!        do i = 1,n
!            print "(F12.4,5X,F12.4,5X,F12.4)", t(i), phi(i), omega(i)
!        end do

!        print "(A24,1X,I12,1X,A20,1X,F12.6,1X,A2)", &
!        &   "Integtrationsschritte = ", n, ", Berechnungszeit = ", zeit, " s"

        write(nummer,*) n
        open(unit = OutputUnit, file = dateiname//"_"//trim(adjustl(nummer))//".dat")
!            write(OutputUnit,"(A,/)")  "Ausgabe:"
!            write(OutputUnit,"(A24,1X,I12,1X,A20,1X,F12.6,1X,A2)") &
!        &   "Integtrationsschritte = ", n, ", Berechnungszeit = ", zeit, " s"
!            write(OutputUnit,"(6X,A,15X,A,15X,A)") "t", "phi", "omega"
!            write(OutputUnit,"(A,/)") "------------------------------------------------"
            do i = 1,n
                write(OutputUnit,"(F12.6,5X,F12.6,5X,F12.6)") t(i), phi(i), omega(i)
            end do
        close(unit = OutputUnit)

    end subroutine





end module

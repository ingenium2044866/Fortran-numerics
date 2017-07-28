
MODULE Output

    use Daten

    implicit none 

    contains
    
    SUBROUTINE ausgabeDatei(v,t,dateiName)
        implicit none
    
        real,dimension(:) :: v, t
        integer              :: i,outputUnit = 99
        character(len = *)   :: dateiName
        character(256)           :: nChar
    
        write(nChar,"(I10)") n

        open(unit = OutputUnit, file = dateiname//"-n"//adjustl(nChar))

        
        do i = 1, size(v)
            write(OutputUnit, "(F12.6,3X,F12.6)") t(i), v(i)
        end do
    
    END SUBROUTINE ausgabeDatei



END MODULE Output
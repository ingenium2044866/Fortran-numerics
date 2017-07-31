module funktionen
    use konstanten
    implicit none

    contains

    real function DegToRad (Winkel)
        real,intent(in) :: Winkel
        DegToRad = pi * Winkel / 180.0
    end function

    real function dphi(omega)
        real,intent(in)    :: omega
        dphi = omega
    end function

    real function omegaAbleitung(Winkel)
        real    :: Winkel, faktor
        faktor  = -g/l
        omegaAbleitung = faktor*sin(Winkel)
    end function

end module

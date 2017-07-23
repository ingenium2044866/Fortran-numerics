module funktionen
    use konstanten
    implicit none

    contains

    double precision function DegToRad (Winkel)
        double precision,intent(in) :: Winkel
        DegToRad = pi * Winkel/180.0
    end function

    double precision function dphi(t,phi,omega)
        double precision,intent(in)    :: t, phi, omega
        dphi = omega
    end function

    double precision function omegaAbleitung(Winkel)
        double precision    :: Winkel, faktor
        faktor  = -g/l
        omegaAbleitung = faktor*sin(Winkel)
    end function

end module

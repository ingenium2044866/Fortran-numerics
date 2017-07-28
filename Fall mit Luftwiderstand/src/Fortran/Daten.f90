MODULE Daten
    implicit none 
    save
    !--------------------------------------------------------------------------!
    !   Physikalische und mathematische (Anfangswerte) Daten                   !
    !   zur Ausfuehrung der Berechnung :                                       !
    !        m = Masse des Objektes                                            !
    !       Cw = Widerstandsbeiwert des Objektes                               !
    !       t0 = Startpunkt (zeitlich)                                         !
    !       tE = Endpunkt (zeitlich)                                           !
    !       v0 = Startgeschwindigkeit                                          !
    !        g = Erdbeschleinigung                                             !
    !        n = Anzahl der Schritte
    !--------------------------------------------------------------------------!
    real,parameter    ::     m = 5.0D0     ! kg
    real,parameter    ::    Cw = 0.0162    ! kg/m
    real,parameter    ::    t0 = 0.0D0     ! s
    real,parameter    ::    tE = 20.0D0    ! s
    real,parameter    ::    v0 = 0.0D0     ! m/s
    real,parameter    :: gErde = 9.81      ! m/s^2
    integer,parameter ::     n = 5
    real              ::    dt = (tE - t0)/real(n)
    
END MODULE Daten
    MODULE Gleichung
    
    use Daten
    
    implicit none
    
    contains
    
    REAL FUNCTION fallgleichung (x, t)
    
        implicit none
        
        real            :: x, t
        
        fallgleichung = gErde - Cw/m * x**2
        
    END FUNCTION fallgleichung
    
    
    
END MODULE Gleichung
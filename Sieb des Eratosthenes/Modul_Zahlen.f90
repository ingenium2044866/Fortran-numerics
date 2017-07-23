module zahlen
    
    implicit none
    
    contains
    
    subroutine zahlenGenerator(liste)
    implicit none
    integer, dimension(:) :: liste
    integer               :: i
    
    do i = 1,size(liste)
        liste(i) = i + 1
    end do 
    
    end subroutine zahlenGenerator
    
    
    
end module zahlen

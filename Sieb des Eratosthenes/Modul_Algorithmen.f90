MODULE algos
    implicit none 
    
    contains
    
    SUBROUTINE sieb(primes)
        implicit none
        integer                             :: maxNumber
        integer, dimension(:)               :: primes
        logical, allocatable,dimension(:)   :: isPrime 
        integer                             :: i, j, counter = 0
        
        primes(1) = 2
        
        maxNumber = maxNumb(size(primes))
            
        allocate(isPrime(maxNumber))
            
        isPrime = .true.
        isPrime (1) = .false.
        
        do i = 2, int (sqrt (real (size(isPrime))))
            if (isPrime (i)) isPrime (i * i : maxNumber : i) = .false.
        end do
          
      i = 1
      j = 1
      do while ( counter.lt.size(primes))

            if (isPrime (i)) then 
                primes(j) = i
                counter = counter + 1
                j = j + 1
            end if
        i = i + 1
      end do

    deallocate(isPrime)

        
    END SUBROUTINE sieb
    
    
    integer function maxNumb(groesseArray)
    implicit none
    
    integer :: groesseArray
    
            if (groesseArray <= 1e+04) then 
            maxNumb = 1.1e+05
        else if  (groesseArray > 1e+04.and.groesseArray<=5e+04) then 
            maxNumb = 7e+05
        else if  (groesseArray > 5e+04.and.groesseArray<=1e+05) then 
            maxNumb = 1.3e+06
        else if (groesseArray > 1e+05.and.groesseArray <=1.5e+05) then
            maxNumb = 2.1e+06
        else if (groesseArray > 1.5e+05.and.groesseArray <=2.0e+05) then
            maxNumb = 2.8e+06
        else if (groesseArray > 2.0e+05.and.groesseArray <=2.5e+05) then
            maxNumb = 3.5e+06
        else if (groesseArray > 2.5e+05.and.groesseArray <=3.0e+05) then
            maxNumb = 4.3e+06
        else if (groesseArray > 3.0e+05.and.groesseArray <=3.5e+05) then
            maxNumb = 5.1e+06
        else if (groesseArray > 3.5e+05.and.groesseArray <=4.0e+05) then
            maxNumb = 5.81e+06
        else if (groesseArray > 4.0e+05.and.groesseArray <=4.5e+05) then
            maxNumb = 6.59e+06
        else if (groesseArray > 4.5e+05.and.groesseArray <=5.0e+05) then
            maxNumb = 7.37e+06
        else if (groesseArray > 5.0e+05.and.groesseArray <=5.5e+05) then
            maxNumb = 8.17e+06
        else if (groesseArray > 5.5e+05.and.groesseArray <=6.0e+05) then
            maxNumb = 8.97e+06
        else if (groesseArray > 6.0e+05.and.groesseArray <=6.5e+05) then
            maxNumb = 9.77e+06
        else if (groesseArray > 6.5e+05.and.groesseArray <=7.0e+05) then
            maxNumb = 10.6e+06
        else if (groesseArray > 7.0e+05.and.groesseArray <=8.0e+05) then
            maxNumb = 12.2e+06
        else if (groesseArray > 8e+05.and.groesseArray <=9.0e+05) then
            maxNumb = 13.84e+06
        else if (groesseArray > 9.0e+05.and.groesseArray <=1.0e+06) then
            maxNumb = 15.49e+06
        else if (groesseArray > 1.0e+06.and.groesseArray <=1.5e+06) then
            maxNumb = 23.88e+06
        else if (groesseArray > 1.5e+06.and.groesseArray <=2.0e+06) then
            maxNumb = 32.46e+06
        else if (groesseArray > 2.0e+06.and.groesseArray <=2.5e+06) then
            maxNumb = 41.17e+06
        else if (groesseArray > 2.5e+06.and.groesseArray <=3.0e+06) then
            maxNumb = 49.98e+06
        else if (groesseArray > 3e+06.and.groesseArray <=4e+06) then
            maxNumb = 67.87e+06
        else if (groesseArray > 4e+06.and.groesseArray <=5.0e+06) then
            maxNumb = 86.03e+06
        else if (groesseArray > 5e+06.and.groesseArray <=6.0e+06) then
            maxNumb = 10.44e+07
        else if (groesseArray > 6e+06.and.groesseArray <=7.0e+06) then
            maxNumb = 12.3e+07
        else if (groesseArray > 7e+06.and.groesseArray <=8.0e+06) then
            maxNumb = 14.17e+07
        else if (groesseArray > 8e+06.and.groesseArray <=9.0e+06) then
            maxNumb = 16.05e+07
        else if (groesseArray > 9e+06.and.groesseArray <=1.0e+07) then
            maxNumb = 17.943e+07
        else
            maxNumb = 1e+09
        end if
        
        end function
    
    
END MODULE algos

! Requirements: Fortran 90 or newer compiler (e.g., gfortran)
! Execution: gfortran helloWorld_F90.f90 -o hello_f90 && ./hello_f90

program hello
  ! F90 introduced a more modern syntax compared to F77.
  ! print * is used for list-directed output.
  print *, "Hello, World!"
end program hello

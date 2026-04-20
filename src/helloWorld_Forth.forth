\ Requirements: Forth interpreter (e.g., gforth)
\ Execution: gforth helloWorld_Forth.forth -e "bye"

: HELLO ( -- )
  \ ." is used for string output in Forth.
  \ CR prints a carriage return (newline).
  ." Hello, World!" CR ;

\ Execute the HELLO word.
HELLO

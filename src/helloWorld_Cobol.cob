      * COBOL Hello World
      * Requirements: GnuCOBOL (cobc)
      * Execution: cobc -x -o helloWorld_Cobol helloWorld_Cobol.cob && ./helloWorld_Cobol

       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       PROCEDURE DIVISION.
           DISPLAY 'Hello, World!'.
           STOP RUN.

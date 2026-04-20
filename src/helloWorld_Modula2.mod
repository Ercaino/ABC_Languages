MODULE Hello;
(*
 * Hello World in Modula-2
 * 
 * Requirements:
 * - Modula-2 compiler (e.g., GNU Modula-2).
 * 
 * Execution:
 * - gm2 -c helloWorld_Modula2.mod
 * - gm2 helloWorld_Modula2.mod -o helloWorld
 * - ./helloWorld
 *)

FROM InOut IMPORT WriteString, WriteLn;

BEGIN
    WriteString("Hello, World!");
    WriteLn;
END Hello.

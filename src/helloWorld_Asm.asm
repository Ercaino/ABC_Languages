section .data
    msg db 'Hello, World!', 0xa ; The string to print (0xa is newline)
    len equ $ - msg             ; Length of the string

section .text
    global _start

_start:
    ; syscall: write(1, msg, len)
    mov rax, 1                  ; system call for write
    mov rdi, 1                  ; file descriptor 1 is stdout
    mov rsi, msg                ; address of string to output
    mov rdx, len                ; number of bytes
    syscall                     ; invoke operating system to do the write

    ; syscall: exit(0)
    mov rax, 60                 ; system call for exit
    xor rdi, rdi                ; exit code 0
    syscall                     ; invoke operating system to exit

; Requirements: NASM and LD (Linux x86_64)
; Run Command: nasm -f elf64 helloWorld_Asm.asm -o hello.o && ld hello.o -o hello && ./hello

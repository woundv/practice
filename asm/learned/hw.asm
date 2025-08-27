global _start

section .data
    msg db "Hello World", 0x0a ; 0x0a is 10 in hex which signifies a new line
    len equ $ - msg ; find location (location of start of string - location after the string)

section .text
_start:
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; the bytes to write
    mov edx, len    ; number of bytes to write
    int 0x80        ; perform system call
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status of 0
    int 0x80        ; perform systemcall
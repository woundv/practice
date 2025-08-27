global _start

section .data
    addr db "yellow", 0x0a      ; define byte string as "yellow" followed by a new line
    len equ $ - addr            ; perform operation to find location (length) of the string (see /asm/learned/hw.asm for more information)

section .text
_start:
    mov [addr], byte 'H'        ; move the char byte "H" into the first byte position of "addr"
    mov [addr+5], byte '!'      ; move the char byte "!" into the fifth byte position of "addr"
    mov eax, 4                  ; sys_write system call
    mov ebx, 1                  ; define file descriptor
    mov ecx, addr               ; the bytes to write
    mov edx, len                ; the amount of bytes to write
    int 0x80                    ; perform system call
    mov eax, 1                  ; sys_exit system call
    mov ebx, 0                  ; set exit status = 0
    int 0x80                    ; perform system call
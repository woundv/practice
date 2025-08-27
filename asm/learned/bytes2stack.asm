global _start

_start:
    sub esp, 4                  ; subtract 4 bytes from the stack pointer
    mov [esp], byte 'h'         ; move a byte representing "H" into the stack
    mov [esp+1], byte 'e'       ; move a byte representing "E" into the next position in the stack
    mov [esp+2], byte 'y'       ; *
    mov [esp+3], dword 0x0a     ; *
    mov eax, 4                  ; sys_write system call
    mov ebx, 1                  ; define file descriptor
    mov ecx, esp                ; the bytes to write
    mov edx, 4                  ; the amount of the bytes to write
    int 0x80                    ; preform system call
    mov eax, 1                  ; sys_exit system call
    mov ebx, 0                  ; set exit status = 0
    int 0x80                    ; preform system call
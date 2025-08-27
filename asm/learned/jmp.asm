global _start

_start:
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; set exit status = 0
    mov ecx, 99     ; set value of ecx register to 99
    cmp ecx, 100    ; compare(cmp) value of ecx to 100
    jl exit         ; jump to exit label if the value of ecx is less than 100 (jump if less than)
    mov ebx, 2      ; if jump fails, set exit status = 2

exit:
    int 0x80        ; preform syscall
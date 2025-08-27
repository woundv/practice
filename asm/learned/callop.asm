global _start

_start:
    call func       ; make a call to the function "func" (read call.txt for more info)
    mov eax, 1      ; sys_exit system call
    int 0x80        ; preforms system call

func:
    mov ebx, 4      ; set exit status = 4
    ret             ; this is the same as doing the following:
                    ;   pop eax
                    ;   jmp eax
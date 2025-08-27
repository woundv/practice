global _start

_start:
    call func               ; call function "func" (see /asm/notes/call.txt for more information)
    mov eax, 1              ; sys_exit system call
    mov ebx, 0              ; set exit status = 0
    int 0x80                ; perform system call

func:
    mov ebp, esp            ; moves the value at the top of the stack into the base pointer
    sub esp, 3              ; subtract 2 bytes from the stack (allocate 2 bytes), we can now freely manipulate the stack pointer thanks to ebp
    mov [esp], byte 'h'     ; move the char byte "H" into the "first" byte position in the stack pointer
    mov [esp+1], byte 'i'   ; move the char byte "I" into the "second" byte position in the stack pointer
    mov [esp+2], byte 0x0a  ; move the hex byte "0x0a" (newline) into the "third" byte position in the stack pointer
    mov eax, 4              ; sys_write system call
    mov ebx, 1              ; define file descriptor
    mov ecx, esp            ; the bytes to write
    mov edx, 3              ; the amount of bytes to write
    int 0x80                ; perform system call
    mov esp, ebp            ; move the value of ebp into the stack pointer
    ret                     ; return to the top of the stack (see why in /asm/notes/ret.txt)
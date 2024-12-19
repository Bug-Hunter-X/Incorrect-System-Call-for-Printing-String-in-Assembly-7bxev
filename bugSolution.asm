```assembly
section .data
    msg db "Hello, world!",0
    len equ $ - msg ; Length of the message

section .text
    global _start

_start:
    ; sys_write
    mov eax, 1      ; write syscall number
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; address of the message
    mov edx, len    ; length of the message
    int 0x80

    ; sys_exit
    mov eax, 60     ; exit syscall number
    xor ebx, ebx    ; exit code 0
    int 0x80
```
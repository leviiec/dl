section .data
    msg db "nhap so vao : ", 0
    len equ $-msg
    even_msg db " so chan", 0
    odd_msg db " so le", 0

section .bss
    number resb 1

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, number
    mov edx, 1
    int 0x80

    sub byte [number], 0x30

    mov eax, dword [number]
    and eax, 1
    cmp eax, 0
    je even

    mov eax, 4
    mov ebx, 1
    mov ecx, odd_msg
    mov edx, 8
    int 0x80
    jmp end

even:
    mov eax, 4
    mov ebx, 1
    mov ecx, even_msg
    mov edx, 9
    int 0x80

end:
    mov eax, 1
    xor ebx, ebx
    int 0x80
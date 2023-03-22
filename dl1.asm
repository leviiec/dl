section .data
    prompt db 'Nhap so nguyen tu 0 den 9: '
    len_prompt equ $-prompt
    even db ' so do la so chan', 0
    odd db ' so do la so le', 0

section .bss
    num resb 1

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, len_prompt
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, num
    mov edx, 1
    int 80h

    mov eax, [num]
    and eax, 1
    cmp eax, 0
    je even_number
 
    mov eax, 4
    mov ebx, 1
    mov ecx, odd
    mov edx, 16
    int 80h

    mov eax, 1
    xor ebx, ebx
    int 80h

even_number:
    mov eax, 4
    mov ebx, 1
    mov ecx, even
    mov edx, 19
    int 80h

    mov eax, 1
    xor ebx, ebx
    int 80h
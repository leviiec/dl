section .data
prompt db "Nhập một kí tự in hoa: "
section .bss
input resb 1
section .text
global _start
_start:
    
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 22
    int 0x80

    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 1
    int 0x80

    cmp byte [input], 'A'
    jl exit
    cmp byte [input], 'Z'
    jg exit
    add byte [input], 32
    
    mov eax, 4
    mov ebx, 1
    mov ecx, input
    mov edx, 1
    int 0x80
exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80
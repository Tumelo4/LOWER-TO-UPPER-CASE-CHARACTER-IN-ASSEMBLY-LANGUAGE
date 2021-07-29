	section .data
; Constant

EXIT_SUCCESS equ 0
SYS_exit equ 60

; output
FirstO db "Please input the lowercase character: "
SecondO db "In uppercase: "
endLine db 0xA, 0xD

	section .bss
First resb 1

	section .text
	global _start

_start:

	mov rax, 1
	mov rdi, 1
	mov rsi, FirstO
	mov rdx, 38
	syscall

	mov rax,0
	mov rdi,0
	mov rsi,First
	mov rdx,2
	syscall

	mov al, byte[First]
	sub al, 32
	mov byte[First], al


	mov rax, 1
    mov rdi, 1
    mov rsi, SecondO
    mov rdx, 14
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, First
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, endLine
    mov rdx, 1
    syscall

	mov rax, SYS_exit
	mov rdi, EXIT_SUCCESS
	syscall

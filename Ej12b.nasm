; HelloWorld.asm
; Author: Sebastian Tleye

global _start

section .text

_exit:

	mov eax, 0x1       ;1 is the system call to exit
	mov ebx, 0x5       ;5 is the number we want to return
	int 0x80           ;system call

_start:

	mov ax, -3
	mov ebx, -10
	cwde
	add eax, ebx

	call _exit

section .data

	message: db "Hello World!"
	mlen     equ $-message
; HelloWorld.asm
; Author: Sebastian Tleye

global _start

section .text

_start:

	mov al, -3
	mov bx, -10
	add ax, bx

	mov eax, 0x1       ;1 is the system call to exit
	mov ebx, 0x5       ;5 is the number we want to return
	int 0x80           ;system call

section .data

	message: db "Hello World!"
	mlen     equ $-message
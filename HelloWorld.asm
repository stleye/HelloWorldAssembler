; HelloWorld.asm
; Author: Sebastian Tleye

global _main

section .text

_main:

	mov eax, 0x4       ;eax has to contain the syscall number (for write, the value is 4)
	mov ebx, 0x1       ;ebx will contain stdout
	mov ecx, message   ;ecx will contain the pointer to the string
	;mov edx, 12       ;edx will contain the length of the string
	mov edx, mlen      ;mlen contains the length of the string
	int 0x80           ;system call
	mov eax, 0x1       ;1 is the system call to exit
	mov ebx, 0x5       ;5 is the number we want to return
	int 0x80           ;system call

section .data

	message: db "Hello World!"
	mlen     equ $-message
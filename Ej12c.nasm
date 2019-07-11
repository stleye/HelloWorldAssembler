; HelloWorld.asm
; Author: Sebastian Tleye

global _start

section .text

_exit:

	mov eax, 0x1       ;1 is the system call to exit
	mov ebx, 0x5       ;5 is the number we want to return
	int 0x80           ;system call

_start:

	mov eax, -10
	lea esi, [var1]
	cqd
	add [esi+4], eax
	adc [esi], edx

	call _exit

section .data

	var1: dq -45
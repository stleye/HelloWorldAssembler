; Arithmetic.asm
; Author: Sebastian Tleye

section .text
_start:

	mov eax, 0						; eax = 0
	add al, 0x22					; al = 0x22, eax = 0x22
	add al, 0x11 					; al = 0x33, eax = 0x33

	mov ax, 0x1122					; ax = 0x1122, eax = 0x1122
	add ax, 0x3344					; ax = 0x14466, eax = 0x14466

	mov eax, 0xffffffff				; eax = 0xffffffff
	add eax, 0x10					; 

	; memory base addition

	mov eax, 0						; eax = 0
	add byte [var1], 0x22 			;	 
	add byte [var1], 0x11 	 		;

	add word [var2], 0x1122			;
	add word [var2], 0x3344			;

	mov dword [var3], 0xffffffff 	;
	add dword [var3], 0x10			;

	; set / clear / complement carry flag

	clc
	stc
	cmc

	; add with carry

	mov eax, 0
	stc
	adc al, 0x22
	stc
	adc al, 0x11


	; exit program

	mov eax, 1
	mov ebx, 10
	int 0x80

section .data

	var1	db	0x00
	var2	dw 	0x0000
	var3	dd 	0x00000000

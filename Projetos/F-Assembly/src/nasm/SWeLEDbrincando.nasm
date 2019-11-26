; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova

LOOP:
	leaw $21185, %A
	movw (%A), %D
	leaw $9, %A
	andw %D, %A, %S
	leaw $ELSE, %A
	jne %S
	nop
	leaw $21184, %A
	movw $0, (%A)
	leaw $LOOP, %A
	jmp 
	nop
	ELSE:
		leaw $21184, %A
		movw $-1, (%A)
		leaw $LOOP, %A
		jmp
		nop
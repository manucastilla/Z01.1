;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Simulado P3 2019-b
;;
;; Considerando que nosso hardware opera com um clock de
;; 1.000.000 Hz, escreva um código em  assembly que faz
;; com que os LEDs da placa pisquem a aproximadamente 1s.
;; (Piscar = tudo
;; aceso por um segundo e depois tudo apagado por um segundo)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


leaw $0, %A
movw %A, %D
leaw $6, %A
movw %D, (%A)

leaw $21184, %A
movw %D, (%A)


LOOP:

leaw $15, %A
movw %A, %D


FOR15:
	leaw $ENDFOR, %A
	je %D
	nop
	decw %D


	leaw $8191, %A
	movw %A, %S
FOR65535:
		leaw $acabou6K, %A
		je %S
		nop
		decw %S

		leaw $FOR65535, %A
		jmp
		nop
acabou6K:

	leaw $FOR15, %A
	jmp
	nop


ENDFOR:

leaw $6, %A
movw (%A), %D
notw %D
movw %D, (%A)

leaw $21184, %A 
movw %D, (%A)

leaw $LOOP, %A
jmp
nop
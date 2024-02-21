.data
array: .word 0 : 200									# um array de palavras, para armazenar valores.
array3: .asciiz " "										# uma string de array3.
array2: .asciiz "\n"									# uma string de nova linha.
tam: .word 10											# contagem real dos elementos no array.
Ordenado: .asciiz "Vetor Ordenado:"

.text
	
	la $t0, array										# carrega o array em $t0.
	lw $t1, tam											# carrega o tamanho em $t1.
	
	li $a0, 9												# 5 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 1												# 2 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 7												# 3 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 10												# 1 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 2												# 4 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 8												# 9 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 4												# 7 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 3												# 8 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 6											# 6 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.
	addi $t0, $t0, 4									# incrementa o ponteiro do array em 4.
	
	li $a0, 5											# 10 = N�mero q ser� adicionado no array.
	sw	$a0, 0($t0)										# armazena o valor no array.

insertion:
	la	$t0, array										# carrega o array em $t0.
	lw	$t1, tam											# carrega o tamanho do array em $t1.
	li $t2, 1												# inicializa a vari�vel de controle do loop em 1.

insertion_la�o_i:
	la	$t0, array										# carrega o array em $t0.
	bge $t2, $t1, insertion_la�o_i_end			# enquanto (t2 < $t1).
	move	$t3, $t2										# copia o valor de $t2 para $t3.

insertion_la�o_j:
	la	$t0, array										# carrega o array em $t0.
	mul $t5, $t3, 4									# multiplica $t3 por 4 e armazena em $t5.
	add $t0, $t0, $t5									# adiciona o endere�o do array com $t5, que � o �ndice multiplicado por 4.
	ble	$t3, $zero, insertion_la�o_j_end		# enquanto (t3 > 0).
	lw	$t7, 0($t0)										# carrega array[$t3] em $t7.
	lw	$t6, -4($t0)									# carrega array[$t3 - 1] em $t6.
	bge $t7, $t6, insertion_la�o_j_end			# enquanto (array[$t3] < array[$t3 - 1]).
	lw	$t4, 0($t0)
	sw	$t6, 0($t0)
	sw	$t4, -4($t0)
	subi $t3, $t3, 1
	j insertion_la�o_j								# salta de volta para o in�cio de insertion_la�o_j.

insertion_la�o_j_end:
	addi $t2, $t2, 1									# incrementa a vari�vel de controle do loop em 1.
	j insertion_la�o_i								# salta de volta para o in�cio de insertion_la�o_i.

insertion_la�o_i_end:
	li $v0, 4												# 4 = syscall para imprimir string.
	la $a0, Ordenado									# carrega Ordenado no registrador de argumento $a0.
	syscall												# faz uma chamada de sistema.
	li $v0, 4												# 4 = syscall para imprimir string.
	la $a0, array2										# carrega array2 no registrador de argumento $a0.
	syscall												# faz uma chamada de sistema.
	jal	display											# chama a rotina de impress�o.

exit:
	li $v0, 10											# syscall para sair do programa.
	syscall												# faz uma chamada de sistema.

display:													#           Printa todo o vetor          #
	la $t0, array										#											#							
	lw	$t1, tam											#											#		
	li	$t2, 0											#											#
															#											#							
display_la�o:											#											#							
	bge $t2, $t1, display_sa�da					#											#									
	li $v0, 1												#											#						
	lw	$a0, 0($t0)										#											#							
	syscall												#											#							
															#											#							
	li $v0, 4												#											#							
	la $a0, array3										#											#							
	syscall												#											#							
															#											#							
	addi $t0, $t0, 4									#											#
	addi $t2, $t2, 1									#											#
															#											#
	j display_la�o										#											#
															#											#
display_sa�da:											#											#
															#											#
	li $v0, 4												#											#
	la $a0, array2										#										    	#
	syscall												#						         	 		     #
	jr $ra													#  Retorna a fun��o == return 0  #

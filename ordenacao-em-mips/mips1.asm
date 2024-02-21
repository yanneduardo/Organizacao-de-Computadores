.data
	array1:		.asciiz "Array ordenado : "
	array2:		.asciiz " "
	
.text
#LIBERA ESPA�O PRO VETOR		
		li	$s2, 10								# ARMAZENA O TAMANHO DO VETOR EM $s2              -> ($s2 = n) <-
		sll	$s0, $v0, 2							# DA DOIS SHIFTS PARA A ESQUERDA                     -> ($s0 = n * 4) <-
		sub $sp, $sp, $s0						# CRIA UM ESPA�O PARA ARMAZENAR O VETOR        -> ($sp - s0) <-

#ATRIBUI O VALOR $zero AO $s1     
		move	$s1, $zero		# $s1 = i 
		
#L� TODO O VETOR A ATRIBUI AO VETOR (ESPA�O LIBERADO ANTERIORMENTE)
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 5								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 8								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 2								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 1								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 9								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 10								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 4								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 7								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 3								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 6								# L� O N�MERO (INT) FORNECIDO PELO USU�RIO
		sw	$a0, 0($t1)							# ARMAZENA O N�MERO NO ENDERE�O $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDERE�O ATUAL  -> ($t1 = $sp + $t0) <-
		
		li	$v0, 4	
		la	$a0, array1						#PRINTA A MENSAGEM DE "VETOR ORDENADO"
		syscall
		
sa�da_leitura:	
		move	$a0, $sp							# ATRIBUI A PRIMEIRA POSI��O DO VETOR PRO $a0
		move	$a1, $s2							# ATRIBUI O TAMANHO DO VETOR PRO $a1, PASSOS NECESS�RIOS PARA CHAMAR A FUN��O SELECTION
		jal	selection							# FUN��O SELECTION QUE ORDENA O VETOR		
			
		move	$s1, $zero						#ATRIBUI O i IGUAL A ZERO NOVAMENTE PARA INICIAR OUTRO LA�O DE REPETI��O

#PRINTA TODO O VETOR ORDENADO		
display:	
		bge	$s1, $s2, sa�da_display	# SE O $ s1 FOR MAIOR QUE $s2 IR� SAIR DO LA�O   							 ->  $s1 = i, $s2 = n <-
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDERE�OS               -> ($t0 = i * 4) <-
		add	$t1, $sp, $t0					# $t1 IGUAL O ENDERE�O DO VETOR V[i]
		lw 	$a0, 0($t1)							# ATRIBUI O ELEMENTO NA POSI��O i DO VETOR PRO REGISTRADOR $a0   -> ($a0 = v[i]) <-
		
		li	$v0, 1								# PRINTA O ELEMENTO V[i]
		syscall				

		la	$a0, array2
		li	$v0, 4								#PRINTA O ESPA�O ENTRE OS ELEMENTOS
		syscall
		
		addi	$s1, $s1, 1						# i++
		j	display								#DA UM JUMP PARA REPETIR O LA�O DE PRINTAR	
		
sa�da_display:	
		add	$sp, $sp, $s0					# RESETA O REGISTRADOR $sp AO FLUXO NORMAL
		
		li	$v0, 10								# COMANDO PARA FINALIZAR O PROGRAMA, POIS SE N�O ELE IRIA EXECUTAR TUDO QUE EST� ABAIXO
		syscall		
		
# SELECTION SORT
selection:		
		addi	$sp, $sp, -20	# SALVA OS VALORES NA PILHA/ARRAY
		sw	$ra, 0($sp)
		sw	$s0, 4($sp)
		sw	$s1, 8($sp)
		sw	$s2, 12($sp)
		sw	$s3, 16($sp)

		move 	$s0, $a0		# ATRIBUI O PRIMEIRO ENDERE�O PRO REG $s0
		move	$s1, $zero		# INICIALIZA O i IGUAL 0    -> (I = 0) <-

		subi	$s2, $a1, 1		# TAMANHO_ARRAY --
selection_la�o:	
		bge 	$s1, $s2, selection_sa�da	# SE O I FOR MAIOR OU IGUAL AO TAMANHO - 1 SAI DO LA�O  -> (i >= tamanho_array - 1) <-
		
		#PASSOS NECESS�RIOS SOMENTE SE FOR USAR UMA FUN��O, ENT�O OS REGS $a0, $a1, etc...  SER�O OS PAR�METROS DA FUN��O
		
		move	$a0, $s0		# ENDERE�O INICIAL
		move	$a1, $s1		# ATRIBUI I AO REG $a1
		move	$a2, $s2		# ATRIBUI O TAMANHO_ARRAY - 1 AO REG $a2
		
		#
		
		jal	min				#FUN��O PARA RETORNAR A POSI��O DE ONDE EST� O MENOR ELEMENTO
		move	$s3, $v0		# ATRIBUI O VALOR DO MIN NO REG $s3     -> ($s3 = $v0) <-
		
		#PASSOS NECESS�RIOS SOMENTE SE FOR USAR UMA FUN��O, ENT�O OS REGS $a0, $a1, etc...  SER�O OS PAR�METROS DA FUN��O
		
		move	$a0, $s0		# PASSA O vetor/array PARA O PAR�METRO $a0
		move	$a1, $s1		# PASSA O i PARA O PAR�METRO $a1
		move	$a2, $s3		# PASSA O min PARA O PAR�METRO $a1
		
		#
		
		jal	troca 						 # FUN��O DE TROCAR DOIS ELEMENTOS
		addi	$s1, $s1, 1  			 # i++
		j	selection_la�o 			 # RETORNA PARA O COME�O DO LA�O
		
selection_sa�da:	
		lw	$ra, 0($sp)		 			 # RESTAURA OS VALORES DO ARRAY
		lw	$s0, 4($sp)
		lw	$s1, 8($sp)
		lw	$s2, 12($sp)
		lw	$s3, 16($sp)
		addi	$sp, $sp, 20 			 # RESTAURA O $sp
		jr	$ra			   				 #RETORNA O VALOR DA FUN��O

# RETORNA O ENDERE�O DE ONDE ESTA O MENOR ELEMENTO
min:			
		move	$t0, $a0					# INICIO DO ARRAY = PRIMEIRA POSI��O
		move	$t1, $a1					# MIN_INDEX COME�A COMO SENDO O i = COME�O
		move	$t2, $a2					# FINAL DO ARRAY = FINAL
		
		sll	$t3, $t1, 2					# SHIFT PARA A ESQUERDA																			   -> (MIN * 4) <-
		add	$t3, $t3, $t0			# ENDERE�AMENTO IGUAL INICIO DO ARRAY MAIS A POSI��O QUE VOC� ANDOU
		lw	$t4, 0($t3)					# MIN_ELEMENTO � IGUAL O PRIMEIRO ELEMENTO  											-> (MIN = v[first]) <-
		
		addi	$t5, $t1, 1				# INICIALIZA O i IGUAL 0
min_la�o:	
		bgt	$t5, $t2, min_fim	# ENCERRA A FUN��O 

		sll	$t6, $t5, 2					# DOIS SHIFTS PARA A ESQUERDA -> (i * 4) <-
		add	$t6, $t6, $t0		    # ENDERE�AMENTO IGUAL O INICIO DO VETOR MAIS A QUANTIDADE QUE ANDOU NO ARRAY -> (inicio do array + i * 4) <-	
		lw	$t7, 0($t6)					# V[ENDERE�AMENTO]
		bge	$t7, $t4, min_if_sa�da	# PULA PARA A SA�DA DO IF SE  v[i] FOR MAIOR OU IGUAL O MIN
		move	$t1, $t5					# ATRIBUI O i COMO SENDO O MIN  -> (min = i) <-
		move	$t4, $t7					# ATRIBUI O V[i] COMO SENDO O MIN  -> (min = V[i]) <-

min_if_sa�da:	
		addi	$t5, $t5, 1				# i ++
		j	min_la�o					# RETORNA PARA O LA�O

min_fim:
		move 	$v0, $t1				# RETORNA O MIN
		jr	$ra


# TROCA DOIS VALORES
troca:		
		sll	$t1, $a1, 2					# DOIS SHIFTS PARA A ESQUERDA -> (i * 4) <-
		add	$t1, $a0, $t1			# ANDA QUATRO CASAS NO VETOR, INDO PRO PR�XIMO �NDICE -> (v + i * 4) <-	
		sll	$t2, $a2, 2					# DOIS SHIFTS PARA A ESQUERDA -> (J == MIN | J * 4) <-
		add	$t2, $a0, $t2			# ANDA J * 4 CASA NO VETOR -> (v + j * 4) <-

		lw	$t0, 0($t1)					# ATRIBUI v[i] EM $t0
		lw	$t3, 0($t2)					# ATRIBUI v[j] EM $t3

		sw	$t3, 0($t1)					# SALVA O v[j] EM v[i]    ->(v[i] = v[j]) <-
		sw	$t0, 0($t2)					# SALVA O QUE ESTAVA EM v[i] EM v[j]    ->(v[J] = v[I]) <- 

		jr	$ra							#RETORNA O VALOR DA FUN��O

.data
	array1:		.asciiz "Array ordenado : "
	array2:		.asciiz " "
	
.text
#LIBERA ESPAÇO PRO VETOR		
		li	$s2, 10								# ARMAZENA O TAMANHO DO VETOR EM $s2              -> ($s2 = n) <-
		sll	$s0, $v0, 2							# DA DOIS SHIFTS PARA A ESQUERDA                     -> ($s0 = n * 4) <-
		sub $sp, $sp, $s0						# CRIA UM ESPAÇO PARA ARMAZENAR O VETOR        -> ($sp - s0) <-

#ATRIBUI O VALOR $zero AO $s1     
		move	$s1, $zero		# $s1 = i 
		
#LÊ TODO O VETOR A ATRIBUI AO VETOR (ESPAÇO LIBERADO ANTERIORMENTE)
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 5								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 8								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 2								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 1								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 9								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 10								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 4								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 7								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 3								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		li	$a0, 6								# LÊ O NÚMERO (INT) FORNECIDO PELO USUÁRIO
		sw	$a0, 0($t1)							# ARMAZENA O NÚMERO NO ENDEREÇO $t1 DO VETOR
		addi	$s1, $s1, 1						#i++
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS              -> ($t0 = i * 4) <-
		add	$t1, $t0, $sp					# SOMA O $t0 MAIS O $sp PARA ANDAR DE 4 EM 4 NO ENDEREÇO ATUAL  -> ($t1 = $sp + $t0) <-
		
		li	$v0, 4	
		la	$a0, array1						#PRINTA A MENSAGEM DE "VETOR ORDENADO"
		syscall
		
saída_leitura:	
		move	$a0, $sp							# ATRIBUI A PRIMEIRA POSIÇÃO DO VETOR PRO $a0
		move	$a1, $s2							# ATRIBUI O TAMANHO DO VETOR PRO $a1, PASSOS NECESSÁRIOS PARA CHAMAR A FUNÇÃO SELECTION
		jal	selection							# FUNÇÃO SELECTION QUE ORDENA O VETOR		
			
		move	$s1, $zero						#ATRIBUI O i IGUAL A ZERO NOVAMENTE PARA INICIAR OUTRO LAÇO DE REPETIÇÃO

#PRINTA TODO O VETOR ORDENADO		
display:	
		bge	$s1, $s2, saída_display	# SE O $ s1 FOR MAIOR QUE $s2 IRÁ SAIR DO LAÇO   							 ->  $s1 = i, $s2 = n <-
		sll	$t0, $s1, 2							# DA DOIS SHIFTS PARA A ESQUERDA PARA PULAR 4 ENDEREÇOS               -> ($t0 = i * 4) <-
		add	$t1, $sp, $t0					# $t1 IGUAL O ENDEREÇO DO VETOR V[i]
		lw 	$a0, 0($t1)							# ATRIBUI O ELEMENTO NA POSIÇÃO i DO VETOR PRO REGISTRADOR $a0   -> ($a0 = v[i]) <-
		
		li	$v0, 1								# PRINTA O ELEMENTO V[i]
		syscall				

		la	$a0, array2
		li	$v0, 4								#PRINTA O ESPAÇO ENTRE OS ELEMENTOS
		syscall
		
		addi	$s1, $s1, 1						# i++
		j	display								#DA UM JUMP PARA REPETIR O LAÇO DE PRINTAR	
		
saída_display:	
		add	$sp, $sp, $s0					# RESETA O REGISTRADOR $sp AO FLUXO NORMAL
		
		li	$v0, 10								# COMANDO PARA FINALIZAR O PROGRAMA, POIS SE NÃO ELE IRIA EXECUTAR TUDO QUE ESTÁ ABAIXO
		syscall		
		
# SELECTION SORT
selection:		
		addi	$sp, $sp, -20	# SALVA OS VALORES NA PILHA/ARRAY
		sw	$ra, 0($sp)
		sw	$s0, 4($sp)
		sw	$s1, 8($sp)
		sw	$s2, 12($sp)
		sw	$s3, 16($sp)

		move 	$s0, $a0		# ATRIBUI O PRIMEIRO ENDEREÇO PRO REG $s0
		move	$s1, $zero		# INICIALIZA O i IGUAL 0    -> (I = 0) <-

		subi	$s2, $a1, 1		# TAMANHO_ARRAY --
selection_laço:	
		bge 	$s1, $s2, selection_saída	# SE O I FOR MAIOR OU IGUAL AO TAMANHO - 1 SAI DO LAÇO  -> (i >= tamanho_array - 1) <-
		
		#PASSOS NECESSÁRIOS SOMENTE SE FOR USAR UMA FUNÇÃO, ENTÃO OS REGS $a0, $a1, etc...  SERÃO OS PARÂMETROS DA FUNÇÃO
		
		move	$a0, $s0		# ENDEREÇO INICIAL
		move	$a1, $s1		# ATRIBUI I AO REG $a1
		move	$a2, $s2		# ATRIBUI O TAMANHO_ARRAY - 1 AO REG $a2
		
		#
		
		jal	min				#FUNÇÃO PARA RETORNAR A POSIÇÃO DE ONDE ESTÁ O MENOR ELEMENTO
		move	$s3, $v0		# ATRIBUI O VALOR DO MIN NO REG $s3     -> ($s3 = $v0) <-
		
		#PASSOS NECESSÁRIOS SOMENTE SE FOR USAR UMA FUNÇÃO, ENTÃO OS REGS $a0, $a1, etc...  SERÃO OS PARÂMETROS DA FUNÇÃO
		
		move	$a0, $s0		# PASSA O vetor/array PARA O PARÂMETRO $a0
		move	$a1, $s1		# PASSA O i PARA O PARÂMETRO $a1
		move	$a2, $s3		# PASSA O min PARA O PARÂMETRO $a1
		
		#
		
		jal	troca 						 # FUNÇÃO DE TROCAR DOIS ELEMENTOS
		addi	$s1, $s1, 1  			 # i++
		j	selection_laço 			 # RETORNA PARA O COMEÇO DO LAÇO
		
selection_saída:	
		lw	$ra, 0($sp)		 			 # RESTAURA OS VALORES DO ARRAY
		lw	$s0, 4($sp)
		lw	$s1, 8($sp)
		lw	$s2, 12($sp)
		lw	$s3, 16($sp)
		addi	$sp, $sp, 20 			 # RESTAURA O $sp
		jr	$ra			   				 #RETORNA O VALOR DA FUNÇÃO

# RETORNA O ENDEREÇO DE ONDE ESTA O MENOR ELEMENTO
min:			
		move	$t0, $a0					# INICIO DO ARRAY = PRIMEIRA POSIÇÃO
		move	$t1, $a1					# MIN_INDEX COMEÇA COMO SENDO O i = COMEÇO
		move	$t2, $a2					# FINAL DO ARRAY = FINAL
		
		sll	$t3, $t1, 2					# SHIFT PARA A ESQUERDA																			   -> (MIN * 4) <-
		add	$t3, $t3, $t0			# ENDEREÇAMENTO IGUAL INICIO DO ARRAY MAIS A POSIÇÃO QUE VOCÊ ANDOU
		lw	$t4, 0($t3)					# MIN_ELEMENTO É IGUAL O PRIMEIRO ELEMENTO  											-> (MIN = v[first]) <-
		
		addi	$t5, $t1, 1				# INICIALIZA O i IGUAL 0
min_laço:	
		bgt	$t5, $t2, min_fim	# ENCERRA A FUNÇÃO 

		sll	$t6, $t5, 2					# DOIS SHIFTS PARA A ESQUERDA -> (i * 4) <-
		add	$t6, $t6, $t0		    # ENDEREÇAMENTO IGUAL O INICIO DO VETOR MAIS A QUANTIDADE QUE ANDOU NO ARRAY -> (inicio do array + i * 4) <-	
		lw	$t7, 0($t6)					# V[ENDEREÇAMENTO]
		bge	$t7, $t4, min_if_saída	# PULA PARA A SAÍDA DO IF SE  v[i] FOR MAIOR OU IGUAL O MIN
		move	$t1, $t5					# ATRIBUI O i COMO SENDO O MIN  -> (min = i) <-
		move	$t4, $t7					# ATRIBUI O V[i] COMO SENDO O MIN  -> (min = V[i]) <-

min_if_saída:	
		addi	$t5, $t5, 1				# i ++
		j	min_laço					# RETORNA PARA O LAÇO

min_fim:
		move 	$v0, $t1				# RETORNA O MIN
		jr	$ra


# TROCA DOIS VALORES
troca:		
		sll	$t1, $a1, 2					# DOIS SHIFTS PARA A ESQUERDA -> (i * 4) <-
		add	$t1, $a0, $t1			# ANDA QUATRO CASAS NO VETOR, INDO PRO PRÓXIMO ÍNDICE -> (v + i * 4) <-	
		sll	$t2, $a2, 2					# DOIS SHIFTS PARA A ESQUERDA -> (J == MIN | J * 4) <-
		add	$t2, $a0, $t2			# ANDA J * 4 CASA NO VETOR -> (v + j * 4) <-

		lw	$t0, 0($t1)					# ATRIBUI v[i] EM $t0
		lw	$t3, 0($t2)					# ATRIBUI v[j] EM $t3

		sw	$t3, 0($t1)					# SALVA O v[j] EM v[i]    ->(v[i] = v[j]) <-
		sw	$t0, 0($t2)					# SALVA O QUE ESTAVA EM v[i] EM v[j]    ->(v[J] = v[I]) <- 

		jr	$ra							#RETORNA O VALOR DA FUNÇÃO

Fib:
    addi	$sp, $sp, -12		# $sp = $sp + -12
    sw		$s0, 8($sp)
    sw		$s1, 4($sp)
    sw		$s2, 0($sp)
    add		$v0, $zero, $zero	# $v0 = $zero + $zero
    addi    	$t0, $zero, 1
    slt		$t0, $a0, $t0
    bne		$t0, $zero, Salir	# si $t0 != $zero ir a Salir
    add		$s0, $zero, $zero	# $s0 = $zero + $zero
    addi	$s1, $s0, 1		# $s1 = $s0 + 1
    addi	$s2, $zero, 1		# $s2 = $zero + 1
    addi	$v0, $zero, 1		# $v0 = $zero + 1
Ciclo:
    beq		$a0, $s2, Salir		# si $a0 == $s2 ir a Salir
    addi	$s2, $s2, 1		# $s2 = $s2 + 1
    add		$s1, $s1, $s0		# $s1 = $s1 + $s0
    sub		$s0, $s1, $s0		# $s0 = $s1 - $s0
    add		$v0, $s1, $zero		# $v0 = $s1 + $zero
    j		Ciclo			# ir a ciclo
Salir:
    lw		$s2, 0($sp)	    	# 
    lw		$s1, 4($sp)	    	# 
    lw		$s0, 8($sp)	    	# 
    addi    	$sp, $sp, 12		
 #   jr		$ra			# Volver al procedimiento que lo llamo, descomentar para usar como función
    

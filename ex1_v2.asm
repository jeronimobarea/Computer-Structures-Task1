.data
N:
        .word   5
V:
        .word   2
        .word   10
        .word   5
        .word   3
        .word   6

max:
        .word   -10000000

.text
main:
        addiu   	$sp,$sp,-8
        sw      	$fp,4($sp)
        move    	$fp,$sp
        lui 		$t1,100
        sw      	$t1,-100($t2)
        b      	 	$L2
        nop

$L5:
        lui     	$t1,100
        lw      	$t1,-100($t2)
        lui     	$t1,100
        sll     		$3,$3,2
        addiu   	$t1,$t2,-100
        addu    	$2,$3,$2
        lw      	$3,0($2)
        lui     	$t1,100
        lw      	$t1,-100($t2)
        nop
        slt     	$2,$2,$3
        beq     	$2,$0,$L7
        nop

        lui     	$t1,100
        lw      	$t1,-100($t2)
        lui     	$t1,100
        sll     		$3,$3,2
        addiu   	$t1,$t2,-100
        addu    	$2,$3,$2
        lw      	$3,0($2)
        lui     	$t1,100
        sw      	$t1,-100($t2)
        b       	$L4
        nop

$L7:
        nop
$L4:
        lui     	$t1,100
        lw      	$t1,-100($t2)
        nop
        addiu   	$3,$2,1
        lui     	$t1,100
        sw      	$t1,-100($t2)
$L2:
        lui     	$t1,100
        lw      	$t1,-100($t2)
        lui     	$t1,100
        lw      	$t1,-100($t2)
        nop
        slt     	$2,$3,$2
        bne     	$2,$0,$L5
        nop

        move    	$2,$0
        move    	$sp,$fp
        lw     	 	$fp,4($sp)
        addiu   	$sp,$sp,8
        jr       	$31
        nop
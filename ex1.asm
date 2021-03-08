main:
        addiu   	$sp,$sp,-48
        sw      	$fp,44($sp)
        move  	$fp,$sp
        li      		$2,5                        	# 0x5
        sw      	$2,16($fp)
        li      		$2,2                       	# 0x2
        sw      	$2,20($fp)
        li     		$2,10                 	# 0xa
        sw      	$2,24($fp)
        li      		$2,5                        	# 0x5
        sw      	$2,28($fp)
        li      		$2,3                        	# 0x3
        sw      	$2,32($fp)
        li      		$2,6                        	# 0x6
        sw      	$2,36($fp)
        li      		$2,-10027008            # 0xffffffffff670000
        ori     	$2,$2,0x6980
        sw      	$2,12($fp)
        sw      	$0,8($fp)
        b       	$FOR_LOOP
        nop

$IF_CONFITION:
        lw      	$2,8($fp)
        nop
        sll     		$2,$2,2
        addiu   	$3,$fp,8
        addu    	$2,$3,$2
        lw      	$3,12($2)
        lw      	$2,12($fp)
        nop
        slt     	$2,$2,$3
        beq     	$2,$0,$CONTINUE
        nop

        lw      	$2,8($fp)
        nop
        sll     		$2,$2,2
        addiu   	$3,$fp,8
        addu    	$2,$3,$2
        lw      	$2,12($2)
        nop
        sw      	$2,12($fp)
        b       	$FOR_LOOP_CONDITION
        nop

$CONTINUE:
        nop
        
$FOR_LOOP_CONDITION:
        lw      	$2,8($fp)
        nop
        addiu   	$2,$2,1
        sw      	$2,8($fp)
        
$FOR_LOOP:
        lw      	$3,8($fp)
        lw      	$2,16($fp)
        nop
        slt     	$2,$3,$2
        bne     	$2,$0,$IF_CONFITION
        nop

        move    	$2,$0
        move    	$sp,$fp
        lw      	$fp,44($sp)
        addiu   	$sp,$sp,48
        jr       	$31
        nop
.data





.text


        folha:

                addi $sp,$sp, -8
                sw $s0, 4($sp)
                sw $s1, 8($sp)
                
                add $s0,$a0,$a1
                add $s1,$a2,$a3 
                sub $v0,$s0,$s1 

                lw $s0, 4($sp)
                lw $s1, 8($sp)
                addi $sp,$sp, 8

                jr $ra 





        main:

                li $a0, 1
                li $a1, 2
                li $a2, 3
                li $a3, 4

                jal folha

                move $a0, $v0
                la $v0, 1
                syscall

                la $v0, 10
                syscall
            
.data



.text

        folha:
                add $a0,$a0,$a1
                add $a2,$a2,$a3 
                sub $v0,$a0,$a2 
                jr $ra 
        main:

                li $a0, 1
                li $a1, 2
                li $a2, 3
                li $a3, 4

                jal folha

                move $a0,$v0 
                la $v0, 1
                syscall

                li $v0 , 10
                syscall
.data   
    str: .asciiz ", "
    vet: .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
    
.text
    main:
            la $t1, vet
            li $t0 , 0

            loop:
                beq $t0, 10, sair

                lw $t2, 0($t1)

                li $v0, 1
                move $a0 , $t2
                syscall

                li $v0, 4
                la $a0 , str
                syscall

                addi $t0,$t0,1
                addi $t1, $t1, 4
                j loop


                li $v0, 10
                syscall

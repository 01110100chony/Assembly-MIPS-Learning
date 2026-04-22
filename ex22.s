.data
        str: .asciiz "Content"
        str1:

.text 


        strcpy:
                addi $sp, $sp, -8
                sw $s0, 4($sp)
                sw $ra, 8($sp)
        loop: 
                lb $s0, 0($a0)
                sb $s0, 0($a1)

                beq $s0, $zero, sair
                
                addi $a0, $a0, 1
                addi $a1, $a1 ,1

                j loop
       main: 

                la $a0, str
                la $a1, str1 

                jal strcpy 

                la $a0,str1 
                li $v0,4
                syscall

                li $v0,10
                syscall

        sair: 
                lw $s0, 4($sp)
                lw $ra, 8($sp)
                addi $sp,$sp,8
                jr $ra 

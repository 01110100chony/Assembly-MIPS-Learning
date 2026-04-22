.data

        msg: .asciiz "|Insira o primeiro n. |\n"
        msg1: .asciiz "|Insira o segundo n. |\n"
        msg2: .asciiz "|O resultado eh : |\n"
        msg3: .asciiz "\n|--------------------|\n"

.text


        soma:
                add $v0,$a0,$a1
                jr $ra 

        main:

                li $v0,4
                la $a0,msg
                syscall

                li $v0,5
                syscall
                move $s0,$v0

                li $v0,4
                la $a0,msg1
                syscall

                li $v0,5
                syscall
                move $s1,$v0

                li $v0,4
                la $a0,msg2
                syscall

                move $a0,$s0
                move $a1,$s1

                jal soma

                move $a0, $v0
                la $v0, 1
                syscall

                li $v0,4
                la $a0,msg3
                syscall

                la $v0, 10
                syscall
            
.data
            msg:  .asciiz "o resultado da soma eh\n\n"

.text

    main: 

    li $t0, 10
    li $t1, 20
    add $t2,$t0,$t1

    li $v0,4
    la $a0, msg
    syscall

    li $v0,1
    move $a0,$t2
    syscall
    

    li $v0,10
    syscall






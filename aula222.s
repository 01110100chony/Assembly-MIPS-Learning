.data
    espaco: .asciiz " "


.text
main:

        li $t0, 8 # comeca do 8
        li $t1, 1 # ate 1

    loop:
        move $a0,$t0 #a0 assume a t0 = 8
        li $v0, 1 #imprime inteiro
        syscall

        la $a0, espaco # imprime espaco
        li $v0 , 4 # espaco = string, syscall 4
        syscall

        addi $t0,$t0, -1 # t0 = t0 - 1 ou seja t0 = 8 - 1 = 7
        ble $t1,$t0, loop # se t1 >= t0 , volta pro loop
        
        li $v0, 10 # cod saida
        syscall
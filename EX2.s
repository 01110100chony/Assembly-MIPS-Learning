.data 
    str: .asciiz "abcdefghijk"
    str1: .space 20

.text
.globl main

strcpy:
    # Argumentos:
    # $a0 = endereço do array x (destino)
    # $a1 = endereço do array y (fonte)
    
    li $t0, 0           # i = 0
    
loop:
    add $t1, $a1, $t0   # endereço de y[i]
    lb $t2, 0($t1)      # carrega y[i]
    
    add $t3, $a0, $t0   # endereço de x[i]
    sb $t2, 0($t3)      # armazena em x[i]
    
    beq $t2, $zero, sair # se y[i] == '\0', sai do loop
    
    addi $t0, $t0, 1    # i++
    j loop              # volta para o início do loop
    
sair:
    jr $ra              # retorna da função

main:  
    la $a0, str1        # $a0 = endereço do array destino (x)
    la $a1, str         # $a1 = endereço do array fonte (y)
    
    jal strcpy          # Chama strcpy(str1, str)
    
    la $a0, str1        # Carrega endereço de str1 para imprimir
    li $v0, 4           # Syscall para print string
    syscall
    
    li $v0, 10          # Syscall para exit
    syscall
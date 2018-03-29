.data
aa: .space 20
bb: .word 1, 2, 3, 4, 5


.text
main:

li $t0, 12  # t0 = c = 12
li $t1, 0     # counter i
li $t2, 5    #limit
la $t3, bb    # address of b
#————————
loop:
beq $t1, $t2, loopp

lw $t5, 0($t3)
add $t5, $t5, $t0
sw $t5, aa($t1)

addi $t1, $t1, 1
j loop


#————————
addi $t1, $t1, -1
loopp:
bltz $t1, end

lw $t6, aa($t1)
li $t7, 2
mul $t6, $t6, $t7
sw $t6, aa($t1)
addi $t1, $t1, -1

j loopp

end:

li $v0, 10
syscall
.data
list: .word 2, 3, 5, 7, 9
size: .word 5
print: .asciiz "print array 2 3 5 7 9 in reverse\n"

.text
main:

la $a0, print
li $v0, 4
syscall

lw $t3, size

li $t5, 16

la $t1, list
add $t1, $t1, $t5

li $t2, 0
#———————
print_loop:

beq $t2, $t3, print_loop_end

lw $t4, ($t1)

move $a0, $t4
li $v0, 1
syscall


addi $t2, $t2, 1
addi $t1, $t1, -4

j print_loop


#--------------------

print_loop_end:

li $v0, 10
syscall

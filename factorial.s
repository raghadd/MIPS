.data
enter: .asciiz "Enter n: \n"

.text
main:

la $a0, enter
li $v0, 4
syscall

li $v0, 5
syscall
move $s1, $v0  # s1 = n

li $t1, 1 #counter
li $t2, 0 #iteration

fact:
beqz $t2, onee
bgt $t1, $s1, end
mul $t2, $t2, $t1
addi $t1, $t1, 1
j fact

onee:
addi $t2, $t2, 1
j fact

end:

move $a0, $t2
li $v0, 1
syscall

li $v0, 10
syscall

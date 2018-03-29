.data
minp: .asciiz " min = "
enter: .asciiz "Enter x, y, and z \n"
min: .word 0

.text
main:
la $a0, enter
li $v0, 4
syscall

li $v0, 5
syscall
move $s1, $v0  # s1 = x

li $v0, 5
syscall
move $s2, $v0  # s2 = y

li $v0, 5
syscall
move $s3, $v0  # s3 = z

sw $s1, min
lw $t0, min

blt $s2, $t0, y
blt $s3, $t0,z
j print

y:
sw $s2, min
j print

z:
sw $s3, min
j print

print:
la $a0, minp
li $v0, 4
syscall

lw $t0, min
move $a0, $t0
li $v0, 1
syscall

li $v0, 10
syscall
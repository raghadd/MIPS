.data
enter: .asciiz "Enter five numbers: \n"

.text
main:

li $v0, 4
la $a0, enter
syscall

li $v0, 6
syscall
mov.s $f6, $f0

li $v0, 6
syscall
mov.s $f5, $f0

li $v0, 6
syscall
mov.s $f4, $f0

li $v0, 6
syscall
mov.s $f3, $f0

li $v0, 6
syscall
mov.s $f2, $f0

add.s $f1, $f2, $f3
add.s $f1, $f1, $f4
add.s $f1, $f1, $f5
add.s $f1, $f1, $f6

mov.s $f12, $f1
li $v0, 2
syscall


li $v0, 10
syscall
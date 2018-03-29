.data
enter: .asciiz "Enter a number: \n"

.text
main:

la $a0, enter
li $v0, 4
syscall

li $v0, 6
syscall
mov.s $f3, $f0  # f3 = x

li.s $f2, 1.0  # i
li.s $f5, 1.0  # f5 = term
li.s $f4, 1.0  # f4 = counter
li.s $f6, 0.000001
li.s $f7, 1.0 # to increase counter, there is no addi.s
li.s $f8, 0.0 # for branching


loop:
mul.s $f5, $f5, $f3  # term*x
div.s $f5, $f5, $f4  # term*x /counter
add.s $f4, $f4, $f7




sub.s $f2, $f2, $f5
div.s $f6, $f4, $f3
mul.s $f1, $f2, $f6

mov.s $f12, $f1
li $v0, 2
syscall

li $v0, 10
syscall
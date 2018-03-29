.data
space: .asciiz " "
line: .asciiz " \n "
enterij: .asciiz "Enter i & j \n"
entergh: .asciiz "Enter g & h \n"
f: .asciiz " f = "

# if (i == j) 	
#  	f=g+h;  #else 
#		f=g-h;


.text
main:

la $a0, enterij
li $v0, 4
syscall

li $v0, 5
syscall
move $s1, $v0  # s1 = i

li $v0, 5
syscall
move $s2, $v0  # s2 = j

la $a0, entergh
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0  # t0 = g

li $v0, 5
syscall
move $t1, $v0  # t1 = h

beq $s1, $s2, addition
sub $s0, $t0, $t1
j end

addition:
add $s0, $t0, $t1

end:
la $a0, f
li $v0, 4
syscall

move $a0, $s0
li $v0, 1
syscall

li $v0, 10
syscall

lw x19, f
lw x20, g
lw x21, h
lw x22, i
lw x23, j

beq x22, x23, if_label
else_label: 
	sub x19, x20, x21
	beq x0, x0, fim
if_label: 
	add x19, x20, x21

fim:
	sw x19, f
	halt

f: .word 0x0
g: .word 0x20
h: .word 0x15
i: .word 0x0
j: .word 0x1
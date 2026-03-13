lw x28, a
lw x29, b
sw x28, m
lw x30, m
blt x29, x30, m_menor

else_m_menor:
	sub x30, x28, x29
	beq x0, x0, fim

m_menor:
	add x30, x29, x28

fim:
	sw x30, m
	halt

a: .word 0x6
b: .word 0xF
m: .word 0x0

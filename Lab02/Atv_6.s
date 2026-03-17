addi x11, x0, 1
sb x11, 1029(x0)
addi x12, x0, 0
addi x13, x0, 6

loop:
lb x10, 1026(x0)
andi x10, x10, 0x1
beq x10, x0, loop

on:
slli x11, x11, 1 
addi x12, x12, 1
sb x11, 1029(x0)
beq x12, x13, fim
jal x0, loop

fim: halt
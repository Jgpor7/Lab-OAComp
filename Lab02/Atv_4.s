addi x11, x0, 32 
addi x12, x11, 12

loop: 
blt x12, x11, fim 
lb x10, 0(x11)
sb x10, 1024(x0)
addi x11, x11, 1
beq x0, x0, loop

fim:
halt
str1: .string "Hello World"
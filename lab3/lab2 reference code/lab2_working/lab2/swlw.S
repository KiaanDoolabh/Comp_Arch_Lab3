li x1, 0x12345678    # value for word
li x2, 0x100          # base address

# Word store/load
sw x1, 0(x2)
lw x3, 0(x2)
bne x1, x3, fail

# Halfword store/load
li x4, 0xABCD
sh x4, 4(x2)
lh x5, 4(x2)
bne x4, x5, fail

# Byte store/load
li x6, 0x7F
sb x6, 6(x2)
lb x7, 6(x2)
bne x6, x7, fail

# Unsigned load halfword
lhu x8, 4(x2)
bne x4, x8, fail

# Unsigned load byte
lbu x9, 6(x2)
bne x6, x9, fail

# Pass
li a0, 10
ecall

fail:
li a0, 17
ecall
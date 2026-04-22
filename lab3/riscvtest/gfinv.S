.globl __start

.text

__start:
    li a0, 0x61        # Input value to invert in GF(2^8)
    li t0, 0x11B       # Modulus
    li t1, 0           # s0
    li t2, 1           # s1
    mv t3, t0          # r0 = modulus
    mv t4, a0          # r1 = input

# a0 Input value / final result
# t0    Modulus (0x11B)
# t1    s0
# t2    s1
# t3    r0 (initially modulus)
# t4    r1 (initially input)
# t5    degree(r0)
# t6    degree(r1)
# a1    Used as argument to gf_degree
# a2    shift amount
# a3    temporary for slt
# a4/a5 temporary for operations


# main loop
inv_loop:
    beqz t4, fail      # If r1 == 0, no inverse

    # Compute degrees
    mv a1, t3
    call gf_degree
    mv t5, a0          # deg(r0)

    mv a1, t4
    call gf_degree
    mv t6, a0          # deg(r1)

    sub a2, t5, t6     # shift = deg(r0) - deg(r1)
    slt a3, a2, zero
    bnez a3, swap_and_negate

    # r0 ^= r1 << shift
    sll a4, t4, a2
    xor t3, t3, a4
    andi t3, t3, 0x1FF  # clamp to 9 bits

    # s0 ^= s1 << shift
    sll a5, t2, a2
    xor t1, t1, a5
    andi t1, t1, 0x1FF

    # Swap r0 <-> r1
    mv a4, t3
    mv t3, t4
    mv t4, a4

    # Swap s0 <-> s1
    mv a4, t1
    mv t1, t2
    mv t2, a4

    li t5, 1
    beq t3, t5, done

    j inv_loop

# applied when shift is negative 
# swaps (r0/r1) and (s0/s1) 
# applies shift=-shift and swaps again
swap_and_negate:
    # Swap r0 <-> r1
    mv a4, t3
    mv t3, t4
    mv t4, a4

    # Swap s0 <-> s1
    mv a4, t1
    mv t1, t2
    mv t2, a4

    # shift = -shift
    sub a2, zero, a2

    # r0 ^= r1 << shift
    sll a4, t4, a2
    xor t3, t3, a4
    andi t3, t3, 0x1FF

    # s0 ^= s1 << shift
    sll a5, t2, a2
    xor t1, t1, a5
    andi t1, t1, 0x1FF

    # Swap again
    mv a4, t3
    mv t3, t4
    mv t4, a4

    mv a4, t1
    mv t1, t2
    mv t2, a4

    li t5, 1
    beq t3, t5, done

    j inv_loop

# finds the position of the MSB set in a byte.
# Used to compute the degree of a polynomial in GF(2^8).
gf_degree:
    li t0, 8
deg_loop:
    srl a0, a1, t0
    andi a0, a0, 1
    bnez a0, done_deg
    addi t0, t0, -1
    bgez t0, deg_loop
    li a0, 0
    ret
done_deg:
    mv a0, t0
    ret

# finish up: Returns a0 as the inverse (masked to 8 bits)
done:
    mv a0, t1        # result in a0 (s0)
    andi a0, a0, 0xFF
    j loop_forever

fail:
    li a0, 0xFF      # No inverse
    j loop_forever

loop_forever:
    j loop_forever
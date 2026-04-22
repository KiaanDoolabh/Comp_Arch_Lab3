.globl __start

.text

__start:
        li a0, 0x53        	# Input: a0 = value to invert in GF(2^8)
        li t0, 0x11B       	# t0 = modulus
        li t1, 0           	# t1 = s0
        li t2, 1           	# t2 = s1
        mv t3, t0          	# t3 = r0
        mv t4, a0          	# t4 = r1

inv_loop:
        beqz t4, end

        # deg(r0)
        mv a1, t3
        call gf_degree
        mv t5, a0

        # deg(r1)
        mv a1, t4
        call gf_degree
        mv t6, a0

        # shift = deg(r0) - deg(r1)
        sub a2, t5, t6

        # ? shift < 0, jump
        slt a3, a2, zero
        bne a3, zero, swap_and_negate

        # r0 ^= r1 << shift
        sll a4, t4, a2
        xor t3, t3, a4

        # s0 ^= s1 << shift
        sll a5, t2, a2
        xor t1, t1, a5

        # swap r0 <-> r1
        mv a4, t3
        mv t3, t4
        mv t4, a4

        # swap s0 <-> s1
        mv a4, t1
        mv t1, t2
        mv t2, a4

        j inv_loop

swap_and_negate:
        # swap r0 <-> r1
        mv a4, t3
        mv t3, t4
        mv t4, a4

        # swap s0 <-> s1
        mv a4, t1
        mv t1, t2
        mv t2, a4

        # shift = -shift
        sub a2, zero, a2

        j inv_loop

gf_degree:
    li a3, 31            # degree counter
gf_deg_loop:
    srl a0, a1, a3       # shift a1 >> a3
    andi a0, a0, 1       # isolate bit
    bnez a0, done_deg
    addi a3, a3, -1
    bgez a3, gf_deg_loop

    li a3, -1
done_deg:
    mv a0, a3
    ret

gfdegfim:
    mv a0, t5
    ret

end:
        andi a0, t1, 0xFF  # a0 = inverse result (s0)

done:
        j done

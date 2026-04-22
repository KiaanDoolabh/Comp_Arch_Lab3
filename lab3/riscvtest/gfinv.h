.globl __start

.text

__start:
        li a0, 0x53         # Input value to invert in GF(2^8)
        li t0, 0x11B        # Modulus (AES poly)
        li t1, 0            # s0
        li t2, 1            # s1
        mv t3, t0           # r0
        mv t4, a0           # r1

inv_loop:
        beqz t4, check_done     # If r1 == 0, check if inverse exists

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

        # ? shift < 0, swap and negate
        slt a3, a2, zero
        bnez a3, swap_and_negate

        # r0 ^= r1 << shift
        sll a4, t4, a2
        xor t3, t3, a4
        andi t3, t3, 0x1FF   # keep r0 within 9 bits

        # s0 ^= s1 << shift
        sll a5, t2, a2
        xor t1, t1, a5
        andi t1, t1, 0x1FF   # keep s0 within 9 bits

        # Swap r0 <-> r1
        mv a4, t3
        mv t3, t4
        mv t4, a4

        # Swap s0 <-> s1
        mv a4, t1
        mv t1, t2
        mv t2, a4

        j inv_loop

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

        j inv_loop

# Compute the degree (highest set bit) of a1
gf_degree:
        li a3, 8
gf_deg_loop:
        srl a0, a1, a3
        andi a0, a0, 1
        bnez a0, done_deg
        addi a3, a3, -1
        bgez a3, gf_deg_loop
        li a0, 0
        ret
done_deg:
        mv a0, a3
        ret

check_done:
        li t5, 1
        bne t3, t5, no_inverse    # if r0 != 1, no inverse

end:
        mv a0, t1               # inverse is in s1
        andi a0, a0, 0xFF       # return lower 8 bits

done:
        j done

no_inverse:
        li a0, 0xFF             # indicate no inverse
        j done
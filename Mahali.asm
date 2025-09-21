.data
prompt:     .asciz "Enter number of cattle: "
error:  .asciz "Number of cattle cannot be negative\n"
not_enough: .asciz "Not enough for bohali\n"
small:      .asciz "Small herd\n"
wealthy:    .asciz "Wealthy cattle owner\n"

.text
.globl _start

_start:
    # cout << "Enter number of cattle: "
    la a0, prompt
    li a7, 4
    ecall
    
    # cin >> likhomo
    li a7, 5
    ecall
    mv t0, a0          # t0 = likhomo
    
    # if (likhomo < 0)
    blt t0, zero, error_l
    
    #if (likhomo < 15)
    li t1, 15
    blt t0, t1, not_enough_l
    
    # else if (likhomo < 50)
    li t1, 50
    blt t0, t1, small_l
    
    # Otherwise, wealthy (else)
    j wealthy_l

not_enough_l:
    # "Not enough for bohali"
    la a0, not_enough
    li a7, 4
    ecall
    j exit

small_l:
    # "Small herd"
    la a0, small
    li a7, 4
    ecall
    j exit

wealthy_l:
    # "Wealthy cattle owner"
    la a0, wealthy
    li a7, 4
    ecall
    j exit

error_l:
    # cout << "Number of cattle cannot be negative"
    la a0, error
    li a7, 4
    ecall
    
exit:
    # Exit program
    li a7, 10
    ecall

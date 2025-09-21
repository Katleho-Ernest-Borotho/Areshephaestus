.data
prompt:     .asciz "Enter height n: "
error:  .asciz "Height must be positive.\n"
star:       .asciz "*"
space:      .asciz " "
newline:    .asciz "\n"

.text
.globl _start

_start:
    # cout << "Enter height n: "
    la a0, prompt
    li a7, 4
    ecall
    
    # cin >> n
    li a7, 5
    ecall
    mv t0, a0          # t0 = n
    
    # if (n <= 0)
    ble t0, zero, error_l
    
    # for (int i = 1; i <= n; i++)
    li t1, 1           # t1 = i
    
outer_loop:
    # (i <= n)
    bgt t1, t0, exit
    
    # int j = 0; j < n - i; j++)
    sub t2, t0, t1     # t2 = n - i
    li t3, 0           # t3 = j
    
space_loop:
    # if j >= n - i, exit loop
    bge t3, t2, star_loop_init
    
    # cout << " "
    la a0, space
    li a7, 4
    ecall
    
    #  j (j++)
    addi t3, t3, 1
    j space_loop

star_loop_init:
    # for (int j = 0; j < 2 * i - 1; j++)
    li t4, 2           # t4 = 2
    mul t4, t1, t4     # t4 = 2 * i
    addi t4, t4, -1    # t4 = 2 * i - 1
    li t3, 0           # t3 = j
    
star_loop:
    #  if j >= 2*i-1, exit loop
    bge t3, t4, end_inner_loops
    
    # cout << "*"
    la a0, star
    li a7, 4
    ecall
    
    # j (j++)
    addi t3, t3, 1
    j star_loop

end_inner_loops:
    # cout << endl
    la a0, newline
    li a7, 4
    ecall
    
    #  i (i++)
    addi t1, t1, 1
    j outer_loop

error_l:
    #cout << "Height must be positive"
    la a0, error
    li a7, 4
    ecall
    
exit:
    # Exit program
    li a7, 10
    ecall

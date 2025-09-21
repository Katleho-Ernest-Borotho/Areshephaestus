.data
prompt:     .asciz "Enter quantity of grains in litres: "
error:  .asciz "Quantity cannot be negative.\n"
result: .asciz " litres make "
remain: .asciz " makokopo with "
litres: .asciz " litres remaining.\n"
newline:    .asciz "\n"

.text
.globl _start

_start:
    #cout << "Enter quantity of grains in litres: 
    la a0, prompt
    li a7, 4
    ecall
    
    #cin >> litres
    li a7, 5
    ecall
    mv t0, a0          # t0 = litres
    
    # if (litres < 0)
    blt t0, zero, error_l
    
    # Calculate makokopo and remainding
    li t1, 20          # t1 = lekopokopo = 20
    div t2, t0, t1     # t2 = makokopo = litres / 20
    rem t3, t0, t1     # t3 = remainding = litres % 20
    
    # Print original litres value
    mv a0, t0
    li a7, 1
    ecall
    
    # " litres make "
    la a0, result
    li a7, 4
    ecall
    
    #  makokopo count
    mv a0, t2
    li a7, 1
    ecall
    
    #  " makokopo with "
    la a0, remain
    li a7, 4
    ecall
    
    # remainding
    mv a0, t3
    li a7, 1
    ecall
    
    # " litres remaining.\n"
    la a0, litres
    li a7, 4
    ecall
    
    j exit

error_l:
    # cout << "Quantity cannot be negative "
    la a0, error
    li a7, 4
    ecall
    
exit:
    # return 0 or return 1
    li a7, 10
    ecall
    
    

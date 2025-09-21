.data
prompt:     .asciz "Enter a number (1-7): "
error:  .asciz "Please enter a number between 1 and 7.\n"
mantaha:    .asciz "Mantaha\n"
labobeli:   .asciz "Labobeli\n"
laboraro:   .asciz "Laboraro\n"
labone:     .asciz "Labone\n"
labohlano:  .asciz "Labohlano\n"
moqebelo:   .asciz "Moqebelo\n"
sontaha:    .asciz "Sontaha\n"

.text
.globl _start

_start:
    # cout << "Enter a number (1-7): "
    la a0, prompt
    li a7, 4
    ecall
    
    # cin >> dayNum
    li a7, 5
    ecall
    mv t0, a0          # t0 = dayNum
    
    # Check if input is 1
    li t1, 1
    beq t0, t1, case1
    
    # Check if input is 2
    li t1, 2
    beq t0, t1, case2
    
    # Check if input is 3
    li t1, 3
    beq t0, t1, case3
    
    # Check if input is 4
    li t1, 4
    beq t0, t1, case4
    
    # Check if input is 5
    li t1, 5
    beq t0, t1, case5
    
    # Check if input is 6
    li t1, 6
    beq t0, t1, case6
    
    # Check if input is 7
    li t1, 7
    beq t0, t1, case7
    
    # Default case (error)
    j error_l

case1:
    la a0, mantaha
    j print_day

case2:
    la a0, labobeli
    j print_day

case3:
    la a0, laboraro
    j print_day

case4:
    la a0, labone
    j print_day

case5:
    la a0, labohlano
    j print_day

case6:
    la a0, moqebelo
    j print_day

case7:
    la a0, sontaha
    j print_day

print_day:
    # Print the day name
    li a7, 4
    ecall
    j exit

error_l:
    # default case in switch
    la a0, error
    li a7, 4
    ecall
    
exit:
    # Exit program
    li a7, 10
    ecall

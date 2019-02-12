.section .data
val1: .word 6 @32-bit variable in val1 memory
val2: .word 11 @32-bit variable in val2 memory
val3: .word 16 @32-bit variable in val3 memory
.section .text
.globl _start
_start:
  ldr r1, =val1 @load address of val1 into r1 register
  ldr r1, [r1] @load value of val1 into r1 register
  ldr r2, =val2 @load address of val2 into r2 register
  ldr r2, [r2] @load value of val2
  ldr r3, =val3
  ldr r3, [r3]

  add r2, r2, #9
  add r3, r3, r2
  sub r3, r3, r1

  mov r7, #1
  svc #0
.end

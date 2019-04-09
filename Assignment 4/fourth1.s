
@Fourth program
@This program compute the following if statement construct:
        @intx;
        @inty;
        @if(x==0)
        @ y = 1;

.section .data
x: .word 0  @32-bit signed int
y: .word 0  @32-bit signed int

.section .text
.globl _start
_start:
          ldr r1,=x        @load the memory address of x into r1
          ldr r1,[r1]       @load the value x i

          cmp r1,#0         @
          bne endofif      @branch((jump) if not equal (Z==0) to the  endofif
          mov r2,#1
          ldr r3, =y        @load the memory address of y into r3
          str r2,[r3]       @str r2 register value into y memory address
endofif: 
          mov r7, #1        @Program Termination: exit syscall
          svc #0            @Program Termination: wake kernel
          .end


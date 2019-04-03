
@Fourth program
@This program compute the following if statement construct:
        @intx;
        @if(x<=3)
        @ x  = 1;

.section .data
x: .word 1  @32-bit signed int


.section .text
.globl _start
_start:
	  ldr r4,=x           @load the memory address of x into r4
          ldr r1,[r4]         @load the value x i
          
          cmp   r1,#3         @compare x =1 to number 3            
          bgt   thenpart      @branch((jump) if greater to the thenpart
	  subs  r1,r1,#1      @x=x-1
          b     endofif
thenpart: subs  r1,r1,#1       @x=x-2
   
endofif:
          str   r1,[r4]      @store value in x memory
          mov   r7,#1        @Program Termination: exit syscall          
          svc   #0            @Program Termination: wake kernel
          .end



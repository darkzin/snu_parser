##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 3 of <array 20 of <array 60 of <array 67 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 91 of <array 37 of <array 58 of <array 15 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   3:     goto   7
    jmp     l_f0_7                  #   4:     goto   7
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #   6:     goto   8
l_f0_7:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    jmp     l_f0_11                 #  10:     goto   11
l_f0_11:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_13                 #  13:     goto   13
    movl    $0, %eax                #  14:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f0_13:
    movzbl  -15(%ebp), %eax         #  16:     if     t4 = t5 goto 3_if_true
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #  17:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_2                  #  19:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 86 of <array 91 of <array 37 of <array 58 of <array 15 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 80 of <array 3 of <array 20 of <array 60 of <array 67 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $v0       <bool> %ebp-27 ]
    #   -19296052(%ebp)  19296024  [ $v1       <array 80 of <array 3 of <array 20 of <array 60 of <array 67 of <char>>>>>> %ebp-19296052 ]
    #   -1026971836(%ebp)  1007675784  [ $v2       <array 86 of <array 91 of <array 37 of <array 58 of <array 15 of <int>>>>>> %ebp-1026971836 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1026971824, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $256742956, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19296052(%ebp)      # local array 'v1': 5 dimensions
    movl    $80,-19296048(%ebp)     #   dimension 1: 80 elements
    movl    $3,-19296044(%ebp)      #   dimension 2: 3 elements
    movl    $20,-19296040(%ebp)     #   dimension 3: 20 elements
    movl    $60,-19296036(%ebp)     #   dimension 4: 60 elements
    movl    $67,-19296032(%ebp)     #   dimension 5: 67 elements
    movl    $5,-1026971836(%ebp)    # local array 'v2': 5 dimensions
    movl    $86,-1026971832(%ebp)   #   dimension 1: 86 elements
    movl    $91,-1026971828(%ebp)   #   dimension 2: 91 elements
    movl    $37,-1026971824(%ebp)   #   dimension 3: 37 elements
    movl    $58,-1026971820(%ebp)   #   dimension 4: 58 elements
    movl    $15,-1026971816(%ebp)   #   dimension 5: 15 elements

    # function body
    movl    $90161, %eax            #   0:     if     90161 < 24177 goto 4
    movl    $24177, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_4                 
    jmp     l_f2_5                  #   1:     goto   5
l_f2_4:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t2
    movb    %al, -27(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_8                  #  10:     goto   8
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_0:
l_f2_12_while_cond:
    jmp     l_f2_11                 #  16:     goto   11
    jmp     l_f2_12_while_cond      #  17:     goto   12_while_cond
l_f2_11:
    movl    $55685, %eax            #  19:     param  2 <- 55685
    pushl   %eax                   
    leal    -1026971836(%ebp), %eax #  20:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  1 <- t3
    pushl   %eax                   
    leal    -19296052(%ebp), %eax   #  22:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  24:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  25:     if     t5 = 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_18                
    jmp     l_f2_19                 #  26:     goto   19
l_f2_18:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_20                 #  29:     goto   20
l_f2_19:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f2_20:
    movzbl  -26(%ebp), %eax         #  33:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1026971824, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #   7:     goto   5
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    jmp     l_test_1                #  10:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################

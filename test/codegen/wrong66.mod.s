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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 8 of <array 3 of <array 4 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    jmp     l_f0_5_while_body       #   3:     goto   5_while_body
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $42940, %eax            #   8:     add    t6 <- 42940, 58040
    movl    $58040, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     assign v2 <- t6
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <array 8 of <array 3 of <array 4 of <array 1 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #   -724(%ebp)  696  [ $v3       <array 7 of <array 8 of <array 3 of <array 4 of <array 1 of <char>>>>>> %ebp-724 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $712, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $178, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-724(%ebp)           # local array 'v3': 5 dimensions
    movl    $7,-720(%ebp)           #   dimension 1: 7 elements
    movl    $8,-716(%ebp)           #   dimension 2: 8 elements
    movl    $3,-712(%ebp)           #   dimension 3: 3 elements
    movl    $4,-708(%ebp)           #   dimension 4: 4 elements
    movl    $1,-704(%ebp)           #   dimension 5: 1 elements

    # function body
    movl    $11344, %eax            #   0:     assign v2 <- 11344
    movl    %eax, -28(%ebp)        
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   9:     return t6
    jmp     l_f1_exit              
l_f1_9_while_cond:
    movl    $98, %eax               #  11:     if     98 <= 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_while_body:
    movl    $97, %eax               #  14:     param  2 <- 97
    pushl   %eax                   
    movl    $37897, %eax            #  15:     param  1 <- 37897
    pushl   %eax                   
    leal    -724(%ebp), %eax        #  16:     &()    t7 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  18:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  19:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_9_while_cond       #  20:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $712, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 10 of <array 2 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $86777, %eax            #   0:     mul    t6 <- 86777, 42396
    movl    $42396, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t6
    movl    %eax, -20(%ebp)        
    jmp     l_f2_exit              
    movl    $98, %eax               #   3:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $61392, %eax            #   0:     mul    t0 <- 61392, 36804
    movl    $36804, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $96532, %eax            #   1:     mul    t1 <- 96532, 46995
    movl    $46995, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 < t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $85934, %eax            #  13:     add    t3 <- 85934, 55154
    movl    $55154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $87736, %eax            #  14:     add    t4 <- 87736, 46475
    movl    $46475, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  15:     if     t3 >= t4 goto 8
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_8               
    jmp     l_test_9                #  16:     goto   9
l_test_8:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_10               #  19:     goto   10
l_test_9:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_10:
    movzbl  -33(%ebp), %eax         #  23:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

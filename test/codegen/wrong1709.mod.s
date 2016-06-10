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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <bool> %ebp-33 ]

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
l_f0_1_while_cond:
    movl    $73211, %eax            #   1:     sub    t6 <- 73211, 68563
    movl    $68563, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t7 <- t6, 9005
    movl    $9005, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t8 <- t7, 62690
    movl    $62690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t8 > 57921 goto 2_while_body
    movl    $57921, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $2249, %eax             #   8:     if     2249 > 29426 goto 6_while_body
    movl    $29426, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  11:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    movl    $70898, %eax            #  16:     add    t9 <- 70898, 21997
    movl    $21997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     if     t9 >= 42737 goto 10_while_body
    movl    $42737, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  18:     goto   8
l_f0_10_while_body:
    movl    $0, %eax                #  20:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_9_while_cond       #  21:     goto   9_while_cond
l_f0_8:
    movl    $1, %eax                #  23:     if     1 = 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_14                
    jmp     l_f0_15                 #  24:     goto   15
l_f0_14:
    movl    $1, %eax                #  26:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  27:     goto   16
l_f0_15:
    movl    $0, %eax                #  29:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  31:     assign v1 <- t10
    movb    %al, -33(%ebp)         

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movl    $14799, %eax            #   0:     if     14799 <= 74606 goto 6_if_true
    movl    $74606, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   1:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   3:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_0:
    jmp     l_f1_11_if_false        #   8:     goto   11_if_false
    jmp     l_f1_12                 #   9:     goto   12
l_f1_12:
    movl    $89788, %eax            #  11:     assign v0 <- 89788
    movl    %eax, -20(%ebp)        
    movl    $99089, %eax            #  12:     assign v0 <- 99089
    movl    %eax, -20(%ebp)        
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     if     t6 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_18                
    jmp     l_f1_18                 #  18:     goto   18
    jmp     l_f1_19                 #  19:     goto   19
l_f1_18:
    movl    $1, %eax                #  21:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_20                 #  22:     goto   20
l_f1_19:
    movl    $0, %eax                #  24:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_20:
    movzbl  -14(%ebp), %eax         #  26:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 5 of <array 21 of <array 8 of <array 57 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 54 of <array 31 of <array 23 of <array 69 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $51523, %eax            #   1:     assign v4 <- 51523
    movl    %eax, -20(%ebp)        
    call    dummyProcedure          #   2:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
l_test_4:
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_0:
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $13306, %eax            #   7:     add    t1 <- 13306, 99448
    movl    $99448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t2 <- t1, 6544
    movl    $6544, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t3 <- t2, 40259
    movl    $40259, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t4 <- t3, 12040
    movl    $12040, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $76516, %eax            #  11:     mul    t5 <- 76516, 237
    movl    $237, %ebx             
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  12:     if     t4 < t5 goto 8_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #  13:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  15:     goto   7
l_test_9_if_false:
l_test_7:
l_test_12_while_cond:
    movl    $97, %eax               #  19:     if     97 >= 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  20:     goto   11
l_test_13_while_body:
    movl    $98, %eax               #  22:     if     98 >= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  23:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  25:     goto   15
l_test_17_if_false:
l_test_15:
    movl    $97, %eax               #  28:     if     97 < 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  29:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  31:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_12_while_cond    #  34:     goto   12_while_cond
l_test_11:
l_test_24_while_cond:
    jmp     l_test_exit            
l_test_28_while_cond:
    jmp     l_test_27               #  39:     goto   27
    jmp     l_test_28_while_cond    #  40:     goto   28_while_cond
l_test_27:
l_test_31_while_cond:
    movl    $0, %eax                #  43:     if     0 = 1 goto 32_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_32_while_body   
    jmp     l_test_30               #  44:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  46:     goto   31_while_cond
l_test_30:
    jmp     l_test_24_while_cond    #  48:     goto   24_while_cond

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################

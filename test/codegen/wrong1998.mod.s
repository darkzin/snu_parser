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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 76 of <array 13 of <array 39 of <array 56 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $69809, %eax            #   0:     add    t4 <- 69809, 99009
    movl    $99009, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 64302
    movl    $64302, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 31497
    movl    $31497, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 53624
    movl    $53624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $11901, %eax            #   4:     if     11901 > t7 goto 1_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   5:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
l_f0_6_while_cond:
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  13:     if     t8 >= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $77695, %eax            #  19:     if     77695 <= 17663 goto 13_if_true
    movl    $17663, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  20:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  22:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  26:     goto   6_while_cond
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $97, %eax               #   2:     if     97 # 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_8_while_cond:
    jmp     l_f1_7                  #   9:     goto   7
    jmp     l_f1_8_while_cond       #  10:     goto   8_while_cond
l_f1_7:
    movl    $97, %eax               #  12:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #  15:     if     99 # 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  16:     goto   13_if_false
l_f1_12_if_true:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  19:     goto   15
    jmp     l_f1_16_while_cond      #  20:     goto   16_while_cond
l_f1_15:
    movl    $18544, %eax            #  22:     assign v1 <- 18544
    movl    %eax, -24(%ebp)        
    jmp     l_f1_11                 #  23:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $94824, %eax            #  26:     add    t4 <- 94824, 31220
    movl    $31220, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $83448, %eax            #  27:     if     83448 > t4 goto 20
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_20                
    jmp     l_f1_21                 #  28:     goto   21
l_f1_20:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_22                 #  31:     goto   22
l_f1_21:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_22:
    movzbl  -17(%ebp), %eax         #  35:     assign v0 <- t5
    movb    %al, 8(%ebp)           

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 99 of <array 86 of <array 3 of <array 54 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $68172, %eax            #   4:     if     68172 > 86570 goto 7_while_body
    movl    $86570, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    jmp     l_f2_11_if_true         #  13:     goto   11_if_true
    jmp     l_f2_12_if_false        #  14:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
    movl    $100, %eax              #   9:     assign v0 <- 100
    movb    %al, v0                
l_test_14_while_cond:
    movl    $32862, %eax            #  11:     if     32862 = 71681 goto 15_while_body
    movl    $71681, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  12:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  14:     goto   14_while_cond
l_test_13:
l_test_18_while_cond:
    jmp     l_test_18_while_cond    #  17:     goto   18_while_cond
    jmp     l_test_6                #  18:     goto   6
l_test_8_if_false:
l_test_6:
l_test_21_while_cond:
l_test_24_while_cond:
    call    dummyBOOLfunc           #  23:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  24:     if     t0 = 1 goto 25_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_25_while_body   
    jmp     l_test_23               #  25:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  27:     goto   24_while_cond
l_test_23:
    jmp     l_test_21_while_cond    #  29:     goto   21_while_cond
    jmp     l_test_31               #  30:     goto   31
    jmp     l_test_31               #  31:     goto   31
    jmp     l_test_32               #  32:     goto   32
l_test_31:
    movl    $1, %eax                #  34:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_33               #  35:     goto   33
l_test_32:
    movl    $0, %eax                #  37:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_33:
    jmp     l_test_39               #  39:     goto   39
    movl    $1, %eax                #  40:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_40               #  41:     goto   40
l_test_39:
    movl    $0, %eax                #  43:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_40:
    movzbl  -14(%ebp), %eax         #  45:     if     t1 = t2 goto 27
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_27              
    jmp     l_test_28               #  46:     goto   28
l_test_27:
    movl    $1, %eax                #  48:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_29               #  49:     goto   29
l_test_28:
    movl    $0, %eax                #  51:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_29:
    movzbl  -16(%ebp), %eax         #  53:     assign v1 <- t3
    movb    %al, v1                

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

    # scope: test
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

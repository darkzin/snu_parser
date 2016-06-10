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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    call    dummyINTfunc            #   2:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 7 of <array 95 of <array 76 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $v4       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     if     99 > 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_6:
    movzbl  -25(%ebp), %eax         #   9:     assign v3 <- t8
    movb    %al, -33(%ebp)         
    movl    $53034, %eax            #  10:     return 53034
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    jmp     l_f1_11_while_body      #  15:     goto   11_while_body
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_while_body:
    movl    $48111, %eax            #  18:     return 48111
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  19:     goto   10_while_cond
l_f1_9:
    movl    $79868, %eax            #  21:     add    t9 <- 79868, 29669
    movl    $29669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     sub    t10 <- t9, 18251
    movl    $18251, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     sub    t11 <- t10, 15916
    movl    $15916, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t12 <- t11, 58829
    movl    $58829, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     assign v4 <- t12
    movl    %eax, -40(%ebp)        

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 51 of <array 55 of <array 50 of <array 27 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 100 of <array 88 of <array 6 of <array 32 of <char>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $11659, %eax            #   0:     sub    t8 <- 11659, 70120
    movl    $70120, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t9 <- t8, 76659
    movl    $76659, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     return t9
    jmp     l_f2_exit              
    movl    $0, %eax                #   3:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
    movl    $85748, %eax            #   6:     return 85748
    jmp     l_f2_exit              
    movl    $63773, %eax            #   7:     return 63773
    jmp     l_f2_exit              
    movl    $85030, %eax            #   8:     sub    t10 <- 85030, 99105
    movl    $99105, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     return t10
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  10:     goto   1
l_f2_3_if_false:
l_f2_1:
    leal    _str_1, %eax            #  13:     &()    t11 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t11
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    movl    $21929, %eax            #  16:     return 21929
    jmp     l_f2_exit              
    jmp     l_f2_8                  #  17:     goto   8
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $0, %eax                #   1:     if     0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    movl    $98, %eax               #   5:     if     98 # 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $90130, %eax            #  14:     add    t0 <- 90130, 53725
    movl    $53725, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     if     t0 > 43693 goto 11
    movl    $43693, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11              
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $1, %eax                #  18:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_13               #  19:     goto   13
l_test_12:
    movl    $0, %eax                #  21:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_13:
    movzbl  -17(%ebp), %eax         #  23:     assign v0 <- t1
    movb    %al, v0                
l_test_16_while_cond:
    movl    $1, %eax                #  25:     param  2 <- 1
    pushl   %eax                   
    movl    $100, %eax              #  26:     param  1 <- 100
    pushl   %eax                   
    movl    $61830, %eax            #  27:     mul    t2 <- 61830, 73323
    movl    $73323, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t3 <- t2, 5980
    movl    $5980, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     sub    t4 <- t3, 33771
    movl    $33771, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $59507, %eax            #  30:     if     59507 > t4 goto 18
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_18              
    jmp     l_test_19               #  31:     goto   19
l_test_18:
    movl    $1, %eax                #  33:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_20               #  34:     goto   20
l_test_19:
    movl    $0, %eax                #  36:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_20:
    movzbl  -33(%ebp), %eax         #  38:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  39:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  40:     if     t6 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  41:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  43:     goto   16_while_cond
l_test_15:
    movl    $14030, %eax            #  45:     add    t7 <- 14030, 14143
    movl    $14143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  46:     assign v1 <- t7
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

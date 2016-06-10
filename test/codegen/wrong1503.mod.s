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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 53 of <array 35 of <array 67 of <array 17 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #    -23(%ebp)   1  [ $v4       <bool> %ebp-23 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $0, %eax                #   5:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #   7:     assign v4 <- t8
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   9:     param  0 <- t9
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #  11:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $31059, %eax            #  12:     sub    t11 <- 31059, t10
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t11 >= 95247 goto 9_if_true
    movl    $95247, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  14:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  16:     goto   8
l_f0_10_if_false:
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 89 of <array 34 of <array 98 of <array 67 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   1:     if     99 = t8 goto 1_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   8:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     assign v3 <- t10
    movb    %al, -16(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <ptr(4) to <array 67 of <array 89 of <array 34 of <array 98 of <array 67 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 9 of <array 80 of <array 15 of <array 34 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #   -1029848636(%ebp)  1029848616  [ $v5       <array 67 of <array 89 of <array 34 of <array 98 of <array 67 of <int>>>>>> %ebp-1029848636 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1029848624, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $257462156, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1029848636(%ebp)    # local array 'v5': 5 dimensions
    movl    $67,-1029848632(%ebp)   #   dimension 1: 67 elements
    movl    $89,-1029848628(%ebp)   #   dimension 2: 89 elements
    movl    $34,-1029848624(%ebp)   #   dimension 3: 34 elements
    movl    $98,-1029848620(%ebp)   #   dimension 4: 98 elements
    movl    $67,-1029848616(%ebp)   #   dimension 5: 67 elements

    # function body
    leal    -1029848636(%ebp), %eax #   0:     &()    t8 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #   2:     call   t9 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t9
    jmp     l_f2_exit              
    movl    $98, %eax               #   4:     if     98 <= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_5                  #   7:     goto   5
l_f2_5:
    movl    $97, %eax               #   9:     return 97
    jmp     l_f2_exit              
    movl    $100, %eax              #  10:     assign v3 <- 100
    movb    %al, 12(%ebp)          
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_11_while_cond:
    jmp     l_f2_10                 #  15:     goto   10
    movl    $98, %eax               #  16:     return 98
    jmp     l_f2_exit              
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  18:     goto   15_while_cond
    jmp     l_f2_11_while_cond      #  19:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $1029848624, %esp       # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 67 of <array 89 of <array 34 of <array 98 of <array 67 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 67 of <array 89 of <array 34 of <array 98 of <array 67 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $43413, %eax            #   4:     if     43413 # 46609 goto 6_while_body
    movl    $46609, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $87177, %eax            #   9:     sub    t0 <- 87177, 45345
    movl    $45345, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_10               #  14:     goto   10
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_12               #  18:     goto   12
l_test_11:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_12:
    movzbl  -17(%ebp), %eax         #  22:     assign v1 <- t1
    movb    %al, v1                
l_test_19_while_cond:
    jmp     l_test_18               #  24:     goto   18
l_test_22_while_cond:
    movl    $1, %eax                #  26:     if     1 # 0 goto 23_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23_while_body   
    jmp     l_test_21               #  27:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
l_test_21:
    movl    $88352, %eax            #  31:     assign v0 <- 88352
    movl    %eax, v0               
    jmp     l_test_19_while_cond    #  32:     goto   19_while_cond
l_test_18:
    leal    v2, %eax                #  34:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  36:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movl    $11463, %eax            #  37:     div    t4 <- 11463, 77207
    movl    $77207, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     assign v0 <- t4
    movl    %eax, v0               
    movl    $43458, %eax            #  39:     if     43458 <= 69949 goto 29_if_true
    movl    $69949, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_29_if_true      
    jmp     l_test_30_if_false      #  40:     goto   30_if_false
l_test_29_if_true:
    movl    $99, %eax               #  42:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  43:     call   WriteChar
    addl    $4, %esp               
    leal    v2, %eax                #  44:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  45:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  46:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -37(%ebp)         
l_test_35_while_cond:
    movl    $63821, %eax            #  48:     if     63821 >= 32549 goto 36_while_body
    movl    $32549, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_36_while_body   
    jmp     l_test_34               #  49:     goto   34
l_test_36_while_body:
    jmp     l_test_35_while_cond    #  51:     goto   35_while_cond
l_test_34:
    jmp     l_test_38               #  53:     goto   38
l_test_38:
    call    dummyINTfunc            #  55:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_test_28               #  56:     goto   28
l_test_30_if_false:
l_test_28:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 67 of <array 89 of <array 34 of <array 98 of <array 67 of <int>>>>>>
    .long    5
    .long   67
    .long   89
    .long   34
    .long   98
    .long   67
    .skip 1029848592








    # end of global data section
    #-----------------------------------------

    .end
##################################################

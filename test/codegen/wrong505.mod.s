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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_5_while_cond:
    movl    $91507, %eax            #   6:     if     91507 # 85518 goto 6_while_body
    movl    $85518, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $0, %eax                #  14:     assign v3 <- 0
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  15:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  16:     assign v2 <- t6
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t4       <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 5 of <array 4 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 2 of <array 2 of <array 10 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v4       <bool> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $83033, %eax            #   0:     if     83033 = 75494 goto 1
    movl    $75494, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -62(%ebp)         
l_f1_3:
    movl    $23846, %eax            #   8:     add    t5 <- 23846, 96209
    movl    $96209, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  12:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t8 <- t7, 11578
    movl    $11578, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 79867
    movl    $79867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 11133
    movl    $11133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 13170
    movl    $13170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  31:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  33:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -62(%ebp), %eax         #  34:     assign @t21 <- t4
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #  36:     goto   6_while_cond
    call    dummyCHARfunc           #  37:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  38:     return t22
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]

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
    movl    $95839, %eax            #   0:     assign v2 <- 95839
    movl    %eax, 8(%ebp)          
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_3_while_cond:
    movl    $99, %eax               #   3:     if     99 < 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    movl    $99354, %eax            #   6:     assign v2 <- 99354
    movl    %eax, 8(%ebp)          
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    movl    $25328, %eax            #  11:     assign v2 <- 25328
    movl    %eax, 8(%ebp)          
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  13:     goto   12_while_cond
    movl    $48505, %eax            #  14:     assign v2 <- 48505
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #  15:     return 1
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_3_while_cond       #  17:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    movl    $81904, %eax            #   0:     sub    t0 <- 81904, 91799
    movl    $91799, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $19904, %eax            #   2:     assign v0 <- 19904
    movl    %eax, v0               
l_test_3_while_cond:
    call    dummyINTfunc            #   4:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t1 > 32982 goto 4_while_body
    movl    $32982, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   6:     goto   2
l_test_4_while_body:
    movl    $85296, %eax            #   8:     if     85296 > 359 goto 7
    movl    $359, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  12:     goto   9
l_test_8:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  16:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_3_while_cond     #  17:     goto   3_while_cond
l_test_2:
    movl    $0, %eax                #  19:     assign v1 <- 0
    movb    %al, v1                
l_test_13_while_cond:
    jmp     l_test_14_while_body    #  21:     goto   14_while_body
    jmp     l_test_14_while_body    #  22:     goto   14_while_body
    jmp     l_test_14_while_body    #  23:     goto   14_while_body
    jmp     l_test_14_while_body    #  24:     goto   14_while_body
    jmp     l_test_14_while_body    #  25:     goto   14_while_body
    call    dummyBOOLfunc           #  26:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  27:     if     t3 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  28:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  30:     goto   13_while_cond
l_test_12:
    jmp     l_test_22_if_true       #  32:     goto   22_if_true
    jmp     l_test_22_if_true       #  33:     goto   22_if_true
    jmp     l_test_23_if_false      #  34:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  36:     goto   21
l_test_23_if_false:
l_test_21:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

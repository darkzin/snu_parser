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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t8       <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 14 of <array 78 of <array 29 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #    -89(%ebp)   1  [ $v1       <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $v2       <char> %ebp-90 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $0, %eax                #   2:     return 0
    jmp     l_f0_exit              
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    movl    $60140, %eax            #   7:     param  0 <- 60140
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
    movl    $1, %eax                #   9:     if     1 # 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9                 
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -82(%ebp)         
l_f0_11:
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $62703, %eax            #  20:     mul    t10 <- 62703, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 3756
    movl    $3756, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 69233
    movl    $69233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  30:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t17 <- t16, 21385
    movl    $21385, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  34:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  35:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  36:     add    t20 <- t19, 37584
    movl    $37584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  37:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  39:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  40:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -82(%ebp), %eax         #  42:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1_while_cond       #  43:     goto   1_while_cond
l_f0_0:
    movl    $35137, %eax            #  45:     div    t25 <- 35137, 89006
    movl    $89006, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  46:     div    t26 <- t25, 6735
    movl    $6735, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $23528, %eax            #  47:     if     23528 >= t26 goto 14
    movl    -80(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_14                
    jmp     l_f0_15                 #  48:     goto   15
l_f0_14:
    movl    $1, %eax                #  50:     assign t27 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f0_16                 #  51:     goto   16
l_f0_15:
    movl    $0, %eax                #  53:     assign t27 <- 0
    movb    %al, -81(%ebp)         
l_f0_16:
    movzbl  -81(%ebp), %eax         #  55:     return t27
    jmp     l_f0_exit              
    movl    $97, %eax               #  56:     assign v2 <- 97
    movb    %al, -90(%ebp)         

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 45 of <array 66 of <array 40 of <array 36 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 56 of <array 7 of <array 7 of <array 12 of <array 93 of <int>>>>>>> %ebp+16 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v4       <char> %ebp-26 ]

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
    movl    $97, %eax               #   0:     if     97 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_3:
    movzbl  -17(%ebp), %eax         #   8:     assign v3 <- t8
    movb    %al, -25(%ebp)         
    call    dummyINTfunc            #   9:     call   t9 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t10 <- t9, 53934
    movl    $53934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     return t10
    jmp     l_f1_exit              
    movl    $100, %eax              #  12:     assign v4 <- 100
    movb    %al, -26(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 92 of <array 91 of <array 1 of <array 46 of <array 39 of <char>>>>>>> %ebp+8 ]
    #    -16(%ebp)   4  [ $v1       <int> %ebp-16 ]

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
    movl    $91352, %eax            #   0:     assign v1 <- 91352
    movl    %eax, -16(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_4_if_false         #   2:     goto   4_if_false
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
    jmp     l_f2_9                  #   6:     goto   9
l_f2_9:
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_if_false:
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 56 of <array 7 of <array 7 of <array 12 of <array 93 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 30 of <array 45 of <array 66 of <array 40 of <array 36 of <bool>>>>>>> %ebp-40 ]
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
    movl    $49805, %eax            #   0:     sub    t0 <- 49805, 44268
    movl    $44268, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 18089
    movl    $18089, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 21217
    movl    $21217, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 71103
    movl    $71103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 19199
    movl    $19199, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    leal    v1, %eax                #   7:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     param  2 <- t5
    pushl   %eax                   
    movl    $16864, %eax            #   9:     param  1 <- 16864
    pushl   %eax                   
    leal    v0, %eax                #  10:     &()    t6 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  12:     call   t7 <- f1
    addl    $12, %esp              
    movl    %eax, -44(%ebp)        
    jmp     l_test_exit            
    movl    $63742, %eax            #  14:     if     63742 < 7755 goto 4_if_true
    movl    $7755, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_4_if_true       
    jmp     l_test_5_if_false       #  15:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_exit            
l_test_9_while_cond:
    movl    $98, %eax               #  19:     if     98 > 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  20:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  22:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $97, %eax               #  26:     if     97 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  27:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  29:     goto   14_while_cond
l_test_13:
    call    WriteLn                 #  31:     call   WriteLn
    jmp     l_test_3                #  32:     goto   3
l_test_5_if_false:
l_test_3:

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
v0:                                 # <array 30 of <array 45 of <array 66 of <array 40 of <array 36 of <bool>>>>>>
    .long    5
    .long   30
    .long   45
    .long   66
    .long   40
    .long   36
    .skip 128304000
v1:                                 # <array 56 of <array 7 of <array 7 of <array 12 of <array 93 of <int>>>>>>
    .long    5
    .long   56
    .long    7
    .long    7
    .long   12
    .long   93
    .skip 12249216








    # end of global data section
    #-----------------------------------------

    .end
##################################################

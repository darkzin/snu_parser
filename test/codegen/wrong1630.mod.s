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
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 72 of <array 89 of <array 62 of <array 64 of <char>>>>>>> %ebp+8 ]
    #    -16(%ebp)   4  [ $v2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <bool> %ebp-17 ]

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
    movl    $2745, %eax             #   0:     assign v2 <- 2745
    movl    %eax, -16(%ebp)        
    movl    $40559, %eax            #   1:     assign v2 <- 40559
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   2:     assign v3 <- 0
    movb    %al, -17(%ebp)         

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
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 5 of <char>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t6       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 4 of <array 84 of <array 99 of <array 40 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 54 of <array 59 of <array 6 of <array 100 of <bool>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v3       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $3416, %eax             #   0:     if     3416 > 7383 goto 1_if_true
    movl    $7383, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    f0                      #   3:     call   f0
    movl    $77486, %eax            #   4:     return 77486
    jmp     l_f2_exit              
    movl    $99, %eax               #   5:     if     99 > 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_7                 
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_8:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -77(%ebp)         
l_f2_9:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $8459, %eax             #  16:     mul    t8 <- 8459, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  17:     add    t9 <- t8, 29271
    movl    $29271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  21:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t12 <- t11, 58228
    movl    $58228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t14, 45378
    movl    $45378, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t18 <- t17, 64276
    movl    $64276, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  33:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  36:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -77(%ebp), %eax         #  38:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $63053, %eax            #  39:     return 63053
    jmp     l_f2_exit              
    leal    _str_1, %eax            #  40:     &()    t23 <- _str_1
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  41:     param  0 <- t23
    pushl   %eax                   
    call    WriteStr                #  42:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_0                  #  43:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $27900, %eax            #  46:     mul    t24 <- 27900, 71592
    movl    $71592, %ebx           
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  47:     sub    t25 <- t24, 33192
    movl    $33192, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  48:     return t25
    jmp     l_f2_exit              
l_f2_15_while_cond:
    movl    $26162, %eax            #  50:     if     26162 < 64119 goto 16_while_body
    movl    $64119, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_16_while_body     
    jmp     l_f2_14                 #  51:     goto   14
l_f2_16_while_body:
    movl    $99, %eax               #  53:     if     99 >= 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  54:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  56:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $52125, %eax            #  59:     return 52125
    jmp     l_f2_exit              
l_f2_24_while_cond:
    movl    $0, %eax                #  61:     if     0 # 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_25_while_body     
    jmp     l_f2_23                 #  62:     goto   23
l_f2_25_while_body:
    movl    $90299, %eax            #  64:     return 90299
    jmp     l_f2_exit              
    jmp     l_f2_28                 #  65:     goto   28
l_f2_28:
    jmp     l_f2_31                 #  67:     goto   31
l_f2_31:
    jmp     l_f2_24_while_cond      #  69:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_15_while_cond      #  71:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 58 of <array 72 of <array 89 of <array 62 of <array 64 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]

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
    movl    $26921, %eax            #   0:     add    t0 <- 26921, 37907
    movl    $37907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $72291, %eax            #   1:     if     72291 <= t0 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_7_while_body     #  11:     goto   7_while_body
    jmp     l_test_5                #  12:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
l_test_5:
l_test_11_while_cond:
    jmp     l_test_17               #  17:     goto   17
    jmp     l_test_14               #  18:     goto   14
l_test_17:
l_test_14:
    movl    $1, %eax                #  21:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_16               #  22:     goto   16
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_16:
    movl    $1, %eax                #  25:     if     1 # t2 goto 12_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  26:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  28:     goto   11_while_cond
l_test_10:
    leal    v1, %eax                #  30:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  32:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_20               #  34:     goto   20
l_test_20:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_28               #  37:     goto   28
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_test_28:
    movzbl  -26(%ebp), %eax         #  40:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 58 of <array 72 of <array 89 of <array 62 of <array 64 of <char>>>>>>
    .long    5
    .long   58
    .long   72
    .long   89
    .long   62
    .long   64
    .skip 1474762752








    # end of global data section
    #-----------------------------------------

    .end
##################################################

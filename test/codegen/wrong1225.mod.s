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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t29      <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t30      <ptr(4) to <array 5 of <char>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t31      <char> %ebp-93 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 44 of <array 51 of <array 15 of <array 90 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 93 of <array 23 of <array 2 of <array 61 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -94(%ebp)   1  [ $v3       <bool> %ebp-94 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movl    $48787, %eax            #   9:     sub    t12 <- 48787, 2852
    movl    $2852, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t14 <- t12, t13
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t15 <- t14, 14541
    movl    $14541, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  18:     mul    t17 <- t15, t16
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     add    t18 <- t17, 99151
    movl    $99151, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t20 <- t18, t19
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t21 <- t20, 39160
    movl    $39160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  28:     mul    t23 <- t21, t22
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     add    t24 <- t23, 4484
    movl    $4484, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  33:     add    t27 <- t25, t26
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t28 <- v1, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -13(%ebp), %eax         #  35:     assign @t28 <- t11
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $4713, %eax             #  36:     if     4713 # 16224 goto 7_if_true
    movl    $16224, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  37:     goto   8_if_false
l_f0_7_if_true:
    call    dummyBOOLfunc           #  39:     call   t29 <- dummyBOOLfunc
    movb    %al, -85(%ebp)         
    call    dummyProcedure          #  40:     call   dummyProcedure
    leal    _str_1, %eax            #  41:     &()    t30 <- _str_1
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  42:     param  0 <- t30
    pushl   %eax                   
    call    WriteStr                #  43:     call   WriteStr
    addl    $4, %esp               
    movl    $69039, %eax            #  44:     assign v2 <- 69039
    movl    %eax, 16(%ebp)         
    jmp     l_f0_6                  #  45:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyCHARfunc           #  48:     call   t31 <- dummyCHARfunc
    movb    %al, -93(%ebp)         

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -18(%ebp)   1  [ $v3       <char> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t11 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $67963, %eax            #   2:     if     67963 < 38938 goto 3_while_body
    movl    $38938, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $99, %eax               #   5:     if     99 <= 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  11:     call   t12 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  12:     assign v3 <- 100
    movb    %al, -18(%ebp)         
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  14:     goto   12_while_cond
l_f1_15_while_cond:
    jmp     l_f1_14                 #  16:     goto   14
    jmp     l_f1_15_while_cond      #  17:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_1:
    movl    $100, %eax              #  21:     assign v3 <- 100
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $95012, %eax            #   1:     mul    t12 <- 95012, 74164
    movl    $74164, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t13 <- t12, 45058
    movl    $45058, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t13
    jmp     l_f2_exit              
l_f2_3_while_cond:
    call    dummyProcedure          #   5:     call   dummyProcedure
    jmp     l_f2_3_while_cond       #   6:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_5                #   0:     goto   5
    jmp     l_test_5                #   1:     goto   5
    jmp     l_test_5                #   2:     goto   5
    jmp     l_test_5                #   3:     goto   5
l_test_5:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   6:     goto   7
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  10:     goto   17
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movzbl  -13(%ebp), %eax         #  13:     if     t0 = t1 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #  14:     goto   2
l_test_1:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #  17:     goto   3
l_test_2:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  21:     assign v0 <- t2
    movb    %al, v0                
    movl    $88544, %eax            #  22:     param  2 <- 88544
    pushl   %eax                   
    movl    $82556, %eax            #  23:     param  1 <- 82556
    pushl   %eax                   
    movl    $70966, %eax            #  24:     add    t3 <- 70966, 13439
    movl    $13439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $77829, %eax            #  25:     div    t4 <- 77829, 93112
    movl    $93112, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t5 <- t4, 17877
    movl    $17877, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t6 <- t5, 15066
    movl    $15066, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t7 <- t3, t6
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     sub    t8 <- t7, 71491
    movl    $71491, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  31:     call   t9 <- f1
    addl    $12, %esp              
    movl    %eax, -52(%ebp)        
    call    f2                      #  32:     call   t10 <- f2
    movl    %eax, -20(%ebp)        

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

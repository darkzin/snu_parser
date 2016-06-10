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
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t8       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 70 of <array 97 of <array 44 of <array 83 of <array 28 of <bool>>>>>>> %ebp+8 ]
    #    -93(%ebp)   1  [ $v1       <bool> %ebp-93 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -84(%ebp)        
    jmp     l_f0_2                  #   1:     goto   2
l_f0_2:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f0_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t8 <- 0
    movb    %al, -85(%ebp)         
l_f0_4:
    movl    $20855, %eax            #   7:     add    t9 <- 20855, 82796
    movl    $82796, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   8:     add    t10 <- t9, 51979
    movl    $51979, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  12:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t13 <- t12, 78861
    movl    $78861, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  17:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t16 <- t15, 74051
    movl    $74051, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  23:     add    t19 <- t18, 41580
    movl    $41580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  27:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  28:     add    t22 <- t21, 51772
    movl    $51772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  31:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  32:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -85(%ebp), %eax         #  34:     assign @t26 <- t8
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_7_while_cond:
    jmp     l_f0_9                  #  36:     goto   9
l_f0_9:
    jmp     l_f0_7_while_cond       #  38:     goto   7_while_cond

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $v0       <int> %ebp-44 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
l_f1_2_while_cond:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   3:     goto   5_while_cond
    movl    $99, %eax               #   4:     if     99 < 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8                 
    jmp     l_f1_9                  #   5:     goto   9
l_f1_8:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_10                 #   8:     goto   10
l_f1_9:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -34(%ebp)         
l_f1_10:
    movzbl  -34(%ebp), %eax         #  12:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
    movl    $32954, %eax            #  14:     div    t9 <- 32954, 66404
    movl    $66404, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t10 <- t9, 7282
    movl    $7282, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t11 <- t10, 55855
    movl    $55855, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t12 <- t11, 81086
    movl    $81086, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     div    t13 <- t12, 46490
    movl    $46490, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 28710
    movl    $28710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     assign v0 <- t14
    movl    %eax, -44(%ebp)        

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 36 of <array 45 of <array 8 of <array 76 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 15 of <array 82 of <array 11 of <array 36 of <bool>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    call    f1                      #   2:     call   t8 <- f1
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t8 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 83 of <array 15 of <array 82 of <array 11 of <array 36 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 90 of <array 36 of <array 45 of <array 8 of <array 76 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-40 ]

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
    movl    $73294, %eax            #   0:     if     73294 >= 14356 goto 1_if_true
    movl    $14356, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $79457, %eax            #   3:     if     79457 < 45875 goto 5_if_true
    movl    $45875, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $97127, %eax            #   9:     assign v0 <- 97127
    movl    %eax, v0               
    leal    _str_1, %eax            #  10:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  12:     call   WriteStr
    addl    $4, %esp               
    leal    v2, %eax                #  13:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    movl    $98, %eax               #  17:     if     98 < 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11              
    jmp     l_test_12               #  18:     goto   12
l_test_11:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_13               #  21:     goto   13
l_test_12:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_13:
    movzbl  -25(%ebp), %eax         #  25:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  26:     call   t4 <- f2
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    movl    $25161, %eax            #  27:     assign v0 <- 25161
    movl    %eax, v0               
    jmp     l_test_0                #  28:     goto   0
l_test_2_if_false:
l_test_0:
    call    f1                      #  31:     call   t5 <- f1
    movb    %al, -33(%ebp)         
l_test_18_while_cond:
    jmp     l_test_17               #  33:     goto   17
    leal    _str_2, %eax            #  34:     &()    t6 <- _str_2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  36:     call   WriteStr
    addl    $4, %esp               
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  38:     goto   22_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  41:     goto   18_while_cond
l_test_17:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 90 of <array 36 of <array 45 of <array 8 of <array 76 of <bool>>>>>>
    .long    5
    .long   90
    .long   36
    .long   45
    .long    8
    .long   76
    .skip 88646400
v2:                                 # <array 83 of <array 15 of <array 82 of <array 11 of <array 36 of <bool>>>>>>
    .long    5
    .long   83
    .long   15
    .long   82
    .long   11
    .long   36
    .skip 40427640








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
l_f0_5:
    jmp     l_f0_2_while_body       #   4:     goto   2_while_body
    jmp     l_f0_2_while_body       #   5:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
    call    dummyProcedure          #   8:     call   dummyProcedure
    call    dummyBOOLfunc           #   9:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t14      <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 7 of <array 5 of <array 8 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 5 of <array 3 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 1 of <array 1 of <array 5 of <char>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, 8(%ebp)           
l_f1_3_while_cond:
    jmp     l_f1_2                  #   3:     goto   2
    movl    $97, %eax               #   4:     if     97 > 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $1, %eax                #   7:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $0, %eax                #  10:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  12:     assign v4 <- t12
    movb    %al, -22(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
l_f1_14_while_cond:
    jmp     l_f1_13                 #  16:     goto   13
    jmp     l_f1_14_while_cond      #  17:     goto   14_while_cond
l_f1_13:
    movl    $82005, %eax            #  19:     div    t13 <- 82005, 80953
    movl    $80953, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  1 <- t13
    pushl   %eax                   
    movl    $13867, %eax            #  21:     param  0 <- 13867
    pushl   %eax                   
    call    f0                      #  22:     call   t14 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f1_3_while_cond       #  23:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 5 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 8 of <array 7 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 2 of <array 7 of <array 9 of <int>>>>>>> %ebp+16 ]
    #    -84(%ebp)   4  [ $v3       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

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
    movl    $81738, %eax            #   0:     assign v3 <- 81738
    movl    %eax, -84(%ebp)        
l_f2_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     if     100 < t11 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  10:     call   t12 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $79532, %eax            #  14:     mul    t14 <- 79532, t13
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t15 <- t14, 98459
    movl    $98459, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t18 <- t17, 84655
    movl    $84655, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t20 <- t18, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t21 <- t20, 71476
    movl    $71476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  29:     mul    t23 <- t21, t22
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     add    t24 <- t23, 55338
    movl    $55338, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  31:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  34:     add    t27 <- t25, t26
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t28 <- v1, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  36:     assign @t28 <- t12
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 4 of <array 2 of <array 7 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 6 of <array 8 of <array 7 of <array 9 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 5 of <array 10 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-48 ]
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $98, %eax               #   2:     if     98 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
    movl    $37797, %eax            #   9:     mul    t1 <- 37797, 80778
    movl    $80778, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v0 <- t1
    movl    %eax, v0               
l_test_11_while_cond:
    jmp     l_test_10               #  12:     goto   10
l_test_14_while_cond:
    jmp     l_test_13               #  14:     goto   13
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_11_while_cond    #  18:     goto   11_while_cond
l_test_10:
    movl    $21120, %eax            #  20:     if     21120 >= 22515 goto 18_if_true
    movl    $22515, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  21:     goto   19_if_false
l_test_18_if_true:
    movl    $15852, %eax            #  23:     if     15852 <= 87094 goto 22
    movl    $87094, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_22              
    jmp     l_test_23               #  24:     goto   23
l_test_22:
    movl    $1, %eax                #  26:     assign t2 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_24               #  27:     goto   24
l_test_23:
    movl    $0, %eax                #  29:     assign t2 <- 0
    movb    %al, -22(%ebp)         
l_test_24:
    movzbl  -22(%ebp), %eax         #  31:     assign v1 <- t2
    movb    %al, v1                
    movl    $82796, %eax            #  32:     assign v0 <- 82796
    movl    %eax, v0               
    movl    $100, %eax              #  33:     assign v2 <- 100
    movb    %al, v2                
    jmp     l_test_exit            
    leal    v5, %eax                #  35:     &()    t3 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     param  2 <- t3
    pushl   %eax                   
    leal    v4, %eax                #  37:     &()    t4 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     param  1 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  39:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  40:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  41:     call   t6 <- f2
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    call    dummyINTfunc            #  42:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    $96219, %eax            #  43:     if     96219 >= 98453 goto 32_if_true
    movl    $98453, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_32_if_true      
    jmp     l_test_33_if_false      #  44:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  46:     goto   31
l_test_33_if_false:
l_test_31:
    leal    _str_1, %eax            #  49:     &()    t8 <- _str_1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  50:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  51:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_38_if_false      #  52:     goto   38_if_false
    jmp     l_test_36               #  53:     goto   36
l_test_38_if_false:
l_test_36:
l_test_40_while_cond:
    jmp     l_test_40_while_cond    #  57:     goto   40_while_cond
l_test_43_while_cond:
    jmp     l_test_42               #  59:     goto   42
    jmp     l_test_43_while_cond    #  60:     goto   43_while_cond
l_test_42:
    call    ReadInt                 #  62:     call   t9 <- ReadInt
    movl    %eax, -52(%ebp)        
    call    dummyBOOLfunc           #  63:     call   t10 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_17               #  64:     goto   17
l_test_19_if_false:
l_test_17:

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
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 2 of <array 10 of <array 8 of <array 5 of <array 10 of <int>>>>>>
    .long    5
    .long    2
    .long   10
    .long    8
    .long    5
    .long   10
    .skip 32000
v4:                                 # <array 6 of <array 6 of <array 8 of <array 7 of <array 9 of <char>>>>>>
    .long    5
    .long    6
    .long    6
    .long    8
    .long    7
    .long    9
    .skip 18144
v5:                                 # <array 2 of <array 4 of <array 2 of <array 7 of <array 9 of <int>>>>>>
    .long    5
    .long    2
    .long    4
    .long    2
    .long    7
    .long    9
    .skip 4032








    # end of global data section
    #-----------------------------------------

    .end
##################################################

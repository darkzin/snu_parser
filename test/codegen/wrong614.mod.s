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
    #    -16(%ebp)   4  [ $t26      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <char> %ebp-17 ]

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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $31879, %eax            #   4:     if     31879 # 8424 goto 5_if_true
    movl    $8424, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  12:     call   t26 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     return t26
    jmp     l_f0_exit              
    movl    $98, %eax               #  14:     assign v0 <- 98
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t26      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t27      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t28      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t29      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t30      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t31      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t32      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t33      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t34      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t35      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t36      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t37      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t38      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t39      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t40      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t41      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t42      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t43      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t44      <char> %ebp-85 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 2 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -86(%ebp)   1  [ $v4       <char> %ebp-86 ]

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
    leal    _str_1, %eax            #   0:     &()    t26 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t26
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f1_2_while_cond:
    movl    $25543, %eax            #   4:     if     25543 < 11064 goto 3_while_body
    movl    $11064, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    movl    $44677, %eax            #   7:     assign v0 <- 44677
    movl    %eax, 8(%ebp)          
l_f1_7_while_cond:
    movl    $40458, %eax            #   9:     if     40458 >= 82439 goto 8_while_body
    movl    $82439, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:
    movl    $5854, %eax             #  14:     if     5854 >= 52173 goto 11_if_true
    movl    $52173, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  15:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  17:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $99, %eax               #  20:     if     99 < 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15                
    jmp     l_f1_16                 #  21:     goto   16
l_f1_15:
    movl    $1, %eax                #  23:     assign t27 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_17                 #  24:     goto   17
l_f1_16:
    movl    $0, %eax                #  26:     assign t27 <- 0
    movb    %al, -17(%ebp)         
l_f1_17:
    movzbl  -17(%ebp), %eax         #  28:     return t27
    jmp     l_f1_exit              
    movl    $97, %eax               #  29:     assign v4 <- 97
    movb    %al, -86(%ebp)         
    movl    $73010, %eax            #  30:     if     73010 <= 4185 goto 21_if_true
    movl    $4185, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  31:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  33:     goto   20
l_f1_22_if_false:
l_f1_20:
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $82540, %eax            #  39:     mul    t29 <- 82540, t28
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  40:     add    t30 <- t29, 50898
    movl    $50898, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  44:     mul    t32 <- t30, t31
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  45:     add    t33 <- t32, 21188
    movl    $21188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  49:     mul    t35 <- t33, t34
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  50:     add    t36 <- t35, 17373
    movl    $17373, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  54:     mul    t38 <- t36, t37
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  55:     add    t39 <- t38, 55776
    movl    $55776, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  56:     mul    t40 <- t39, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  58:     call   t41 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  59:     add    t42 <- t40, t41
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  60:     add    t43 <- v2, t42
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $68375, %eax            #  61:     assign @t43 <- 68375
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_2_while_cond       #  62:     goto   2_while_cond
l_f1_1:
l_f1_26_while_cond:
    call    dummyCHARfunc           #  65:     call   t44 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #  66:     assign v4 <- t44
    movb    %al, -86(%ebp)         
    jmp     l_f1_26_while_cond      #  67:     goto   26_while_cond

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
    #    -16(%ebp)   4  [ $t26      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t27      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t28      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t29      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 9 of <array 9 of <array 9 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 10 of <array 4 of <array 8 of <int>>>>>>> %ebp+12 ]
    #    -26(%ebp)   1  [ $v2       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $v3       <bool> %ebp-27 ]

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
    movl    $54943, %eax            #   0:     sub    t26 <- 54943, 92801
    movl    $92801, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $93693, %eax            #   1:     if     93693 > t26 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $83054, %eax            #   4:     return 83054
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #   8:     assign v2 <- 98
    movb    %al, -26(%ebp)         
    movl    $3503, %eax             #   9:     if     3503 # 5417 goto 7_if_true
    movl    $5417, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  10:     goto   8_if_false
l_f2_7_if_true:
    movl    $98, %eax               #  12:     assign v2 <- 98
    movb    %al, -26(%ebp)         
    call    dummyCHARfunc           #  13:     call   t27 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_12                 #  14:     goto   12
l_f2_12:
    movl    $97, %eax               #  16:     if     97 <= 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  19:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $1868, %eax             #  22:     return 1868
    jmp     l_f2_exit              
    call    f0                      #  23:     call   t28 <- f0
    movl    %eax, -24(%ebp)        
    movl    $78084, %eax            #  24:     if     78084 >= 65739 goto 22
    movl    $65739, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_22                
    jmp     l_f2_23                 #  25:     goto   23
l_f2_22:
    movl    $1, %eax                #  27:     assign t29 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_24                 #  28:     goto   24
l_f2_23:
    movl    $0, %eax                #  30:     assign t29 <- 0
    movb    %al, -25(%ebp)         
l_f2_24:
    movzbl  -25(%ebp), %eax         #  32:     assign v3 <- t29
    movb    %al, -27(%ebp)         
l_f2_27_while_cond:
    jmp     l_f2_27_while_cond      #  34:     goto   27_while_cond
    jmp     l_f2_6                  #  35:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 2 of <array 6 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t3       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $79730, %eax            #   0:     param  3 <- 79730
    pushl   %eax                   
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t1
    pushl   %eax                   
    movl    $65186, %eax            #   5:     param  0 <- 65186
    pushl   %eax                   
    call    f1                      #   6:     call   t2 <- f1
    addl    $16, %esp              
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #   7:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_5                #   8:     goto   5
    jmp     l_test_5                #   9:     goto   5
    jmp     l_test_5                #  10:     goto   5
    jmp     l_test_2                #  11:     goto   2
l_test_5:
    jmp     l_test_3                #  13:     goto   3
l_test_2:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_test_4                #  16:     goto   4
l_test_3:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -89(%ebp)         
l_test_4:
    leal    v1, %eax                #  20:     &()    t4 <- v1
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t5 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  23:     param  0 <- t5
    pushl   %eax                   
    call    DIM                     #  24:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $89396, %eax            #  25:     mul    t7 <- 89396, t6
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  26:     add    t8 <- t7, 9185
    movl    $9185, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  28:     &()    t9 <- v1
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  29:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  30:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -112(%ebp), %eax        #  31:     mul    t11 <- t8, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t12 <- t11, 63217
    movl    $63217, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  34:     &()    t13 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  36:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t15 <- t12, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     add    t16 <- t15, 78035
    movl    $78035, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  40:     &()    t17 <- v1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  42:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t20 <- t19, 50064
    movl    $50064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  45:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    v1, %eax                #  46:     &()    t22 <- v1
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  47:     param  0 <- t22
    pushl   %eax                   
    call    DOFS                    #  48:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  49:     add    t24 <- t21, t23
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -96(%ebp), %eax         #  50:     add    t25 <- t4, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -89(%ebp), %eax         #  51:     assign @t25 <- t3
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $104, %esp              # remove locals
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
v1:                                 # <array 8 of <array 9 of <array 10 of <array 4 of <array 8 of <bool>>>>>>
    .long    5
    .long    8
    .long    9
    .long   10
    .long    4
    .long    8
    .skip 23040
v2:                                 # <array 9 of <array 2 of <array 1 of <array 2 of <array 6 of <int>>>>>>
    .long    5
    .long    9
    .long    2
    .long    1
    .long    2
    .long    6
    .skip  864








    # end of global data section
    #-----------------------------------------

    .end
##################################################

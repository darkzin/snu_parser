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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    movl    $61708, %eax            #   0:     if     61708 # 31135 goto 1_if_true
    movl    $31135, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99949, %eax            #   3:     if     99949 = 31035 goto 5
    movl    $31035, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  11:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
    jmp     l_f0_15                 #  17:     goto   15
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  19:     goto   16
l_f0_15:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    movzbl  -14(%ebp), %eax         #  23:     return t2
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
l_f1_1_while_cond:
    movl    $92435, %eax            #   1:     if     92435 # 46407 goto 2_while_body
    movl    $46407, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     return t1
    jmp     l_f1_exit              
    movl    $24232, %eax            #   9:     mul    t2 <- 24232, 71919
    movl    $71919, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v2 <- t2
    movl    %eax, -28(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t4       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t6       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t7       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t8       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 7 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 3 of <array 4 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 7 of <array 7 of <array 7 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 1 of <array 3 of <array 1 of <array 4 of <char>>>>>>> %ebp+20 ]
    #   -156(%ebp)   4  [ $v5       <int> %ebp-156 ]
    #   -157(%ebp)   1  [ $v6       <bool> %ebp-157 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $148, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_8_if_false         #   4:     goto   8_if_false
    jmp     l_f2_6                  #   5:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $87406, %eax            #   8:     add    t1 <- 87406, 16564
    movl    $16564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t2 <- t1, 82600
    movl    $82600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -60(%ebp), %eax         #  13:     mul    t4 <- t2, t3
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  14:     add    t5 <- t4, 33789
    movl    $33789, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  18:     mul    t7 <- t5, t6
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  19:     add    t8 <- t7, 59325
    movl    $59325, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  23:     mul    t10 <- t8, t9
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t11 <- t10, 21999
    movl    $21999, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  28:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t14 <- t13, 80931
    movl    $80931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  32:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t18 <- v2, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $36725, %eax            #  35:     assign @t18 <- 36725
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_0                  #  36:     goto   0
l_f2_0:
    movl    $56895, %eax            #  38:     param  0 <- 56895
    pushl   %eax                   
    call    WriteInt                #  39:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_13_if_false        #  40:     goto   13_if_false
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  42:     goto   15_while_cond
    movl    $60777, %eax            #  43:     if     60777 > 94626 goto 18
    movl    $94626, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_18                
    jmp     l_f2_19                 #  44:     goto   19
l_f2_18:
    movl    $1, %eax                #  46:     assign t19 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_20                 #  47:     goto   20
l_f2_19:
    movl    $0, %eax                #  49:     assign t19 <- 0
    movb    %al, -53(%ebp)         
l_f2_20:
    movl    $2, %eax                #  51:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $58207, %eax            #  54:     mul    t21 <- 58207, t20
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  55:     add    t22 <- t21, 88567
    movl    $88567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  56:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  59:     mul    t24 <- t22, t23
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  60:     add    t25 <- t24, 8707
    movl    $8707, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  61:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  64:     mul    t27 <- t25, t26
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  65:     add    t28 <- t27, 94123
    movl    $94123, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  66:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  69:     mul    t30 <- t28, t29
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  70:     add    t31 <- t30, 87171
    movl    $87171, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  71:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  72:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  73:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  74:     add    t34 <- t32, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    8(%ebp), %eax           #  75:     add    t35 <- v1, t34
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movzbl  -53(%ebp), %eax         #  76:     assign @t35 <- t19
    movl    -128(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_11                 #  77:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $0, %eax                #   7:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_12_while_cond:
    movl    $97, %eax               #  10:     if     97 # 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_13_while_body   
    jmp     l_test_11               #  11:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_8                #  17:     goto   8
l_test_10_if_false:
l_test_8:
l_test_18_while_cond:
    call    dummyBOOLfunc           #  21:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     if     t0 = 1 goto 19_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  23:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:
    movl    $36867, %eax            #  27:     assign v1 <- 36867
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

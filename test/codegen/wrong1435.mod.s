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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

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
l_f0_4_while_cond:
    jmp     l_f0_3                  #   1:     goto   3
    jmp     l_f0_4_while_cond       #   2:     goto   4_while_cond
l_f0_3:
    movl    $1, %eax                #   4:     if     1 # 0 goto 7_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   5:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_0:
    call    dummyINTfunc            #  12:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     if     t2 > 54887 goto 11
    movl    $54887, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11                
    jmp     l_f0_12                 #  14:     goto   12
l_f0_11:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_13                 #  17:     goto   13
l_f0_12:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_13:
    movzbl  -17(%ebp), %eax         #  21:     assign v1 <- t3
    movb    %al, -18(%ebp)         
l_f0_16_while_cond:
    movl    $98, %eax               #  23:     if     98 <= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_17_while_body     
    jmp     l_f0_15                 #  24:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  26:     goto   16_while_cond
l_f0_15:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 83 of <array 52 of <array 19 of <array 88 of <char>>>>>>> %ebp+8 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t3 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4                 
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_4:
    jmp     l_f1_3_if_false         #   6:     goto   3_if_false
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #  10:     if     99 > 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
l_f1_6_if_true:
    movl    $7669, %eax             #  13:     if     7669 <= 4842 goto 10_if_true
    movl    $4842, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $92444, %eax            #  19:     if     92444 <= 58427 goto 14_if_true
    movl    $58427, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  20:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  22:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $99, %eax               #  25:     if     99 > 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  26:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  28:     goto   17
l_f1_19_if_false:
l_f1_17:
l_f1_22_while_cond:
    jmp     l_f1_21                 #  32:     goto   21
    jmp     l_f1_22_while_cond      #  33:     goto   22_while_cond
l_f1_21:
    movl    $18424, %eax            #  35:     if     18424 >= 3308 goto 25
    movl    $3308, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_25                
    jmp     l_f1_26                 #  36:     goto   26
l_f1_25:
    movl    $1, %eax                #  38:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_27                 #  39:     goto   27
l_f1_26:
    movl    $0, %eax                #  41:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_27:
    movzbl  -18(%ebp), %eax         #  43:     assign v2 <- t4
    movb    %al, -25(%ebp)         
    movl    $58064, %eax            #  44:     return 58064
    jmp     l_f1_exit              
    call    ReadInt                 #  45:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f1_5                  #  46:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t18      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t4       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t5       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 60 of <array 95 of <array 57 of <array 39 of <array 86 of <char>>>>>>> %ebp+8 ]
    #   -145(%ebp)   1  [ $v2       <char> %ebp-145 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   6:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $81865, %eax            #   7:     mul    t3 <- 81865, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   8:     add    t4 <- t3, 19214
    movl    $19214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  12:     mul    t6 <- t4, t5
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  13:     add    t7 <- t6, 72513
    movl    $72513, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  17:     mul    t9 <- t7, t8
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  18:     add    t10 <- t9, 89273
    movl    $89273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 84146
    movl    $84146, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t17 <- v1, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $100, %eax              #  29:     assign @t17 <- 100
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  30:     goto   0
l_f2_0:
    call    dummyBOOLfunc           #  32:     call   t18 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_8                  #  34:     goto   8
    jmp     l_f2_8                  #  35:     goto   8
    jmp     l_f2_8                  #  36:     goto   8
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  39:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $64588, %eax            #  40:     mul    t20 <- 64588, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t21 <- t20, 46115
    movl    $46115, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  43:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  44:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t23 <- t21, t22
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  46:     add    t24 <- t23, 24734
    movl    $24734, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  47:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  50:     mul    t26 <- t24, t25
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  51:     add    t27 <- t26, 81326
    movl    $81326, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  52:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  55:     mul    t29 <- t27, t28
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  56:     add    t30 <- t29, 70010
    movl    $70010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  57:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    8(%ebp), %eax           #  58:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  59:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  60:     add    t33 <- t31, t32
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  61:     add    t34 <- v1, t33
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $97, %eax               #  62:     assign @t34 <- 97
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_9_while_cond       #  63:     goto   9_while_cond
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $136, %esp              # remove locals
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
    jmp     l_test_3                #   2:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $97, %eax               #   5:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
l_test_8_while_cond:
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     if     t0 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  12:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  14:     goto   8_while_cond
l_test_7:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_13_if_false      #  17:     goto   13_if_false
    jmp     l_test_13_if_false      #  18:     goto   13_if_false
    jmp     l_test_13_if_false      #  19:     goto   13_if_false
    jmp     l_test_13_if_false      #  20:     goto   13_if_false
    jmp     l_test_11               #  21:     goto   11
l_test_13_if_false:
l_test_11:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

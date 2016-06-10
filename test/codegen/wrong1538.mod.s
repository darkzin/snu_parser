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
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 89 of <array 70 of <array 13 of <array 92 of <int>>>>>>> %ebp+12 ]
    #    -96(%ebp)   4  [ $v2       <int> %ebp-96 ]

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
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
    movl    $53388, %eax            #   4:     assign v2 <- 53388
    movl    %eax, -96(%ebp)        
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $33345, %eax            #   8:     sub    t2 <- 33345, 73872
    movl    $73872, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   9:     sub    t3 <- t2, 70554
    movl    $70554, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  10:     sub    t4 <- t3, 45556
    movl    $45556, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  14:     mul    t6 <- t4, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     add    t7 <- t6, 52483
    movl    $52483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  19:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  20:     add    t10 <- t9, 57757
    movl    $57757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t13 <- t12, 61144
    movl    $61144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t16 <- t15, 6922
    movl    $6922, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t20 <- v1, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $95088, %eax            #  36:     assign @t20 <- 95088
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyBOOLfunc           #   8:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   9:     assign v0 <- 99
    movb    %al, -16(%ebp)         
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  13:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
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
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $t4       <bool> %ebp-145 ]
    #   -146(%ebp)   1  [ $t40      <char> %ebp-146 ]
    #   -152(%ebp)   4  [ $t5       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t6       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t7       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t8       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t9       <int> %ebp-168 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 96 of <array 88 of <array 88 of <array 100 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 79 of <array 23 of <array 23 of <array 22 of <char>>>>>>> %ebp+16 ]
    #   -169(%ebp)   1  [ $v3       <bool> %ebp-169 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $160, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $40, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $69525, %eax            #   0:     add    t1 <- 69525, 81615
    movl    $81615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 8423
    movl    $8423, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     add    t3 <- t2, 98163
    movl    $98163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   3:     assign v1 <- t3
    movl    %eax, 12(%ebp)         
    jmp     l_f2_2                  #   4:     goto   2
l_f2_2:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -145(%ebp)        
    jmp     l_f2_4                  #   7:     goto   4
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -145(%ebp)        
l_f2_4:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    $38208, %eax            #  13:     mul    t6 <- 38208, t5
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    $59544, %eax            #  14:     add    t7 <- 59544, 74671
    movl    $74671, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  15:     sub    t8 <- t7, 31952
    movl    $31952, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  16:     sub    t9 <- t8, 65776
    movl    $65776, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    -156(%ebp), %eax        #  17:     add    t10 <- t6, t9
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t13 <- t12, 61125
    movl    $61125, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t16 <- t15, 84667
    movl    $84667, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  32:     add    t19 <- t18, 31576
    movl    $31576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  35:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  36:     add    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t23 <- v0, t22
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -145(%ebp), %eax        #  38:     assign @t23 <- t4
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_7_while_cond:
    movl    $60292, %eax            #  40:     if     60292 # 32714 goto 8_while_body
    movl    $32714, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  41:     goto   6
l_f2_8_while_body:
    movl    $2, %eax                #  43:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $58048, %eax            #  46:     mul    t25 <- 58048, t24
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  47:     add    t26 <- t25, 620
    movl    $620, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  50:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  51:     mul    t28 <- t26, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  52:     add    t29 <- t28, 59260
    movl    $59260, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  55:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  56:     mul    t31 <- t29, t30
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  57:     add    t32 <- t31, 58240
    movl    $58240, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  60:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  61:     mul    t34 <- t32, t33
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  62:     add    t35 <- t34, 88779
    movl    $88779, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  63:     mul    t36 <- t35, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    8(%ebp), %eax           #  64:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  65:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  66:     add    t38 <- t36, t37
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    8(%ebp), %eax           #  67:     add    t39 <- v0, t38
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $1, %eax                #  68:     assign @t39 <- 1
    movl    -144(%ebp), %edi       
    movb    %al, (%edi)            
l_f2_12_while_cond:
    movl    $97, %eax               #  70:     if     97 <= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  71:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  73:     goto   12_while_cond
l_f2_11:
l_f2_16_while_cond:
    jmp     l_f2_15                 #  76:     goto   15
    jmp     l_f2_16_while_cond      #  77:     goto   16_while_cond
l_f2_15:
    call    dummyCHARfunc           #  79:     call   t40 <- dummyCHARfunc
    movb    %al, -146(%ebp)        
l_f2_20_while_cond:
    movl    $33964, %eax            #  81:     if     33964 >= 34412 goto 21_while_body
    movl    $34412, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_21_while_body     
    jmp     l_f2_19                 #  82:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  84:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_7_while_cond       #  86:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $160, %esp              # remove locals
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
    jmp     l_test_3                #   2:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $0, %eax                #   5:     if     0 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_10               #  11:     goto   10
l_test_10:
    movl    $100, %eax              #  13:     if     100 # 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_14              
    jmp     l_test_15               #  14:     goto   15
l_test_14:
    movl    $1, %eax                #  16:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_16               #  17:     goto   16
l_test_15:
    movl    $0, %eax                #  19:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_16:
    movzbl  -13(%ebp), %eax         #  21:     assign v0 <- t0
    movb    %al, v0                
    movl    $30134, %eax            #  22:     if     30134 <= 95149 goto 19_if_true
    movl    $95149, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_19_if_true      
    jmp     l_test_20_if_false      #  23:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  25:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_0                #  28:     goto   0
l_test_2_if_false:
l_test_0:
l_test_23_while_cond:
    jmp     l_test_23_while_cond    #  32:     goto   23_while_cond
l_test_28_while_cond:
    jmp     l_test_27               #  34:     goto   27
    jmp     l_test_exit            
    jmp     l_test_28_while_cond    #  36:     goto   28_while_cond
l_test_27:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

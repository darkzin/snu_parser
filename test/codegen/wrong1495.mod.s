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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -121(%ebp)   1  [ $t36      <char> %ebp-121 ]
    #   -122(%ebp)   1  [ $t4       <char> %ebp-122 ]
    #   -128(%ebp)   4  [ $t5       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 4 of <array 37 of <array 50 of <array 84 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 16 of <array 33 of <array 62 of <array 18 of <array 21 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $132, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $33, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movl    $98, %eax               #   2:     if     98 < t3 goto 2_while_body
    movzbl  -93(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -122(%ebp)        
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $61101, %eax            #   8:     div    t5 <- 61101, 67433
    movl    $67433, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   9:     div    t6 <- t5, 4388
    movl    $4388, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  10:     mul    t7 <- t6, 45829
    movl    $45829, %ebx           
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  11:     mul    t8 <- t7, 68243
    movl    $68243, %ebx           
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  12:     div    t9 <- t8, 84895
    movl    $84895, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  13:     div    t10 <- t9, 11458
    movl    $11458, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     mul    t11 <- t10, 43764
    movl    $43764, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t12 <- t11, 58591
    movl    $58591, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     mul    t13 <- t12, 99165
    movl    $99165, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t16 <- t15, 9875
    movl    $9875, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  24:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $65911, %eax            #  26:     add    t19 <- 65911, 91584
    movl    $91584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     sub    t20 <- t19, 17956
    movl    $17956, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  28:     add    t21 <- t20, 67231
    movl    $67231, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     sub    t22 <- t21, 55539
    movl    $55539, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     sub    t23 <- t22, 96302
    movl    $96302, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t24 <- t23, 77963
    movl    $77963, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t25 <- t18, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  34:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  35:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  36:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  37:     add    t28 <- t27, 57126
    movl    $57126, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  39:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  40:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  41:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  42:     add    t31 <- t30, 72498
    movl    $72498, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  43:     mul    t32 <- t31, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    20(%ebp), %eax          #  44:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  45:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  46:     add    t34 <- t32, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    20(%ebp), %eax          #  47:     add    t35 <- v4, t34
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $20904, %eax            #  48:     assign @t35 <- 20904
    movl    -120(%ebp), %edi       
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  49:     call   t36 <- dummyCHARfunc
    movb    %al, -121(%ebp)        

l_f0_exit:
    # epilogue
    addl    $132, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 80 of <array 78 of <array 76 of <array 48 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
    movl    $100, %eax              #   2:     return 100
    jmp     l_f1_exit              
    movl    $98, %eax               #   3:     if     98 # 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
l_f1_3_if_true:
    movl    $99, %eax               #   6:     if     99 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   7:     goto   8_if_false
l_f1_7_if_true:
    movl    $100, %eax              #   9:     assign v2 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f1_13_if_false        #  10:     goto   13_if_false
    jmp     l_f1_11                 #  11:     goto   11
l_f1_13_if_false:
l_f1_11:
l_f1_15_while_cond:
    jmp     l_f1_14                 #  15:     goto   14
    jmp     l_f1_15_while_cond      #  16:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_6                  #  18:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_2                  #  21:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t20      <bool> %ebp-50 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 64 of <array 30 of <array 13 of <array 66 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 20 of <array 98 of <array 20 of <array 83 of <array 62 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 33 of <array 76 of <array 36 of <array 67 of <array 60 of <int>>>>>>> %ebp+20 ]
    #    -84(%ebp)   4  [ $v5       <int> %ebp-84 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $95937, %eax            #   9:     mul    t4 <- 95937, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  10:     add    t5 <- t4, 5714
    movl    $5714, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  14:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  15:     add    t8 <- t7, 83838
    movl    $83838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  19:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 10384
    movl    $10384, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 72566
    movl    $72566, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  28:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  30:     add    t18 <- v3, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $20611, %eax            #  31:     assign @t18 <- 20611
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  33:     goto   9_while_cond
    movl    $53770, %eax            #  34:     assign v5 <- 53770
    movl    %eax, -84(%ebp)        
    movl    $99, %eax               #  35:     if     99 = 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_14                 #  36:     goto   14
l_f2_13:
    movl    $1, %eax                #  38:     assign t19 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f2_15                 #  39:     goto   15
l_f2_14:
    movl    $0, %eax                #  41:     assign t19 <- 0
    movb    %al, -49(%ebp)         
l_f2_15:
    movzbl  -49(%ebp), %eax         #  43:     assign v1 <- t19
    movb    %al, 8(%ebp)           
    jmp     l_f2_0                  #  44:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  47:     call   t20 <- dummyBOOLfunc
    movb    %al, -50(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $98, %eax               #   0:     if     98 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  10:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_9_while_cond:
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  13:     if     t2 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  14:     goto   8
l_test_10_while_body:
    jmp     l_test_11               #  16:     goto   11
l_test_11:
    jmp     l_test_9_while_cond     #  18:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            

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

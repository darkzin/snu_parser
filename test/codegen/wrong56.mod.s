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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 10 of <array 5 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 9 of <array 5 of <array 5 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 3 of <array 7 of <array 1 of <array 7 of <char>>>>>>> %ebp+16 ]
    #    -40(%ebp)   4  [ $v5       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v6       <bool> %ebp-41 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 95721
    movl    $95721, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v5 <- t1
    movl    %eax, -40(%ebp)        
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     if     t2 > 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2                 
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
l_f0_3:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_f0_4:
    movzbl  -22(%ebp), %eax         #  12:     assign v6 <- t3
    movb    %al, -41(%ebp)         
    movl    $84513, %eax            #  13:     div    t4 <- 84513, 11696
    movl    $11696, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     div    t5 <- t4, 24299
    movl    $24299, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     if     t5 >= 24665 goto 7
    movl    $24665, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #  16:     goto   8
l_f0_7:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_9                  #  19:     goto   9
l_f0_8:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_f0_9:
    movzbl  -33(%ebp), %eax         #  23:     assign v6 <- t6
    movb    %al, -41(%ebp)         

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t4       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t6       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t7       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t8       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 3 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 7 of <array 4 of <array 9 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 10 of <array 5 of <array 7 of <array 4 of <int>>>>>>> %ebp+16 ]
    #   -153(%ebp)   1  [ $v5       <char> %ebp-153 ]
    #   -160(%ebp)   4  [ $v6       <int> %ebp-160 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   2:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $85842, %eax            #   3:     mul    t1 <- 85842, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 2737
    movl    $2737, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -64(%ebp), %eax         #   8:     mul    t4 <- t2, t3
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #   9:     add    t5 <- t4, 57213
    movl    $57213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  13:     mul    t7 <- t5, t6
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  14:     add    t8 <- t7, 28358
    movl    $28358, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  18:     mul    t10 <- t8, t9
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t11 <- t10, 41693
    movl    $41693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t12 <- t11, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  21:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  22:     call   t13 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  24:     add    t15 <- v2, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $97, %eax               #  25:     assign @t15 <- 97
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  26:     call   t16 <- ReadInt
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t17 <- t16, 95536
    movl    $95536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     return t17
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #  30:     goto   2
    movl    $13225, %eax            #  31:     div    t18 <- 13225, 77530
    movl    $77530, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  34:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $5307, %eax             #  35:     mul    t20 <- 5307, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  36:     add    t21 <- t20, 23455
    movl    $23455, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  39:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  40:     mul    t23 <- t21, t22
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  41:     add    t24 <- t23, 38196
    movl    $38196, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  43:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  44:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  45:     mul    t26 <- t24, t25
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  46:     add    t27 <- t26, 70577
    movl    $70577, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  48:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  49:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  50:     mul    t29 <- t27, t28
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  51:     add    t30 <- t29, 23359
    movl    $23359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  52:     mul    t31 <- t30, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  53:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  54:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  55:     add    t33 <- t31, t32
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    16(%ebp), %eax          #  56:     add    t34 <- v4, t33
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -56(%ebp), %eax         #  57:     assign @t34 <- t18
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f1_3_while_cond       #  58:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 <= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t1
    jmp     l_f2_exit              
    movl    $68484, %eax            #  10:     mul    t2 <- 68484, 5234
    movl    $5234, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t3 <- t2, 27197
    movl    $27197, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $55256, %eax            #  12:     if     55256 <= t3 goto 6
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  13:     goto   7
l_f2_6:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_8                  #  16:     goto   8
l_f2_7:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f2_8:
    movzbl  -25(%ebp), %eax         #  20:     return t4
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  22:     if     t5 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  23:     goto   12_if_false
l_f2_11_if_true:
    movl    $96488, %eax            #  25:     if     96488 # 90955 goto 14_if_true
    movl    $90955, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  26:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  28:     goto   13
l_f2_15_if_false:
l_f2_13:
    movl    $99, %eax               #  31:     if     99 > 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_18                
    jmp     l_f2_19                 #  32:     goto   19
l_f2_18:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f2_20                 #  35:     goto   20
l_f2_19:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_f2_20:
    movzbl  -27(%ebp), %eax         #  39:     return t6
    jmp     l_f2_exit              
    movl    $5374, %eax             #  40:     if     5374 > 42989 goto 23_if_true
    movl    $42989, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  41:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  43:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_10                 #  46:     goto   10
l_f2_12_if_false:
l_f2_10:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $100, %eax              #   0:     if     100 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $99, %eax               #   7:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
    call    WriteLn                 #   9:     call   WriteLn
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
    jmp     l_test_10_if_false      #  13:     goto   10_if_false
    movl    $73125, %eax            #  14:     if     73125 # 70381 goto 21_if_true
    movl    $70381, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  15:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  17:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $97, %eax               #  20:     if     97 <= 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_25_if_true      
    jmp     l_test_26_if_false      #  21:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  23:     goto   24
l_test_26_if_false:
l_test_24:
l_test_29_while_cond:
    jmp     l_test_29_while_cond    #  27:     goto   29_while_cond
l_test_32_while_cond:
    jmp     l_test_31               #  29:     goto   31
    jmp     l_test_32_while_cond    #  30:     goto   32_while_cond
l_test_31:
    movl    $1, %eax                #  32:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_36               #  34:     goto   36
l_test_36:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_42_while_cond:
    movl    $99, %eax               #  39:     if     99 > 98 goto 43_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_43_while_body   
    jmp     l_test_41               #  40:     goto   41
l_test_43_while_body:
    jmp     l_test_42_while_cond    #  42:     goto   42_while_cond
l_test_41:
    jmp     l_test_exit            
    jmp     l_test_46               #  45:     goto   46
l_test_46:
    jmp     l_test_8                #  47:     goto   8
l_test_10_if_false:
l_test_8:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

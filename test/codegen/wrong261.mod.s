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
    #   -148(%ebp)   4  [ $t4       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t41      <int> %ebp-156 ]
    #   -157(%ebp)   1  [ $t42      <bool> %ebp-157 ]
    #   -164(%ebp)   4  [ $t5       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t6       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t7       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t8       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t9       <int> %ebp-180 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 2 of <array 5 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 3 of <array 1 of <array 4 of <array 5 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $168, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $42, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $55872, %eax            #   0:     sub    t1 <- 55872, 91678
    movl    $91678, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $33956, %eax            #   4:     mul    t3 <- 33956, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   5:     add    t4 <- t3, 93765
    movl    $93765, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -148(%ebp), %eax        #   9:     mul    t6 <- t4, t5
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    $62974, %eax            #  10:     add    t7 <- 62974, 191
    movl    $191, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  11:     add    t8 <- t7, 18433
    movl    $18433, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  12:     sub    t9 <- t8, 60098
    movl    $60098, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  13:     sub    t10 <- t9, 85853
    movl    $85853, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t11 <- t10, 24828
    movl    $24828, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t12 <- t11, 48316
    movl    $48316, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t13 <- t12, 59737
    movl    $59737, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -168(%ebp), %eax        #  17:     add    t14 <- t6, t13
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     add    t17 <- t16, 60802
    movl    $60802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     mul    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t20 <- t19, 81890
    movl    $81890, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  30:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  32:     add    t24 <- v3, t23
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -16(%ebp), %eax         #  33:     assign @t24 <- t1
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_2_while_cond:
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  37:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $22508, %eax            #  38:     mul    t26 <- 22508, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  39:     add    t27 <- t26, 84179
    movl    $84179, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  42:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  43:     mul    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  44:     add    t30 <- t29, 51589
    movl    $51589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  47:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  48:     mul    t32 <- t30, t31
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  49:     add    t33 <- t32, 82674
    movl    $82674, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  52:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  53:     mul    t35 <- t33, t34
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  54:     add    t36 <- t35, 80828
    movl    $80828, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  55:     mul    t37 <- t36, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    16(%ebp), %eax          #  56:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  57:     call   t38 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  58:     add    t39 <- t37, t38
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    16(%ebp), %eax          #  59:     add    t40 <- v3, t39
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $66396, %eax            #  60:     assign @t40 <- 66396
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           
    call    ReadInt                 #  61:     call   t41 <- ReadInt
    movl    %eax, -156(%ebp)       
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  63:     goto   2_while_cond
    call    dummyBOOLfunc           #  64:     call   t42 <- dummyBOOLfunc
    movb    %al, -157(%ebp)        

l_f0_exit:
    # epilogue
    addl    $168, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_5:
    jmp     l_f1_2                  #   4:     goto   2
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t2
    movb    %al, 12(%ebp)          
    call    dummyINTfunc            #  11:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_8_while_cond:
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     if     t4 > t5 goto 9_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #  16:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  18:     goto   8_while_cond
l_f1_7:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <char> %ebp-30 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v3       <char> %ebp-37 ]

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
    movl    $18637, %eax            #   0:     sub    t1 <- 18637, 39172
    movl    $39172, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 77917
    movl    $77917, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $81200, %eax            #   2:     mul    t3 <- 81200, 14531
    movl    $14531, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t4 <- t3, 68370
    movl    $68370, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t2 = t4 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_1:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f2_3:
    movzbl  -29(%ebp), %eax         #  12:     return t5
    jmp     l_f2_exit              
    movl    $92478, %eax            #  13:     assign v2 <- 92478
    movl    %eax, -36(%ebp)        
    call    dummyCHARfunc           #  14:     call   t6 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  15:     assign v3 <- t6
    movb    %al, -37(%ebp)         

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $1133, %eax             #   0:     mul    t0 <- 1133, 72205
    movl    $72205, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $7065, %eax             #   3:     if     7065 < 58529 goto 3_while_body
    movl    $58529, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_5                #   6:     goto   5
l_test_5:
    jmp     l_test_exit            
    movl    $99, %eax               #   9:     if     99 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
l_test_14_while_cond:
    jmp     l_test_16               #  18:     goto   16
    jmp     l_test_16               #  19:     goto   16
    jmp     l_test_15_while_body    #  20:     goto   15_while_body
l_test_16:
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  23:     goto   14_while_cond
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

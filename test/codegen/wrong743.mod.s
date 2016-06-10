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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 2 of <array 2 of <array 8 of <array 4 of <int>>>>>>> %ebp+16 ]

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
    movl    $14850, %eax            #   0:     if     14850 >= 9408 goto 1_if_true
    movl    $9408, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_exit              
    jmp     l_f0_9_if_false         #   6:     goto   9_if_false
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_11_while_cond:
    call    ReadInt                 #  14:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $40908, %eax            #  15:     add    t3 <- 40908, t2
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $34536, %eax            #  16:     if     34536 >= t3 goto 12_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  19:     goto   11_while_cond
l_f0_10:
l_f0_15_while_cond:
    jmp     l_f0_14                 #  22:     goto   14
    jmp     l_f0_15_while_cond      #  23:     goto   15_while_cond
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 3 of <array 8 of <array 9 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 6 of <array 1 of <array 2 of <array 1 of <char>>>>>>> %ebp+16 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $6175, %eax             #   3:     assign v3 <- 6175
    movl    %eax, -32(%ebp)        
    movl    $1, %eax                #   4:     return 1
    jmp     l_f1_exit              
    movl    $39620, %eax            #   5:     if     39620 = 34878 goto 7_if_true
    movl    $34878, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_if_false:
l_f1_6:
l_f1_11_while_cond:
    movl    $20541, %eax            #  12:     if     20541 >= 12028 goto 12_while_body
    movl    $12028, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    movl    $90351, %eax            #  17:     assign v3 <- 90351
    movl    %eax, -32(%ebp)        
    jmp     l_f1_0                  #  18:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $17120, %eax            #  21:     div    t1 <- 17120, 79519
    movl    $79519, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t2 <- t1, 80624
    movl    $80624, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     sub    t3 <- t2, 87008
    movl    $87008, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $51392, %eax            #  24:     if     51392 <= t3 goto 16
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_16                
    jmp     l_f1_17                 #  25:     goto   17
l_f1_16:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_18                 #  28:     goto   18
l_f1_17:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f1_18:
    movzbl  -25(%ebp), %eax         #  32:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_25                 #  33:     goto   25
    jmp     l_f1_25                 #  34:     goto   25
l_f1_25:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_27                 #  37:     goto   27
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_f1_27:
    movl    $0, %eax                #  40:     if     0 = t5 goto 21
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_21                
    jmp     l_f1_22                 #  41:     goto   22
l_f1_21:
    movl    $1, %eax                #  43:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f1_23                 #  44:     goto   23
l_f1_22:
    movl    $0, %eax                #  46:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_f1_23:
    movzbl  -27(%ebp), %eax         #  48:     assign v1 <- t6
    movb    %al, 12(%ebp)          

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
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
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t5       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t6       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t7       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t8       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t9       <int> %ebp-164 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 10 of <array 6 of <array 8 of <array 4 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $152, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $38, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5                  #   3:     goto   5
l_f2_4:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #  10:     if     0 = t1 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    movl    $20754, %eax            #  15:     mul    t2 <- 20754, 98651
    movl    $98651, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  16:     mul    t3 <- t2, 84148
    movl    $84148, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  17:     mul    t4 <- t3, 48003
    movl    $48003, %ebx           
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    $15073, %eax            #  21:     mul    t6 <- 15073, t5
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  22:     add    t7 <- t6, 2525
    movl    $2525, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  26:     mul    t9 <- t7, t8
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  27:     add    t10 <- t9, 34545
    movl    $34545, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  31:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t13 <- t12, 5632
    movl    $5632, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     add    t16 <- t15, 25931
    movl    $25931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  40:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  41:     add    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  42:     add    t20 <- v2, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -144(%ebp), %eax        #  43:     assign @t20 <- t4
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    call    ReadInt                 #  44:     call   t21 <- ReadInt
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  45:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $86612, %eax            #  48:     mul    t23 <- 86612, t22
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t24 <- t23, 60230
    movl    $60230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  50:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  52:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  53:     mul    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  54:     add    t27 <- t26, 63971
    movl    $63971, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  55:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  57:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  58:     mul    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  59:     add    t30 <- t29, 9564
    movl    $9564, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $5, %eax                #  60:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  61:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  62:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  63:     mul    t32 <- t30, t31
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    $23884, %eax            #  64:     add    t33 <- 23884, 11536
    movl    $11536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  65:     add    t34 <- t32, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  66:     mul    t35 <- t34, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    16(%ebp), %eax          #  67:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  68:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  69:     add    t37 <- t35, t36
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    16(%ebp), %eax          #  70:     add    t38 <- v2, t37
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -68(%ebp), %eax         #  71:     assign @t38 <- t21
    movl    -140(%ebp), %edi       
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $152, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v0 <- t0
    movb    %al, v0                
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

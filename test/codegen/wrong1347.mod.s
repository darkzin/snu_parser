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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 89 of <array 66 of <array 37 of <array 45 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f0_exit              
    movl    $34522, %eax            #   2:     if     34522 = 82079 goto 2_if_true
    movl    $82079, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_7_if_false         #   5:     goto   7_if_false
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $97, %eax               #   9:     return 97
    jmp     l_f0_exit              
    movl    $99, %eax               #  10:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_11_while_cond:
    movl    $98, %eax               #  16:     if     98 # 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_while_body:
    call    dummyINTfunc            #  19:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_11_while_cond      #  20:     goto   11_while_cond
l_f0_10:

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
    #   -132(%ebp)   4  [ $t35      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t4       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 18 of <array 89 of <array 100 of <array 90 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 27 of <array 71 of <array 26 of <array 92 of <array 12 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 51 of <array 59 of <array 5 of <array 7 of <array 75 of <bool>>>>>>> %ebp+20 ]
    #   -157(%ebp)   1  [ $v5       <char> %ebp-157 ]

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
    movl    $27531, %eax            #   0:     add    t0 <- 27531, 20086
    movl    $20086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t0
    jmp     l_f1_exit              
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $5331, %eax             #   5:     mul    t2 <- 5331, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $76479, %eax            #   6:     div    t3 <- 76479, 58472
    movl    $58472, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   7:     mul    t4 <- t3, 79052
    movl    $79052, %ebx           
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    $1615, %eax             #   8:     sub    t5 <- 1615, t4
    movl    -136(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -64(%ebp), %eax         #   9:     add    t6 <- t2, t5
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  13:     mul    t8 <- t6, t7
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  14:     add    t9 <- t8, 41628
    movl    $41628, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -156(%ebp), %eax        #  18:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t12 <- t11, 52057
    movl    $52057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t15 <- t14, 95785
    movl    $95785, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t18 <- t16, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t19 <- v2, t18
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $98, %eax               #  30:     assign @t19 <- 98
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  31:     if     99 > 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  32:     goto   4_if_false
l_f1_3_if_true:
l_f1_7_while_cond:
    jmp     l_f1_6                  #  35:     goto   6
    jmp     l_f1_7_while_cond       #  36:     goto   7_while_cond
l_f1_6:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $13047, %eax            #  41:     mul    t21 <- 13047, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     add    t22 <- t21, 2618
    movl    $2618, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  46:     mul    t24 <- t22, t23
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  47:     add    t25 <- t24, 16623
    movl    $16623, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  51:     mul    t27 <- t25, t26
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  52:     add    t28 <- t27, 25767
    movl    $25767, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  56:     mul    t30 <- t28, t29
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  57:     add    t31 <- t30, 63911
    movl    $63911, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  58:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  60:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  61:     add    t34 <- t32, t33
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  62:     add    t35 <- v2, t34
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $100, %eax              #  63:     assign @t35 <- 100
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_2                  #  64:     goto   2
l_f1_4_if_false:
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 51 of <array 89 of <array 66 of <array 37 of <array 45 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #   -498790756(%ebp)  498790734  [ $v1       <array 51 of <array 89 of <array 66 of <array 37 of <array 45 of <bool>>>>>> %ebp-498790756 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $498790744, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $124697686, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-498790756(%ebp)     # local array 'v1': 5 dimensions
    movl    $51,-498790752(%ebp)    #   dimension 1: 51 elements
    movl    $89,-498790748(%ebp)    #   dimension 2: 89 elements
    movl    $66,-498790744(%ebp)    #   dimension 3: 66 elements
    movl    $37,-498790740(%ebp)    #   dimension 4: 37 elements
    movl    $45,-498790736(%ebp)    #   dimension 5: 45 elements

    # function body
l_f2_1_while_cond:
    movl    $61351, %eax            #   1:     if     61351 = 57158 goto 2_while_body
    movl    $57158, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $32032, %eax            #   5:     if     32032 = 31029 goto 6_while_body
    movl    $31029, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    movl    $78418, %eax            #  11:     if     78418 <= 47702 goto 10_while_body
    movl    $47702, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_while_body     
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  14:     goto   9_while_cond
l_f2_8:
    movl    $75793, %eax            #  16:     param  0 <- 75793
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #  18:     return 100
    jmp     l_f2_exit              
l_f2_15_while_cond:
    movl    $0, %eax                #  20:     if     0 # 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_16_while_body     
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  23:     goto   15_while_cond
l_f2_14:
l_f2_19_while_cond:
    jmp     l_f2_19_while_cond      #  26:     goto   19_while_cond
l_f2_22_while_cond:
    jmp     l_f2_22_while_cond      #  28:     goto   22_while_cond
l_f2_25_while_cond:
    jmp     l_f2_25_while_cond      #  30:     goto   25_while_cond
    jmp     l_f2_1_while_cond       #  31:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_31                 #  33:     goto   31
    jmp     l_f2_31                 #  34:     goto   31
l_f2_31:
    movl    $1, %eax                #  36:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_33                 #  37:     goto   33
    movl    $0, %eax                #  38:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_33:
    movl    $0, %eax                #  40:     if     0 # t0 goto 28_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_28_if_true        
    jmp     l_f2_29_if_false        #  41:     goto   29_if_false
l_f2_28_if_true:
    call    dummyProcedure          #  43:     call   dummyProcedure
    movl    $99, %eax               #  44:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_27                 #  45:     goto   27
l_f2_29_if_false:
l_f2_27:
    leal    -498790756(%ebp), %eax  #  48:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  49:     param  1 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #  50:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  51:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  52:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  53:     return t3
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $498790744, %esp        # remove locals
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
    jmp     l_test_exit            
    movl    $51527, %eax            #   1:     assign v0 <- 51527
    movl    %eax, v0               
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   3:     goto   6_while_cond
l_test_9_while_cond:
    movl    $3794, %eax             #   5:     if     3794 # 99752 goto 10_while_body
    movl    $99752, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #   6:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #   8:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    movl    $72449, %eax            #  11:     if     72449 >= 89253 goto 14_while_body
    movl    $89253, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  12:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  14:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  17:     goto   17_while_cond
    jmp     l_test_2                #  18:     goto   2
l_test_2:
    jmp     l_test_exit            
    jmp     l_test_21_if_true       #  21:     goto   21_if_true
    jmp     l_test_21_if_true       #  22:     goto   21_if_true
    jmp     l_test_22_if_false      #  23:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_exit            
    jmp     l_test_20               #  26:     goto   20
l_test_22_if_false:
l_test_20:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

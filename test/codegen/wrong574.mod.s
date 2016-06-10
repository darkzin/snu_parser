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
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t40      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t41      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t42      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t5       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 6 of <array 6 of <array 9 of <array 7 of <array 6 of <int>>>>>>> %ebp+16 ]
    #   -176(%ebp)   4  [ $v6       <int> %ebp-176 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     assign v3 <- 100
    movb    %al, 8(%ebp)           
    movl    $57395, %eax            #   1:     div    t3 <- 57395, 95653
    movl    $95653, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #   4:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -96(%ebp), %eax         #   5:     mul    t5 <- t3, t4
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    $99803, %eax            #   6:     div    t6 <- 99803, 16383
    movl    $16383, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #   7:     mul    t7 <- t6, 67779
    movl    $67779, %ebx           
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #   8:     div    t8 <- t7, 41261
    movl    $41261, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #   9:     mul    t9 <- t8, 85855
    movl    $85855, %ebx           
    imull   %ebx                   
    movl    %eax, -172(%ebp)       
    movl    -156(%ebp), %eax        #  10:     add    t10 <- t5, t9
    movl    -172(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  13:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  14:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t13 <- t12, 21258
    movl    $21258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  18:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t16 <- t15, 54212
    movl    $54212, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  23:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t19 <- t18, 17044
    movl    $17044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  27:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  28:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  30:     add    t23 <- v5, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $75150, %eax            #  31:     assign @t23 <- 75150
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyINTfunc            #  32:     call   t24 <- dummyINTfunc
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  33:     mul    t25 <- t24, 13117
    movl    $13117, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  34:     div    t26 <- t25, 28881
    movl    $28881, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  37:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  38:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  39:     add    t29 <- t28, 34454
    movl    $34454, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  42:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  43:     mul    t31 <- t29, t30
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  44:     add    t32 <- t31, 14344
    movl    $14344, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  47:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  48:     mul    t34 <- t32, t33
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  49:     add    t35 <- t34, 28721
    movl    $28721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  52:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  53:     mul    t37 <- t35, t36
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  54:     add    t38 <- t37, 79939
    movl    $79939, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  55:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    16(%ebp), %eax          #  56:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  57:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -144(%ebp)       
    movl    -136(%ebp), %eax        #  58:     add    t41 <- t39, t40
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    16(%ebp), %eax          #  59:     add    t42 <- v5, t41
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $87383, %eax            #  60:     assign @t42 <- 87383
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 10 of <array 1 of <array 6 of <array 10 of <int>>>>>>> %ebp+12 ]
    #    -26(%ebp)   1  [ $v5       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $v6       <int> %ebp-32 ]

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
    movl    $44771, %eax            #   0:     sub    t3 <- 44771, 63122
    movl    $63122, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 67579
    movl    $67579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $100, %eax              #   4:     if     100 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    movl    $99, %eax               #   8:     if     99 <= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  11:     goto   6_while_cond
l_f1_5:
    call    ReadInt                 #  13:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #  14:     if     97 > 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11                
    jmp     l_f1_12                 #  15:     goto   12
l_f1_11:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_13                 #  18:     goto   13
l_f1_12:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f1_13:
    movzbl  -25(%ebp), %eax         #  22:     assign v5 <- t6
    movb    %al, -26(%ebp)         
    jmp     l_f1_2_while_cond       #  23:     goto   2_while_cond
l_f1_1:
    movl    $59910, %eax            #  25:     assign v6 <- 59910
    movl    %eax, -32(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 10 of <array 4 of <array 2 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <char> %ebp+16 ]
    #    -17(%ebp)   1  [ $v6       <bool> %ebp-17 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 >= t4 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     if     t5 = 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_while_body:
    movl    $100, %eax              #  13:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_5_while_cond       #  14:     goto   5_while_cond
l_f2_4:
    movl    $17231, %eax            #  16:     if     17231 > 20232 goto 10
    movl    $20232, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10                
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f2_12:
    movzbl  -16(%ebp), %eax         #  24:     assign v6 <- t6
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_5_while_cond:
    movl    $100, %eax              #   3:     if     100 >= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    movl    $13280, %eax            #   8:     if     13280 <= 93589 goto 9
    movl    $93589, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #   9:     goto   10
l_test_9:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  16:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_1                #  17:     goto   1
l_test_1:
l_test_14_while_cond:
    movl    $99248, %eax            #  20:     if     99248 < 91264 goto 15_while_body
    movl    $91264, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  21:     goto   13
l_test_15_while_body:
    movl    $51635, %eax            #  23:     assign v2 <- 51635
    movl    %eax, v2               
    movl    $29231, %eax            #  24:     mul    t2 <- 29231, 48504
    movl    $48504, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $20133, %eax            #  25:     if     20133 < t2 goto 19_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  26:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  28:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_14_while_cond    #  31:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    movl    $98, %eax               #  34:     if     98 >= 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  35:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_exit            
    movl    $100, %eax              #  38:     assign v0 <- 100
    movb    %al, v0                
    movl    $99, %eax               #  39:     assign v0 <- 99
    movb    %al, v0                
l_test_31_while_cond:
    movl    $95755, %eax            #  41:     if     95755 > 86339 goto 32_while_body
    movl    $86339, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_32_while_body   
    jmp     l_test_30               #  42:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  44:     goto   31_while_cond
l_test_30:
    jmp     l_test_exit            
    call    WriteLn                 #  47:     call   WriteLn
    jmp     l_test_exit            
    movl    $97, %eax               #  49:     if     97 # 99 goto 38_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_38_if_true      
    jmp     l_test_39_if_false      #  50:     goto   39_if_false
l_test_38_if_true:
    jmp     l_test_37               #  52:     goto   37
l_test_39_if_false:
l_test_37:
    jmp     l_test_23               #  55:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

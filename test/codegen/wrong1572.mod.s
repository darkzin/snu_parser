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
    #    -16(%ebp)   4  [ $t39      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t40      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t41      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t42      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t43      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t44      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t45      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t46      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t47      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t48      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t49      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t50      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t51      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t52      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t53      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t54      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t55      <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 38 of <array 71 of <array 100 of <array 75 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 13 of <array 15 of <array 53 of <array 12 of <char>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    call    dummyINTfunc            #   1:     call   t39 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_3_while_cond:
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_6                  #   4:     goto   6
l_f0_6:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $8348, %eax             #   9:     mul    t41 <- 8348, t40
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t42 <- t41, 20497
    movl    $20497, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  14:     mul    t44 <- t42, t43
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     add    t45 <- t44, 16386
    movl    $16386, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  19:     mul    t47 <- t45, t46
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  20:     add    t48 <- t47, 64396
    movl    $64396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  24:     mul    t50 <- t48, t49
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  25:     add    t51 <- t50, 42414
    movl    $42414, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     mul    t52 <- t51, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t53 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  29:     add    t54 <- t52, t53
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t55 <- v1, t54
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $1, %eax                #  31:     assign @t55 <- 1
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_3_while_cond       #  32:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t39      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t40      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t41      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t42      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t43      <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp+20 ]

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
    movl    $24189, %eax            #   0:     mul    t39 <- 24189, 90704
    movl    $90704, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $46496, %eax            #   1:     add    t40 <- 46496, t39
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $7390, %eax             #   2:     if     7390 > t40 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t41 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t41 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #  10:     return t41
    jmp     l_f1_exit              
    call    ReadInt                 #  11:     call   t42 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f1_7_while_cond:
    call    dummyCHARfunc           #  13:     call   t43 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $100, %eax              #  14:     if     100 >= t43 goto 8_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  15:     goto   6
l_f1_8_while_body:
    movl    $1, %eax                #  17:     return 1
    jmp     l_f1_exit              
    call    WriteLn                 #  18:     call   WriteLn
    jmp     l_f1_7_while_cond       #  19:     goto   7_while_cond
l_f1_6:

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
    #    -16(%ebp)   4  [ $t39      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t40      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 59 of <array 67 of <array 57 of <array 8 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 54 of <array 9 of <array 71 of <array 89 of <array 64 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 46 of <array 60 of <array 17 of <array 3 of <array 54 of <bool>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    movl    $39176, %eax            #   0:     sub    t39 <- 39176, 46934
    movl    $46934, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t39
    movl    %eax, 12(%ebp)         
    movl    $100, %eax              #   2:     if     100 <= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $49845, %eax            #   5:     return 49845
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_6                  #   7:     goto   6
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
l_f2_6:
    movl    $51376, %eax            #  10:     return 51376
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $96315, %eax            #  14:     if     96315 <= 44009 goto 11
    movl    $44009, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $1, %eax                #  17:     assign t40 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
l_f2_12:
    movl    $0, %eax                #  20:     assign t40 <- 0
    movb    %al, -17(%ebp)         
l_f2_13:
    movzbl  -17(%ebp), %eax         #  22:     assign v4 <- t40
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 22 of <array 13 of <array 15 of <array 53 of <array 12 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 22 of <array 38 of <array 71 of <array 100 of <array 75 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t15      <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t16      <char> %ebp-42 ]
    #    -48(%ebp)   4  [ $t17      <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t5       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t6       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t7       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t8       <ptr(4) to <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>> %ebp-160 ]
    #   -161(%ebp)   1  [ $t9       <bool> %ebp-161 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 26624
    movl    $26624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 70188
    movl    $70188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     sub    t3 <- t2, 80284
    movl    $80284, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   4:     sub    t4 <- t3, 47637
    movl    $47637, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   5:     add    t5 <- t4, 87384
    movl    $87384, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #   6:     add    t6 <- t5, 4755
    movl    $4755, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #   7:     sub    t7 <- t6, 67167
    movl    $67167, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #   8:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    leal    v0, %eax                #  10:     &()    t8 <- v0
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  11:     param  3 <- t8
    pushl   %eax                   
    movl    $98, %eax               #  12:     param  2 <- 98
    pushl   %eax                   
    movl    $100, %eax              #  13:     if     100 <= 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #  14:     goto   3
l_test_2:
    movl    $1, %eax                #  16:     assign t9 <- 1
    movb    %al, -161(%ebp)        
    jmp     l_test_4                #  17:     goto   4
l_test_3:
    movl    $0, %eax                #  19:     assign t9 <- 0
    movb    %al, -161(%ebp)        
l_test_4:
    movzbl  -161(%ebp), %eax        #  21:     param  1 <- t9
    pushl   %eax                   
    movl    $98, %eax               #  22:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  23:     call   t10 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    leal    v3, %eax                #  24:     &()    t11 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  2 <- t11
    pushl   %eax                   
    leal    v2, %eax                #  26:     &()    t12 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     param  1 <- t12
    pushl   %eax                   
    movl    $98128, %eax            #  28:     mul    t13 <- 98128, 63031
    movl    $63031, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $43515, %eax            #  29:     add    t14 <- 43515, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     if     t14 < 96057 goto 7
    movl    $96057, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7               
    jmp     l_test_8                #  31:     goto   8
l_test_7:
    movl    $1, %eax                #  33:     assign t15 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_9                #  34:     goto   9
l_test_8:
    movl    $0, %eax                #  36:     assign t15 <- 0
    movb    %al, -41(%ebp)         
l_test_9:
    movzbl  -41(%ebp), %eax         #  38:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  39:     call   t16 <- f0
    addl    $12, %esp              
    movb    %al, -42(%ebp)         
    leal    v0, %eax                #  40:     &()    t17 <- v0
    movl    %eax, -48(%ebp)        
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  42:     &()    t18 <- v0
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  44:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $39653, %eax            #  45:     mul    t20 <- 39653, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  46:     add    t21 <- t20, 44223
    movl    $44223, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  48:     &()    t22 <- v0
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  49:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  50:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  51:     mul    t24 <- t21, t23
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  52:     add    t25 <- t24, 65099
    movl    $65099, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  54:     &()    t26 <- v0
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  55:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  56:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  57:     mul    t28 <- t25, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  58:     add    t29 <- t28, 16446
    movl    $16446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  59:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  60:     &()    t30 <- v0
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  61:     param  0 <- t30
    pushl   %eax                   
    call    DIM                     #  62:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -100(%ebp), %eax        #  63:     mul    t32 <- t29, t31
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  64:     add    t33 <- t32, 93749
    movl    $93749, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  65:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    leal    v0, %eax                #  66:     &()    t35 <- v0
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  67:     param  0 <- t35
    pushl   %eax                   
    call    DOFS                    #  68:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -124(%ebp), %eax        #  69:     add    t37 <- t34, t36
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -48(%ebp), %eax         #  70:     add    t38 <- t17, t37
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movzbl  -42(%ebp), %eax         #  71:     assign @t38 <- t16
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $152, %esp              # remove locals
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
v0:                                 # <array 1 of <array 58 of <array 39 of <array 60 of <array 17 of <char>>>>>>
    .long    5
    .long    1
    .long   58
    .long   39
    .long   60
    .long   17
    .skip 2307240
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 22 of <array 38 of <array 71 of <array 100 of <array 75 of <bool>>>>>>
    .long    5
    .long   22
    .long   38
    .long   71
    .long  100
    .long   75
    .skip 445170000
v3:                                 # <array 22 of <array 13 of <array 15 of <array 53 of <array 12 of <char>>>>>>
    .long    5
    .long   22
    .long   13
    .long   15
    .long   53
    .long   12
    .skip 2728440








    # end of global data section
    #-----------------------------------------

    .end
##################################################

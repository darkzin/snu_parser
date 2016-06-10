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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 7 of <array 6 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   3:     if     98 > t6 goto 3
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3                 
    jmp     l_f0_4                  #   4:     goto   4
l_f0_3:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_5                  #   7:     goto   5
l_f0_4:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_5:
    movzbl  -14(%ebp), %eax         #  11:     assign v1 <- t7
    movb    %al, -15(%ebp)         

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
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 6 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 7 of <array 2 of <array 10 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 4 of <array 6 of <array 8 of <char>>>>>>> %ebp+16 ]
    #    -89(%ebp)   1  [ $v3       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98056, %eax            #   0:     mul    t6 <- 98056, 64984
    movl    $64984, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   1:     div    t7 <- t6, 61506
    movl    $61506, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     sub    t8 <- t7, 89263
    movl    $89263, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     return t8
    jmp     l_f1_exit              
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $38144, %eax            #   7:     mul    t10 <- 38144, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t11 <- t10, 2248
    movl    $2248, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  12:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     add    t14 <- t13, 18047
    movl    $18047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  17:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     add    t17 <- t16, 97133
    movl    $97133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t20 <- t19, 13732
    movl    $13732, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $98, %eax               #  29:     assign @t24 <- 98
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  30:     assign v3 <- 99
    movb    %al, -89(%ebp)         

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 8 of <array 6 of <array 8 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v2       <char> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_4_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
l_f2_3:
l_f2_7_while_cond:
    jmp     l_f2_8_while_body       #   5:     goto   8_while_body
    jmp     l_f2_8_while_body       #   6:     goto   8_while_body
    jmp     l_f2_8_while_body       #   7:     goto   8_while_body
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
    jmp     l_f2_0                  #  10:     goto   0
l_f2_0:
    movl    $99, %eax               #  12:     assign v2 <- 99
    movb    %al, -97(%ebp)         
    movl    $97, %eax               #  13:     if     97 >= 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_15                
    jmp     l_f2_16                 #  14:     goto   16
l_f2_15:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_17                 #  17:     goto   17
l_f2_16:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -81(%ebp)         
l_f2_17:
    movl    $3192, %eax             #  21:     mul    t7 <- 3192, 35328
    movl    $35328, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  22:     mul    t8 <- t7, 54298
    movl    $54298, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  23:     mul    t9 <- t8, 76350
    movl    $76350, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  24:     mul    t10 <- t9, 63910
    movl    $63910, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  28:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t13 <- t12, 18682
    movl    $18682, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     add    t16 <- t15, 59912
    movl    $59912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  38:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  39:     add    t19 <- t18, 16668
    movl    $16668, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  41:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  42:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  43:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t22 <- t21, 82625
    movl    $82625, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  46:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  47:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  49:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -81(%ebp), %eax         #  50:     assign @t26 <- t6
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 8 of <array 6 of <array 8 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <bool> %ebp-24 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    jmp     l_test_3                #   4:     goto   3
l_test_3:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_5                #   7:     goto   5
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_5:
    movzbl  -21(%ebp), %eax         #  10:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  11:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
l_test_9_while_cond:
    jmp     l_test_13_if_false      #  15:     goto   13_if_false
    call    dummyCHARfunc           #  16:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    jmp     l_test_11               #  17:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_9_while_cond     #  20:     goto   9_while_cond
    movl    $99, %eax               #  21:     if     99 # 100 goto 16
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_16              
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_test_18               #  25:     goto   18
l_test_17:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -24(%ebp)         
l_test_18:
    movzbl  -24(%ebp), %eax         #  29:     assign v1 <- t5
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 3 of <array 8 of <array 6 of <array 8 of <array 10 of <bool>>>>>>
    .long    5
    .long    3
    .long    8
    .long    6
    .long    8
    .long   10
    .skip 11520
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

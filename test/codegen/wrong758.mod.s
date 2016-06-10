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
    #    -16(%ebp)   4  [ $t27      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t30      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t31      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t32      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t33      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t34      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t35      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t36      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t37      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t38      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t39      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t40      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t41      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t42      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t43      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t44      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t45      <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t46      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t47      <bool> %ebp-93 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -94(%ebp)   1  [ $v2       <char> %ebp-94 ]

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
    movl    $48673, %eax            #   0:     sub    t27 <- 48673, 60160
    movl    $60160, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t28 <- t27, 82193
    movl    $82193, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     mul    t30 <- t28, t29
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t31 <- t30, 39156
    movl    $39156, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t33 <- t31, t32
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t34 <- t33, 37313
    movl    $37313, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  15:     mul    t36 <- t34, t35
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     add    t37 <- t36, 56407
    movl    $56407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  20:     mul    t39 <- t37, t38
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     add    t40 <- t39, 94219
    movl    $94219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  22:     mul    t41 <- t40, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t42 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  25:     add    t43 <- t41, t42
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t44 <- v0, t43
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $98, %eax               #  27:     assign @t44 <- 98
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  28:     call   t45 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movl    $68477, %eax            #  29:     div    t46 <- 68477, 5424
    movl    $5424, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $79939, %eax            #  30:     if     79939 <= t46 goto 3
    movl    -92(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_3                 
    jmp     l_f0_4                  #  31:     goto   4
l_f0_3:
    movl    $1, %eax                #  33:     assign t47 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f0_5                  #  34:     goto   5
l_f0_4:
    movl    $0, %eax                #  36:     assign t47 <- 0
    movb    %al, -93(%ebp)         
l_f0_5:
    movzbl  -93(%ebp), %eax         #  38:     assign v1 <- t47
    movb    %al, 12(%ebp)          

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
    #    -13(%ebp)   1  [ $t27      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t28      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 1 of <array 7 of <array 2 of <array 2 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_8_while_cond:
    movl    $12159, %eax            #   5:     if     12159 > 39906 goto 9_while_body
    movl    $39906, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #   6:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
l_f1_7:
    call    dummyCHARfunc           #  10:     call   t27 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_13_while_cond:
    movl    $10938, %eax            #  15:     if     10938 >= 98609 goto 14_while_body
    movl    $98609, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_while_body:
    movl    $97, %eax               #  18:     if     97 = 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  19:     goto   18_if_false
l_f1_17_if_true:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  22:     goto   20
    jmp     l_f1_21_while_cond      #  23:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_13_while_cond      #  28:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_25                 #  30:     goto   25
    jmp     l_f1_25                 #  31:     goto   25
    movl    $1, %eax                #  32:     assign t28 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_26                 #  33:     goto   26
l_f1_25:
    movl    $0, %eax                #  35:     assign t28 <- 0
    movb    %al, -14(%ebp)         
l_f1_26:
    movzbl  -14(%ebp), %eax         #  37:     return t28
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t27      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t30      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t31      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t32      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t33      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t34      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t35      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t36      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t37      <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t27 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $79844, %eax            #   1:     add    t28 <- 79844, 56092
    movl    $56092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $89823, %eax            #   2:     if     89823 < t28 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $100, %eax              #   6:     if     100 <= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_13_while_cond:
    movl    $80171, %eax            #  19:     sub    t29 <- 80171, 47084
    movl    $47084, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     sub    t30 <- t29, 62753
    movl    $62753, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     sub    t31 <- t30, 98298
    movl    $98298, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $81190, %eax            #  22:     mul    t32 <- 81190, 91245
    movl    $91245, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t33 <- t32, 35638
    movl    $35638, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t34 <- t33, 14205
    movl    $14205, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     div    t35 <- t34, 18725
    movl    $18725, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  26:     div    t36 <- t35, 12765
    movl    $12765, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     mul    t37 <- t36, 69529
    movl    $69529, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -32(%ebp), %eax         #  28:     if     t31 < t37 goto 14_while_body
    movl    -56(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_14_while_body     
    jmp     l_f2_12                 #  29:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  31:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t26      <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t3       <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>> %ebp-116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $100, %eax              #   4:     if     100 < 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
l_test_10_while_cond:
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    movl    $100, %eax              #  15:     assign v0 <- 100
    movb    %al, v0                
    call    dummyINTfunc            #  16:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $60694, %eax            #  17:     if     60694 <= 8563 goto 15
    movl    $8563, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_15              
    jmp     l_test_16               #  18:     goto   16
l_test_15:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_17               #  21:     goto   17
l_test_16:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_17:
    movzbl  -17(%ebp), %eax         #  25:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t2 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  28:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -90(%ebp)         
    jmp     l_test_1_while_cond     #  29:     goto   1_while_cond
l_test_0:
    leal    v1, %eax                #  31:     &()    t4 <- v1
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  33:     &()    t5 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  34:     param  0 <- t5
    pushl   %eax                   
    call    DIM                     #  35:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $2365, %eax             #  36:     mul    t7 <- 2365, t6
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  37:     add    t8 <- t7, 13989
    movl    $13989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  39:     &()    t9 <- v1
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  40:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  41:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -112(%ebp), %eax        #  42:     mul    t11 <- t8, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     add    t12 <- t11, 90269
    movl    $90269, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  45:     &()    t13 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  46:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  47:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  48:     mul    t15 <- t12, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  49:     add    t16 <- t15, 36004
    movl    $36004, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  51:     &()    t17 <- v1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  52:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  53:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  54:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  55:     add    t20 <- t19, 17521
    movl    $17521, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  56:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    v1, %eax                #  57:     &()    t22 <- v1
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  58:     param  0 <- t22
    pushl   %eax                   
    call    DOFS                    #  59:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  60:     add    t24 <- t21, t23
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -96(%ebp), %eax         #  61:     add    t25 <- t4, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $99, %eax               #  62:     assign @t25 <- 99
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $7005, %eax             #  63:     if     7005 > 10262 goto 24
    movl    $10262, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24              
    jmp     l_test_25               #  64:     goto   25
l_test_24:
    movl    $1, %eax                #  66:     assign t26 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_test_26               #  67:     goto   26
l_test_25:
    movl    $0, %eax                #  69:     assign t26 <- 0
    movb    %al, -89(%ebp)         
l_test_26:
    movzbl  -89(%ebp), %eax         #  71:     assign v2 <- t26
    movb    %al, v2                
    movl    $0, %eax                #  72:     assign v2 <- 0
    movb    %al, v2                
    movl    $3583, %eax             #  73:     if     3583 > 90766 goto 30_if_true
    movl    $90766, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_30_if_true      
    jmp     l_test_31_if_false      #  74:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  76:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_19               #  79:     goto   19
l_test_19:
l_test_34_while_cond:
    jmp     l_test_exit            
    jmp     l_test_34_while_cond    #  83:     goto   34_while_cond

l_test_exit:
    # epilogue
    addl    $104, %esp              # remove locals
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
    .align   4
v1:                                 # <array 8 of <array 3 of <array 5 of <array 8 of <array 10 of <char>>>>>>
    .long    5
    .long    8
    .long    3
    .long    5
    .long    8
    .long   10
    .skip 9600
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

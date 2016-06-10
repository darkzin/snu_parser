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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t21      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t3       <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 1 of <array 90 of <array 50 of <array 64 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp+12 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -56(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $79533, %eax            #   5:     mul    t5 <- 79533, t4
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   6:     add    t6 <- t5, 88120
    movl    $88120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  10:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  11:     add    t9 <- t8, 95989
    movl    $95989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  15:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t12 <- t11, 74283
    movl    $74283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 74825
    movl    $74825, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $17905, %eax            #  27:     assign @t19 <- 17905
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $27680, %eax            #  28:     assign v3 <- 27680
    movl    %eax, -92(%ebp)        
    call    ReadInt                 #  29:     call   t20 <- ReadInt
    movl    %eax, -60(%ebp)        
l_f0_9_while_cond:
    movl    $0, %eax                #  31:     if     0 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_8                  #  32:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  34:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_1                  #  36:     goto   1
l_f0_1:
    call    dummyCHARfunc           #  38:     call   t21 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  39:     return t21
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 63 of <array 17 of <array 12 of <array 22 of <char>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v3       <bool> %ebp-89 ]

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
    movl    $84392, %eax            #   0:     return 84392
    jmp     l_f1_exit              
l_f1_5_while_cond:
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_5_while_cond       #   3:     goto   5_while_cond
l_f1_4:
l_f1_8_while_cond:
    movl    $1, %eax                #   6:     if     1 # 0 goto 9_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_9_while_body      
    jmp     l_f1_7                  #   7:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_0:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $90429, %eax            #  14:     add    t3 <- 90429, 40363
    movl    $40363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  15:     sub    t4 <- t3, 90233
    movl    $90233, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  19:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  20:     add    t7 <- t6, 39235
    movl    $39235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  24:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  25:     add    t10 <- t9, 8916
    movl    $8916, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  29:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t13 <- t12, 75095
    movl    $75095, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t16 <- t15, 80680
    movl    $80680, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  38:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  40:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -53(%ebp), %eax         #  41:     assign @t20 <- t2
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $3874, %eax             #  42:     if     3874 > 47197 goto 13_if_true
    movl    $47197, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  43:     goto   14_if_false
l_f1_13_if_true:
l_f1_17_while_cond:
    movl    $0, %eax                #  46:     assign v3 <- 0
    movb    %al, -89(%ebp)         
    movl    $24990, %eax            #  47:     return 24990
    jmp     l_f1_exit              
    jmp     l_f1_17_while_cond      #  48:     goto   17_while_cond
    jmp     l_f1_12                 #  49:     goto   12
l_f1_14_if_false:
l_f1_12:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t27      <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t3       <ptr(4) to <array 92 of <array 1 of <array 90 of <array 50 of <array 64 of <int>>>>>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t4       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #   -105984140(%ebp)  105984024  [ $v2       <array 92 of <array 1 of <array 90 of <array 50 of <array 64 of <int>>>>>> %ebp-105984140 ]
    #   -151219048(%ebp)  45234906  [ $v3       <array 7 of <array 86 of <array 33 of <array 33 of <array 69 of <char>>>>>> %ebp-151219048 ]
    #   -151219049(%ebp)   1  [ $v4       <char> %ebp-151219049 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $151219040, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37804760, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-105984140(%ebp)     # local array 'v2': 5 dimensions
    movl    $92,-105984136(%ebp)    #   dimension 1: 92 elements
    movl    $1,-105984132(%ebp)     #   dimension 2: 1 elements
    movl    $90,-105984128(%ebp)    #   dimension 3: 90 elements
    movl    $50,-105984124(%ebp)    #   dimension 4: 50 elements
    movl    $64,-105984120(%ebp)    #   dimension 5: 64 elements
    movl    $5,-151219048(%ebp)     # local array 'v3': 5 dimensions
    movl    $7,-151219044(%ebp)     #   dimension 1: 7 elements
    movl    $86,-151219040(%ebp)    #   dimension 2: 86 elements
    movl    $33,-151219036(%ebp)    #   dimension 3: 33 elements
    movl    $33,-151219032(%ebp)    #   dimension 4: 33 elements
    movl    $69,-151219028(%ebp)    #   dimension 5: 69 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_0:
    leal    -151219048(%ebp), %eax  #   4:     &()    t2 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    leal    -105984140(%ebp), %eax  #   6:     &()    t3 <- v2
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   8:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #   9:     if     t4 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  10:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  12:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_11_if_false        #  15:     goto   11_if_false
    leal    -151219048(%ebp), %eax  #  16:     &()    t5 <- v3
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    leal    -151219048(%ebp), %eax  #  18:     &()    t6 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  19:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $81112, %eax            #  21:     mul    t8 <- 81112, t7
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  22:     add    t9 <- t8, 4703
    movl    $4703, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    leal    -151219048(%ebp), %eax  #  24:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  26:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -116(%ebp), %eax        #  27:     mul    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t13 <- t12, 4523
    movl    $4523, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    leal    -151219048(%ebp), %eax  #  30:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  32:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t17 <- t16, 91853
    movl    $91853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    leal    -151219048(%ebp), %eax  #  36:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  38:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  40:     add    t21 <- t20, 66267
    movl    $66267, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  41:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    leal    -151219048(%ebp), %eax  #  42:     &()    t23 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  43:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  44:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  45:     add    t25 <- t22, t24
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -100(%ebp), %eax        #  46:     add    t26 <- t5, t25
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $99, %eax               #  47:     assign @t26 <- 99
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  48:     call   t27 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #  49:     return t27
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  50:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $151219040, %esp        # remove locals
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
    jmp     l_test_exit            
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $23174, %eax            #   3:     sub    t0 <- 23174, 87483
    movl    $87483, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t1 <- t0, 10324
    movl    $10324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     assign v1 <- t1
    movl    %eax, v1               
    call    dummyProcedure          #   6:     call   dummyProcedure

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    movl    $27110, %eax            #   2:     add    t7 <- 27110, 40311
    movl    $40311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t8 <- t7, 99427
    movl    $99427, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     add    t9 <- t8, 50008
    movl    $50008, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     sub    t10 <- t9, 78957
    movl    $78957, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t11 <- t10, 80227
    movl    $80227, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t12 <- t11, 97010
    movl    $97010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     sub    t13 <- t12, 16629
    movl    $16629, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     sub    t14 <- t13, 72464
    movl    $72464, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     return t14
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <char> %ebp-66 ]
    #    -67(%ebp)   1  [ $t25      <bool> %ebp-67 ]
    #    -68(%ebp)   1  [ $t5       <char> %ebp-68 ]
    #    -69(%ebp)   1  [ $t6       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 2 of <array 10 of <array 2 of <char>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v1       <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $v2       <bool> %ebp-86 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -68(%ebp)         
    movzbl  -68(%ebp), %eax         #   1:     return t5
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   6:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $67178, %eax            #   7:     mul    t8 <- 67178, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   8:     add    t9 <- t8, 12171
    movl    $12171, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  12:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t12 <- t11, 64740
    movl    $64740, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t15 <- t14, 95524
    movl    $95524, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     add    t18 <- t17, 28540
    movl    $28540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  27:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $98, %eax               #  29:     assign @t22 <- 98
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_2_while_cond       #  30:     goto   2_while_cond
    call    dummyCHARfunc           #  31:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    call    dummyCHARfunc           #  32:     call   t24 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movzbl  -65(%ebp), %eax         #  33:     if     t23 # t24 goto 7
    movzbl  -66(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_7                 
    jmp     l_f1_8                  #  34:     goto   8
l_f1_7:
    movl    $1, %eax                #  36:     assign t25 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f1_9                  #  37:     goto   9
l_f1_8:
    movl    $0, %eax                #  39:     assign t25 <- 0
    movb    %al, -67(%ebp)         
l_f1_9:
    movzbl  -67(%ebp), %eax         #  41:     assign v2 <- t25
    movb    %al, -86(%ebp)         

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 7 of <array 7 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 4 of <array 4 of <array 3 of <array 9 of <int>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $97, %eax               #   2:     return 97
    jmp     l_f2_exit              
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #   7:     call   t5 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $7375, %eax             #   8:     div    t6 <- 7375, 30400
    movl    $30400, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  12:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     add    t9 <- t8, 11528
    movl    $11528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  17:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 75270
    movl    $75270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 58884
    movl    $58884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     add    t18 <- t17, 18026
    movl    $18026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  31:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  32:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  33:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -68(%ebp), %eax         #  34:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_9_while_cond:
    movl    $100, %eax              #  36:     return 100
    jmp     l_f2_exit              
    movl    $97, %eax               #  37:     return 97
    jmp     l_f2_exit              
    movl    $99, %eax               #  38:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_9_while_cond       #  39:     goto   9_while_cond

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    jmp     l_test_exit            
    movl    $99, %eax               #   1:     if     99 < 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $0, %eax                #   4:     assign v0 <- 0
    movb    %al, v0                
l_test_7_while_cond:
    movl    $89030, %eax            #   6:     if     89030 = 62585 goto 8_while_body
    movl    $62585, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    call    dummyBOOLfunc           #   9:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  10:     if     99 > 99 goto 12
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_12              
    jmp     l_test_13               #  11:     goto   13
l_test_12:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_14               #  14:     goto   14
l_test_13:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_14:
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
    movb    %al, v0                
    leal    _str_1, %eax            #  19:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_7_while_cond     #  22:     goto   7_while_cond
l_test_6:
    jmp     l_test_1                #  24:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $21702, %eax            #  27:     if     21702 > 84171 goto 18_if_true
    movl    $84171, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  28:     goto   19_if_false
l_test_18_if_true:
    movl    $99, %eax               #  30:     param  1 <- 99
    pushl   %eax                   
    movl    $98, %eax               #  31:     if     98 < 97 goto 22
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22              
    jmp     l_test_23               #  32:     goto   23
l_test_22:
    movl    $1, %eax                #  34:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_24               #  35:     goto   24
l_test_23:
    movl    $0, %eax                #  37:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_24:
    movzbl  -21(%ebp), %eax         #  39:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  40:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
l_test_27_while_cond:
    movl    $100, %eax              #  42:     if     100 > 98 goto 28_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_28_while_body   
    jmp     l_test_26               #  43:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  45:     goto   27_while_cond
l_test_26:
    jmp     l_test_exit            
    jmp     l_test_17               #  48:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 74 of <array 46 of <array 87 of <array 97 of <array 17 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 39 of <array 24 of <array 6 of <array 39 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $55704, %eax            #   0:     if     55704 > 59600 goto 1
    movl    $59600, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $81874, %eax            #  11:     mul    t12 <- 81874, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 77964
    movl    $77964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $27938, %eax            #  17:     sub    t16 <- 27938, 50580
    movl    $50580, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $18680, %eax            #  23:     mul    t20 <- 18680, 57572
    movl    $57572, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  28:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     add    t24 <- t23, 11951
    movl    $11951, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  30:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  33:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t28 <- v1, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -13(%ebp), %eax         #  35:     assign @t28 <- t10
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    call    WriteLn                 #  36:     call   WriteLn
    jmp     l_f0_10_if_true         #  37:     goto   10_if_true
    jmp     l_f0_11_if_false        #  38:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  40:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_6                  #  43:     goto   6
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -89(%ebp)   1  [ $t29      <char> %ebp-89 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 14 of <array 85 of <array 35 of <array 18 of <bool>>>>>>> %ebp+8 ]
    #    -90(%ebp)   1  [ $v1       <bool> %ebp-90 ]
    #    -91(%ebp)   1  [ $v2       <char> %ebp-91 ]

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
    jmp     l_f1_1                  #   0:     goto   1
l_f1_1:
    movl    $1, %eax                #   2:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movl    $52075, %eax            #   6:     sub    t11 <- 52075, 63277
    movl    $63277, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t12 <- t11, 51581
    movl    $51581, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t15 <- t14, 29699
    movl    $29699, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  16:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     add    t18 <- t17, 67429
    movl    $67429, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t21 <- t20, 91838
    movl    $91838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     add    t24 <- t23, 52041
    movl    $52041, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  28:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  31:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t28 <- v0, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -13(%ebp), %eax         #  33:     assign @t28 <- t10
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  34:     assign v2 <- 97
    movb    %al, -91(%ebp)         
    call    dummyCHARfunc           #  35:     call   t29 <- dummyCHARfunc
    movb    %al, -89(%ebp)         
    movl    $98, %eax               #  36:     if     98 >= t29 goto 7_if_true
    movzbl  -89(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  37:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  39:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t10
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #   3:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 12 of <array 39 of <array 24 of <array 6 of <array 39 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 74 of <array 46 of <array 87 of <array 97 of <array 17 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_8                #   8:     goto   8
l_test_8:
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #  11:     goto   10
    movl    $0, %eax                #  12:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movl    $1, %eax                #  14:     if     1 # t1 goto 6_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #  15:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  17:     goto   5_while_cond
l_test_4:
    jmp     l_test_17_if_true       #  19:     goto   17_if_true
l_test_17_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #  22:     if     99 >= 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_22_if_true      
    jmp     l_test_23_if_false      #  23:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  25:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_16               #  28:     goto   16
l_test_16:
    movl    $0, %eax                #  30:     param  3 <- 0
    pushl   %eax                   
    movl    $0, %eax                #  31:     param  2 <- 0
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  34:     &()    t3 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  36:     call   t4 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #  37:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     add    t6 <- t5, 45873
    movl    $45873, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t7 <- t6, 36419
    movl    $36419, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     sub    t8 <- t7, 79862
    movl    $79862, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  41:     sub    t9 <- t8, 17820
    movl    $17820, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #  43:     call   WriteInt
    addl    $4, %esp               
    movl    $73004, %eax            #  44:     if     73004 >= 64991 goto 28_if_true
    movl    $64991, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_28_if_true      
    jmp     l_test_29_if_false      #  45:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_exit            
    jmp     l_test_27               #  48:     goto   27
l_test_29_if_false:
l_test_27:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <array 74 of <array 46 of <array 87 of <array 97 of <array 17 of <char>>>>>>
    .long    5
    .long   74
    .long   46
    .long   87
    .long   97
    .long   17
    .skip 488348052
v1:                                 # <array 12 of <array 39 of <array 24 of <array 6 of <array 39 of <bool>>>>>>
    .long    5
    .long   12
    .long   39
    .long   24
    .long    6
    .long   39
    .skip 2628288








    # end of global data section
    #-----------------------------------------

    .end
##################################################

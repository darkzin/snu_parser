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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 92 of <array 92 of <array 4 of <array 44 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $99, %eax               #   0:     assign v4 <- 99
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_4_if_false         #   2:     goto   4_if_false
    movl    $99, %eax               #   3:     if     99 <= 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  10:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t5       <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t6       <char> %ebp-86 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t9       <bool> %ebp-97 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 63 of <array 35 of <array 62 of <array 88 of <array 73 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v6       <bool> %ebp+20 ]
    #    -98(%ebp)   1  [ $v7       <char> %ebp-98 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     sub    t4 <- t3, 94995
    movl    $94995, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $90288, %eax            #   2:     if     90288 < t4 goto 1
    movl    -84(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -85(%ebp)         
l_f1_3:
    movzbl  -85(%ebp), %eax         #  10:     return t5
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    movzbl  -86(%ebp), %eax         #  12:     assign v7 <- t6
    movb    %al, -98(%ebp)         
    movl    $23694, %eax            #  13:     add    t7 <- 23694, 65271
    movl    $65271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $22555, %eax            #  14:     add    t8 <- 22555, 62837
    movl    $62837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  15:     if     t7 > t8 goto 7
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  16:     goto   8
l_f1_7:
    movl    $1, %eax                #  18:     assign t9 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f1_9                  #  19:     goto   9
l_f1_8:
    movl    $0, %eax                #  21:     assign t9 <- 0
    movb    %al, -97(%ebp)         
l_f1_9:
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $7384, %eax             #  26:     mul    t11 <- 7384, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     add    t12 <- t11, 81935
    movl    $81935, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  30:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  31:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t15 <- t14, 79722
    movl    $79722, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  36:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t18 <- t17, 93405
    movl    $93405, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  40:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  41:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  42:     add    t21 <- t20, 42203
    movl    $42203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  43:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  44:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  45:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  46:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  47:     add    t25 <- v5, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -97(%ebp), %eax         #  48:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 11 of <array 92 of <array 92 of <array 4 of <array 44 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 93 of <array 45 of <array 9 of <array 1 of <array 43 of <char>>>>>>> %ebp+20 ]
    #   -65545272(%ebp)  65545240  [ $v7       <array 11 of <array 92 of <array 92 of <array 4 of <array 44 of <int>>>>>> %ebp-65545272 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $65545260, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $16386315, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-65545272(%ebp)      # local array 'v7': 5 dimensions
    movl    $11,-65545268(%ebp)     #   dimension 1: 11 elements
    movl    $92,-65545264(%ebp)     #   dimension 2: 92 elements
    movl    $92,-65545260(%ebp)     #   dimension 3: 92 elements
    movl    $4,-65545256(%ebp)      #   dimension 4: 4 elements
    movl    $44,-65545252(%ebp)     #   dimension 5: 44 elements

    # function body
l_f2_1_while_cond:
    movl    $58598, %eax            #   1:     sub    t3 <- 58598, 98890
    movl    $98890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 53272
    movl    $53272, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t5 <- t4, 48170
    movl    $48170, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t5 <= 49675 goto 2_while_body
    movl    $49675, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
l_f2_6_while_cond:
    leal    -65545272(%ebp), %eax   #  11:     &()    t6 <- v7
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  13:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #  14:     if     99 < t7 goto 7_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $65545260, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 11 of <array 92 of <array 92 of <array 4 of <array 44 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $92206, %eax            #   1:     if     92206 <= 9052 goto 4
    movl    $9052, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_4               
    jmp     l_test_5                #   2:     goto   5
l_test_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  14:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  17:     goto   14_while_cond
    movl    $36282, %eax            #  18:     assign v2 <- 36282
    movl    %eax, v2               
    jmp     l_test_9                #  19:     goto   9
l_test_9:
    jmp     l_test_exit            
    leal    v3, %eax                #  22:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  24:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  25:     assign v1 <- t2
    movb    %al, v1                
    movl    $99, %eax               #  26:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4
v3:                                 # <array 11 of <array 92 of <array 92 of <array 4 of <array 44 of <int>>>>>>
    .long    5
    .long   11
    .long   92
    .long   92
    .long    4
    .long   44
    .skip 65545216








    # end of global data section
    #-----------------------------------------

    .end
##################################################

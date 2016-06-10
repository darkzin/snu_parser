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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 12 of <array 50 of <array 15 of <array 8 of <array 26 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 20 of <array 100 of <array 15 of <array 73 of <array 36 of <bool>>>>>>> %ebp+20 ]
    #    -30(%ebp)   1  [ $v6       <bool> %ebp-30 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t6 <- t5, 85716
    movl    $85716, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t6 > 25920 goto 1
    movl    $25920, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v6 <- t7
    movb    %al, -30(%ebp)         
    call    ReadInt                 #  11:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f0_7_while_cond:
    call    dummyCHARfunc           #  13:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  14:     if     t9 < 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_8_while_body      
    jmp     l_f0_6                  #  15:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  17:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t25      <char> %ebp-67 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 50 of <array 88 of <array 99 of <array 96 of <array 47 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 49 of <array 54 of <array 22 of <array 62 of <array 2 of <char>>>>>>> %ebp+20 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   1:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #   2:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $4738, %eax             #   3:     mul    t6 <- 4738, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $85683, %eax            #   4:     sub    t7 <- 85683, 73175
    movl    $73175, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   5:     add    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #   8:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #   9:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t11 <- t10, 36523
    movl    $36523, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  13:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t14 <- t13, 861
    movl    $861, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  18:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $92448, %eax            #  20:     add    t17 <- 92448, 7571
    movl    $7571, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  23:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  26:     add    t22 <- v5, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  27:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  28:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movl    $100, %eax              #  29:     if     100 = t23 goto 2
    movzbl  -65(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #  30:     goto   3
l_f1_2:
    movl    $1, %eax                #  32:     assign t24 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f1_4                  #  33:     goto   4
l_f1_3:
    movl    $0, %eax                #  35:     assign t24 <- 0
    movb    %al, -66(%ebp)         
l_f1_4:
    movzbl  -66(%ebp), %eax         #  37:     return t24
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  38:     call   t25 <- dummyCHARfunc
    movb    %al, -67(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 49 of <array 54 of <array 22 of <array 62 of <array 2 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <ptr(4) to <array 50 of <array 88 of <array 99 of <array 96 of <array 47 of <bool>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t7       <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t8       <bool> %ebp-46 ]
    #    -47(%ebp)   1  [ $t9       <bool> %ebp-47 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 43 of <array 93 of <array 93 of <array 25 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #   -1965427272(%ebp)  1965427224  [ $v4       <array 50 of <array 88 of <array 99 of <array 96 of <array 47 of <bool>>>>>> %ebp-1965427272 ]
    #   -1972645584(%ebp)  7218312  [ $v5       <array 49 of <array 54 of <array 22 of <array 62 of <array 2 of <char>>>>>> %ebp-1972645584 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1972645572, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $493161393, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1965427272(%ebp)    # local array 'v4': 5 dimensions
    movl    $50,-1965427268(%ebp)   #   dimension 1: 50 elements
    movl    $88,-1965427264(%ebp)   #   dimension 2: 88 elements
    movl    $99,-1965427260(%ebp)   #   dimension 3: 99 elements
    movl    $96,-1965427256(%ebp)   #   dimension 4: 96 elements
    movl    $47,-1965427252(%ebp)   #   dimension 5: 47 elements
    movl    $5,-1972645584(%ebp)    # local array 'v5': 5 dimensions
    movl    $49,-1972645580(%ebp)   #   dimension 1: 49 elements
    movl    $54,-1972645576(%ebp)   #   dimension 2: 54 elements
    movl    $22,-1972645572(%ebp)   #   dimension 3: 22 elements
    movl    $62,-1972645568(%ebp)   #   dimension 4: 62 elements
    movl    $2,-1972645564(%ebp)    #   dimension 5: 2 elements

    # function body
    leal    -1972645584(%ebp), %eax #   0:     &()    t5 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     param  3 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   2:     param  2 <- 99
    pushl   %eax                   
    leal    -1965427272(%ebp), %eax #   3:     &()    t6 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     param  1 <- t6
    pushl   %eax                   
    jmp     l_f2_1                  #   5:     goto   1
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -45(%ebp)         
l_f2_3:
    movzbl  -45(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  14:     call   t8 <- f1
    addl    $16, %esp              
    movb    %al, -46(%ebp)         
    call    dummyBOOLfunc           #  15:     call   t9 <- dummyBOOLfunc
    movb    %al, -47(%ebp)         
    movzbl  -47(%ebp), %eax         #  16:     if     t9 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_7                  #  17:     goto   7
l_f2_9:
    movl    $1, %eax                #  19:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #  20:     goto   8
l_f2_7:
    movl    $0, %eax                #  22:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  24:     return t10
    jmp     l_f2_exit              
    movl    $52605, %eax            #  25:     div    t11 <- 52605, 59612
    movl    $59612, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     div    t12 <- t11, 22074
    movl    $22074, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     add    t13 <- t12, 21576
    movl    $21576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     sub    t14 <- t13, 94463
    movl    $94463, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $12141, %eax            #  29:     if     12141 >= t14 goto 11
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_11                
    jmp     l_f2_12                 #  30:     goto   12
l_f2_11:
    movl    $1, %eax                #  32:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_13                 #  33:     goto   13
l_f2_12:
    movl    $0, %eax                #  35:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f2_13:
    movzbl  -33(%ebp), %eax         #  37:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1972645572, %esp       # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 20 of <array 100 of <array 15 of <array 73 of <array 36 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 12 of <array 50 of <array 15 of <array 8 of <array 26 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    movl    $100, %eax              #   2:     if     100 > 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   3:     goto   8
l_test_7:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #   6:     goto   9
l_test_8:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_9:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
    call    dummyBOOLfunc           #  11:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98, %eax               #  15:     assign v1 <- 98
    movb    %al, v1                
    movl    $99, %eax               #  16:     assign v1 <- 99
    movb    %al, v1                
    leal    v3, %eax                #  17:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  3 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  19:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     param  2 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  21:     param  1 <- 97
    pushl   %eax                   
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  23:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  24:     call   f0
    addl    $16, %esp              
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 12 of <array 50 of <array 15 of <array 8 of <array 26 of <char>>>>>>
    .long    5
    .long   12
    .long   50
    .long   15
    .long    8
    .long   26
    .skip 1872000
v3:                                 # <array 20 of <array 100 of <array 15 of <array 73 of <array 36 of <bool>>>>>>
    .long    5
    .long   20
    .long  100
    .long   15
    .long   73
    .long   36
    .skip 78840000








    # end of global data section
    #-----------------------------------------

    .end
##################################################

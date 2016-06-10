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
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]

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
    movl    $90349, %eax            #   0:     if     90349 < 31332 goto 1_if_true
    movl    $31332, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $88999, %eax            #   3:     if     88999 > 2480 goto 5_if_true
    movl    $2480, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    ReadInt                 #   9:     call   t6 <- ReadInt
    movl    %eax, -72(%ebp)        
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    jmp     l_f0_11_while_body      #  14:     goto   11_while_body
    jmp     l_f0_9                  #  15:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  17:     goto   10_while_cond
l_f0_9:
    movl    $67314, %eax            #  19:     sub    t7 <- 67314, 37458
    movl    $37458, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  23:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  24:     add    t10 <- t9, 48933
    movl    $48933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  28:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t13 <- t12, 99158
    movl    $99158, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     add    t16 <- t15, 41745
    movl    $41745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  38:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  39:     add    t19 <- t18, 76904
    movl    $76904, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  42:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  43:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $95149, %eax            #  45:     assign @t23 <- 95149
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 77 of <array 51 of <array 60 of <array 31 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 44 of <array 42 of <array 18 of <array 24 of <char>>>>>>> %ebp+12 ]
    #   -6412088(%ebp)  6412056  [ $v2       <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>> %ebp-6412088 ]
    #   -1751713712(%ebp)  1745301624  [ $v3       <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>> %ebp-1751713712 ]
    #   -1760035136(%ebp)  8321424  [ $v4       <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>> %ebp-1760035136 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1760035124, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $440008781, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6412088(%ebp)       # local array 'v2': 5 dimensions
    movl    $11,-6412084(%ebp)      #   dimension 1: 11 elements
    movl    $88,-6412080(%ebp)      #   dimension 2: 88 elements
    movl    $92,-6412076(%ebp)      #   dimension 3: 92 elements
    movl    $2,-6412072(%ebp)       #   dimension 4: 2 elements
    movl    $9,-6412068(%ebp)       #   dimension 5: 9 elements
    movl    $5,-1751713712(%ebp)    # local array 'v3': 5 dimensions
    movl    $85,-1751713708(%ebp)   #   dimension 1: 85 elements
    movl    $90,-1751713704(%ebp)   #   dimension 2: 90 elements
    movl    $28,-1751713700(%ebp)   #   dimension 3: 28 elements
    movl    $97,-1751713696(%ebp)   #   dimension 4: 97 elements
    movl    $84,-1751713692(%ebp)   #   dimension 5: 84 elements
    movl    $5,-1760035136(%ebp)    # local array 'v4': 5 dimensions
    movl    $15,-1760035132(%ebp)   #   dimension 1: 15 elements
    movl    $10,-1760035128(%ebp)   #   dimension 2: 10 elements
    movl    $3,-1760035124(%ebp)    #   dimension 3: 3 elements
    movl    $67,-1760035120(%ebp)   #   dimension 4: 67 elements
    movl    $69,-1760035116(%ebp)   #   dimension 5: 69 elements

    # function body
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   2:     if     t6 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    leal    -1760035136(%ebp), %eax #   7:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  3 <- t7
    pushl   %eax                   
    leal    -1751713712(%ebp), %eax #   9:     &()    t8 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  2 <- t8
    pushl   %eax                   
    movl    $99, %eax               #  11:     param  1 <- 99
    pushl   %eax                   
    leal    -6412088(%ebp), %eax    #  12:     &()    t9 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  14:     call   t10 <- f0
    addl    $16, %esp              
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #  15:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_5                  #  16:     goto   5
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $1760035124, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $v0       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $v1       <bool> %ebp-49 ]
    #   -6412108(%ebp)  6412056  [ $v2       <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>> %ebp-6412108 ]
    #   -1751713732(%ebp)  1745301624  [ $v3       <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>> %ebp-1751713732 ]
    #   -1760035156(%ebp)  8321424  [ $v4       <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>> %ebp-1760035156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1760035144, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $440008786, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6412108(%ebp)       # local array 'v2': 5 dimensions
    movl    $11,-6412104(%ebp)      #   dimension 1: 11 elements
    movl    $88,-6412100(%ebp)      #   dimension 2: 88 elements
    movl    $92,-6412096(%ebp)      #   dimension 3: 92 elements
    movl    $2,-6412092(%ebp)       #   dimension 4: 2 elements
    movl    $9,-6412088(%ebp)       #   dimension 5: 9 elements
    movl    $5,-1751713732(%ebp)    # local array 'v3': 5 dimensions
    movl    $85,-1751713728(%ebp)   #   dimension 1: 85 elements
    movl    $90,-1751713724(%ebp)   #   dimension 2: 90 elements
    movl    $28,-1751713720(%ebp)   #   dimension 3: 28 elements
    movl    $97,-1751713716(%ebp)   #   dimension 4: 97 elements
    movl    $84,-1751713712(%ebp)   #   dimension 5: 84 elements
    movl    $5,-1760035156(%ebp)    # local array 'v4': 5 dimensions
    movl    $15,-1760035152(%ebp)   #   dimension 1: 15 elements
    movl    $10,-1760035148(%ebp)   #   dimension 2: 10 elements
    movl    $3,-1760035144(%ebp)    #   dimension 3: 3 elements
    movl    $67,-1760035140(%ebp)   #   dimension 4: 67 elements
    movl    $69,-1760035136(%ebp)   #   dimension 5: 69 elements

    # function body
    movl    $81571, %eax            #   0:     assign v0 <- 81571
    movl    %eax, -48(%ebp)        
    jmp     l_f2_6_if_false         #   1:     goto   6_if_false
    jmp     l_f2_4                  #   2:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_0:
    movl    $35196, %eax            #   7:     sub    t6 <- 35196, 33449
    movl    $33449, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     sub    t7 <- t6, 91934
    movl    $91934, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     add    t8 <- t7, 10641
    movl    $10641, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $95915, %eax            #  10:     if     95915 >= t8 goto 8
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_8                 
    jmp     l_f2_9                  #  11:     goto   9
l_f2_8:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_10                 #  14:     goto   10
l_f2_9:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f2_10:
    movzbl  -41(%ebp), %eax         #  18:     assign v1 <- t9
    movb    %al, -49(%ebp)         
    leal    -1760035156(%ebp), %eax #  19:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  3 <- t10
    pushl   %eax                   
    leal    -1751713732(%ebp), %eax #  21:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  2 <- t11
    pushl   %eax                   
    movl    $100, %eax              #  23:     param  1 <- 100
    pushl   %eax                   
    leal    -6412108(%ebp), %eax    #  24:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  26:     call   t13 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     assign v0 <- t13
    movl    %eax, -48(%ebp)        

l_f2_exit:
    # epilogue
    addl    $1760035144, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    jmp     l_test_0                #   3:     goto   0
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $16852, %eax            #   6:     add    t0 <- 16852, 82700
    movl    $82700, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     assign v0 <- t0
    movl    %eax, v0               
l_test_8_while_cond:
    jmp     l_test_7                #   9:     goto   7
    leal    v3, %eax                #  10:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  3 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  12:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  14:     param  1 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  17:     call   t4 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    movl    $40251, %eax            #  18:     assign v0 <- 40251
    movl    %eax, v0               
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
    jmp     l_test_12               #  20:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_8_while_cond     #  23:     goto   8_while_cond
l_test_7:
    call    dummyBOOLfunc           #  25:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  26:     assign v4 <- t5
    movb    %al, v4                

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <array 11 of <array 88 of <array 92 of <array 2 of <array 9 of <int>>>>>>
    .long    5
    .long   11
    .long   88
    .long   92
    .long    2
    .long    9
    .skip 6412032
v2:                                 # <array 85 of <array 90 of <array 28 of <array 97 of <array 84 of <char>>>>>>
    .long    5
    .long   85
    .long   90
    .long   28
    .long   97
    .long   84
    .skip 1745301600
v3:                                 # <array 15 of <array 10 of <array 3 of <array 67 of <array 69 of <int>>>>>>
    .long    5
    .long   15
    .long   10
    .long    3
    .long   67
    .long   69
    .skip 8321400
v4:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

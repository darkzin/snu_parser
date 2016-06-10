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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 6 of <array 6 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 5 of <array 6 of <array 6 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 6 of <array 1 of <array 9 of <array 1 of <int>>>>>>> %ebp+16 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #   1:     call   t8 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_f0_6_while_cond:
    jmp     l_f0_5                  #   3:     goto   5
    jmp     l_f0_6_while_cond       #   4:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    jmp     l_f0_8                  #   7:     goto   8
    jmp     l_f0_9_while_cond       #   8:     goto   9_while_cond
l_f0_8:
    call    dummyBOOLfunc           #  10:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f0_14_if_false        #  11:     goto   14_if_false
    jmp     l_f0_12                 #  12:     goto   12
l_f0_14_if_false:
l_f0_12:
    call    dummyCHARfunc           #  15:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1                  #  16:     goto   1
l_f0_1:
    call    dummyINTfunc            #  18:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     assign v4 <- t11
    movl    %eax, -36(%ebp)        

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t25      <bool> %ebp-67 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 10 of <array 8 of <array 4 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 5 of <array 9 of <array 4 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 5 of <array 10 of <array 4 of <array 3 of <char>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $98277, %eax            #   1:     if     98277 > 66500 goto 2_while_body
    movl    $66500, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   5:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   6:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $69105, %eax            #   7:     mul    t8 <- 69105, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   8:     add    t9 <- t8, 74515
    movl    $74515, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  10:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  11:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  12:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t12 <- t11, 85457
    movl    $85457, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  16:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t15 <- t14, 70738
    movl    $70738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  21:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     add    t18 <- t17, 88735
    movl    $88735, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  25:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  26:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  27:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  28:     add    t22 <- v4, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $98, %eax               #  29:     assign @t22 <- 98
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1_while_cond       #  30:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $97, %eax               #  33:     if     97 > 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  34:     goto   5
l_f1_7_while_body:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  37:     goto   9
    jmp     l_f1_10_while_cond      #  38:     goto   10_while_cond
l_f1_9:
    movl    $51209, %eax            #  40:     if     51209 # 23795 goto 13
    movl    $23795, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  41:     goto   14
l_f1_13:
    movl    $1, %eax                #  43:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_15                 #  44:     goto   15
l_f1_14:
    movl    $0, %eax                #  46:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f1_15:
    movzbl  -65(%ebp), %eax         #  48:     return t23
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  49:     call   t24 <- dummyBOOLfunc
    movb    %al, -66(%ebp)         
    jmp     l_f1_6_while_cond       #  50:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_20_if_false        #  52:     goto   20_if_false
l_f1_22_while_cond:
    movl    $59630, %eax            #  54:     if     59630 < 19468 goto 23_while_body
    movl    $19468, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_23_while_body     
    jmp     l_f1_21                 #  55:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  57:     goto   22_while_cond
l_f1_21:
    call    dummyBOOLfunc           #  59:     call   t25 <- dummyBOOLfunc
    movb    %al, -67(%ebp)         
    jmp     l_f1_18                 #  60:     goto   18
l_f1_20_if_false:
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 6 of <array 6 of <array 1 of <array 9 of <array 1 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 1 of <array 5 of <array 6 of <array 6 of <array 1 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 9 of <array 6 of <array 6 of <array 6 of <array 4 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -31172(%ebp)  31128  [ $v3       <array 9 of <array 6 of <array 6 of <array 6 of <array 4 of <int>>>>>> %ebp-31172 ]
    #   -31916(%ebp)  744  [ $v4       <array 1 of <array 5 of <array 6 of <array 6 of <array 1 of <int>>>>>> %ebp-31916 ]
    #   -33236(%ebp)  1320  [ $v5       <array 6 of <array 6 of <array 1 of <array 9 of <array 1 of <int>>>>>> %ebp-33236 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $33224, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8306, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-31172(%ebp)         # local array 'v3': 5 dimensions
    movl    $9,-31168(%ebp)         #   dimension 1: 9 elements
    movl    $6,-31164(%ebp)         #   dimension 2: 6 elements
    movl    $6,-31160(%ebp)         #   dimension 3: 6 elements
    movl    $6,-31156(%ebp)         #   dimension 4: 6 elements
    movl    $4,-31152(%ebp)         #   dimension 5: 4 elements
    movl    $5,-31916(%ebp)         # local array 'v4': 5 dimensions
    movl    $1,-31912(%ebp)         #   dimension 1: 1 elements
    movl    $5,-31908(%ebp)         #   dimension 2: 5 elements
    movl    $6,-31904(%ebp)         #   dimension 3: 6 elements
    movl    $6,-31900(%ebp)         #   dimension 4: 6 elements
    movl    $1,-31896(%ebp)         #   dimension 5: 1 elements
    movl    $5,-33236(%ebp)         # local array 'v5': 5 dimensions
    movl    $6,-33232(%ebp)         #   dimension 1: 6 elements
    movl    $6,-33228(%ebp)         #   dimension 2: 6 elements
    movl    $1,-33224(%ebp)         #   dimension 3: 1 elements
    movl    $9,-33220(%ebp)         #   dimension 4: 9 elements
    movl    $1,-33216(%ebp)         #   dimension 5: 1 elements

    # function body
    movl    $18815, %eax            #   0:     div    t7 <- 18815, 35262
    movl    $35262, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     sub    t8 <- t7, 39292
    movl    $39292, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     add    t9 <- t8, 23438
    movl    $23438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $99652, %eax            #   3:     if     99652 <= t9 goto 1
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  11:     return t10
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
    leal    -33236(%ebp), %eax      #  14:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t11
    pushl   %eax                   
    leal    -31916(%ebp), %eax      #  16:     &()    t12 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t12
    pushl   %eax                   
    leal    -31172(%ebp), %eax      #  18:     &()    t13 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  20:     call   t14 <- f0
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $33224, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $30501, %eax            #   1:     mul    t0 <- 30501, 47481
    movl    $47481, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 77559
    movl    $77559, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 55495
    movl    $55495, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t3 <- t2, 88429
    movl    $88429, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t4 <- t3, 97667
    movl    $97667, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     mul    t5 <- t4, 72719
    movl    $72719, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     add    t6 <- t5, 53813
    movl    $53813, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     assign v0 <- t6
    movl    %eax, v0               
    call    dummyProcedure          #   9:     call   dummyProcedure
    jmp     l_test_exit            
    movl    $1, %eax                #  11:     assign v1 <- 1
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t17      <char> %ebp-38 ]
    #    -39(%ebp)   1  [ $t18      <bool> %ebp-39 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 8 of <array 4 of <array 6 of <array 7 of <bool>>>>>>> %ebp+8 ]

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
    movl    $54032, %eax            #   0:     div    t9 <- 54032, 96683
    movl    $96683, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   1:     mul    t10 <- t9, 82622
    movl    $82622, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t11 <- t10, 94912
    movl    $94912, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t12 <- t11, 42966
    movl    $42966, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t13 <- t12, 1381
    movl    $1381, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t14 <- t13, 19268
    movl    $19268, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t15 <- t14, 23842
    movl    $23842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     if     t15 > 96216 goto 1_if_true
    movl    $96216, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   8:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #  13:     if     99 = 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #  14:     goto   6_if_false
l_f0_5_if_true:
    movl    $100, %eax              #  16:     if     100 <= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_9                 
    jmp     l_f0_10                 #  17:     goto   10
l_f0_9:
    movl    $1, %eax                #  19:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_11                 #  20:     goto   11
l_f0_10:
    movl    $0, %eax                #  22:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f0_11:
    movzbl  -37(%ebp), %eax         #  24:     return t16
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  25:     call   t17 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movl    $98, %eax               #  26:     if     98 >= 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_15                
    jmp     l_f0_16                 #  27:     goto   16
l_f0_15:
    movl    $1, %eax                #  29:     assign t18 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_f0_17                 #  30:     goto   17
l_f0_16:
    movl    $0, %eax                #  32:     assign t18 <- 0
    movb    %al, -39(%ebp)         
l_f0_17:
    movzbl  -39(%ebp), %eax         #  34:     return t18
    jmp     l_f0_exit              
    jmp     l_f0_4                  #  35:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    ReadInt                 #  38:     call   t19 <- ReadInt
    movl    %eax, -44(%ebp)        

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
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 8 of <array 4 of <array 6 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
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
    #    -89(%ebp)   1  [ $t9       <char> %ebp-89 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 3 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 5 of <array 5 of <array 8 of <array 3 of <char>>>>>>> %ebp+20 ]
    #    -90(%ebp)   1  [ $v4       <char> %ebp-90 ]
    #   -5492(%ebp)  5400  [ $v5       <array 4 of <array 8 of <array 4 of <array 6 of <array 7 of <bool>>>>>> %ebp-5492 ]
    #   -5496(%ebp)   4  [ $v6       <int> %ebp-5496 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5484, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1371, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5492(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-5488(%ebp)          #   dimension 1: 4 elements
    movl    $8,-5484(%ebp)          #   dimension 2: 8 elements
    movl    $4,-5480(%ebp)          #   dimension 3: 4 elements
    movl    $6,-5476(%ebp)          #   dimension 4: 6 elements
    movl    $7,-5472(%ebp)          #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #   1:     return t9
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    ReadInt                 #   3:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $33383, %eax            #   4:     if     33383 <= t10 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    movl    $100, %eax              #   9:     if     100 <= 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  10:     goto   7_if_false
l_f1_6_if_true:
    movl    $99, %eax               #  12:     assign v4 <- 99
    movb    %al, -90(%ebp)         
l_f1_11_while_cond:
    movl    $1380, %eax             #  14:     if     1380 >= 97458 goto 12_while_body
    movl    $97458, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  17:     goto   11_while_cond
l_f1_10:
    leal    -5492(%ebp), %eax       #  19:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  21:     call   t12 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $54671, %eax            #  22:     assign v6 <- 54671
    movl    %eax, -5496(%ebp)      
    jmp     l_f1_18_if_false        #  23:     goto   18_if_false
    jmp     l_f1_16                 #  24:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $59919, %eax            #  27:     assign v6 <- 59919
    movl    %eax, -5496(%ebp)      
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $25635, %eax            #  31:     mul    t14 <- 25635, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t15 <- t14, 46622
    movl    $46622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  36:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t18 <- t17, 72750
    movl    $72750, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  40:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  41:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  42:     add    t21 <- t20, 43576
    movl    $43576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  44:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  45:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  46:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     add    t24 <- t23, 2593
    movl    $2593, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  49:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  50:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  51:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  52:     add    t28 <- v3, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $100, %eax              #  53:     assign @t28 <- 100
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  54:     if     97 = 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  55:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  57:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_5                  #  60:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $5484, %esp             # remove locals
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
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $v1       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
    movl    $44601, %eax            #   0:     div    t9 <- 44601, 54447
    movl    $54447, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #   3:     return 98
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    movl    $100, %eax              #   8:     assign v0 <- 100
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #   9:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  10:     goto   0
l_f2_0:
    movl    $98, %eax               #  12:     if     98 <= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_11_if_true:
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  16:     goto   15_while_cond
    movl    $1, %eax                #  17:     if     1 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18                
    jmp     l_f2_19                 #  18:     goto   19
l_f2_18:
    movl    $1, %eax                #  20:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_20                 #  21:     goto   20
l_f2_19:
    movl    $0, %eax                #  23:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_20:
    movzbl  -13(%ebp), %eax         #  25:     assign v1 <- t10
    movb    %al, -30(%ebp)         
    call    dummyINTfunc            #  26:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $40670, %eax            #  27:     assign v2 <- 40670
    movl    %eax, -36(%ebp)        
    jmp     l_f2_10                 #  28:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    dummyCHARfunc           #  31:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 5 of <array 5 of <array 8 of <array 3 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 3 of <array 7 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 3 of <array 4 of <array 6 of <array 3 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t8       <bool> %ebp-42 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_4                #   1:     goto   4
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $0, %eax                #   7:     if     0 = t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   8:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
l_test_13_while_cond:
    jmp     l_test_12               #  13:     goto   12
    jmp     l_test_13_while_cond    #  14:     goto   13_while_cond
l_test_12:
    call    ReadInt                 #  16:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_17_while_cond:
    movl    $0, %eax                #  18:     if     0 # 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  19:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  21:     goto   17_while_cond
l_test_16:
    jmp     l_test_9                #  23:     goto   9
l_test_9:
l_test_21_while_cond:
    movl    $100, %eax              #  26:     if     100 > 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  27:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  29:     goto   21_while_cond
l_test_20:
l_test_25_while_cond:
    movl    $66511, %eax            #  32:     if     66511 > 91888 goto 26_while_body
    movl    $91888, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_26_while_body   
    jmp     l_test_24               #  33:     goto   24
l_test_26_while_body:
    movl    $13450, %eax            #  35:     assign v0 <- 13450
    movl    %eax, v0               
    call    dummyProcedure          #  36:     call   dummyProcedure
    leal    v3, %eax                #  37:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     param  3 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  40:     param  2 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  42:     param  1 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  43:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  44:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movl    $62298, %eax            #  45:     add    t6 <- 62298, 15369
    movl    $15369, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  46:     assign v0 <- t6
    movl    %eax, v0               
    jmp     l_test_25_while_cond    #  47:     goto   25_while_cond
l_test_24:
    call    dummyBOOLfunc           #  49:     call   t7 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  50:     if     t7 = 1 goto 36
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_36              
    jmp     l_test_34               #  51:     goto   34
l_test_36:
    movl    $1, %eax                #  53:     assign t8 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_test_35               #  54:     goto   35
l_test_34:
    movl    $0, %eax                #  56:     assign t8 <- 0
    movb    %al, -42(%ebp)         
l_test_35:
    movzbl  -42(%ebp), %eax         #  58:     assign v4 <- t8
    movb    %al, v4                
    movl    $59078, %eax            #  59:     if     59078 # 97840 goto 38_if_true
    movl    $97840, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_38_if_true      
    jmp     l_test_39_if_false      #  60:     goto   39_if_false
l_test_38_if_true:
l_test_42_while_cond:
    movl    $25544, %eax            #  63:     if     25544 <= 37227 goto 43_while_body
    movl    $37227, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_43_while_body   
    jmp     l_test_41               #  64:     goto   41
l_test_43_while_body:
    jmp     l_test_42_while_cond    #  66:     goto   42_while_cond
l_test_41:
    movl    $100, %eax              #  68:     assign v5 <- 100
    movb    %al, v5                
    jmp     l_test_37               #  69:     goto   37
l_test_39_if_false:
l_test_37:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <array 6 of <array 3 of <array 4 of <array 6 of <array 3 of <bool>>>>>>
    .long    5
    .long    6
    .long    3
    .long    4
    .long    6
    .long    3
    .skip 1296
v2:                                 # <array 8 of <array 7 of <array 8 of <array 3 of <array 7 of <bool>>>>>>
    .long    5
    .long    8
    .long    7
    .long    8
    .long    3
    .long    7
    .skip 9408
v3:                                 # <array 10 of <array 5 of <array 5 of <array 8 of <array 3 of <char>>>>>>
    .long    5
    .long   10
    .long    5
    .long    5
    .long    8
    .long    3
    .skip 6000
v4:                                 # <bool>
    .skip    1
v5:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

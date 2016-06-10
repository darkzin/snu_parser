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
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t3       <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t4       <bool> %ebp-70 ]
    #    -71(%ebp)   1  [ $t5       <bool> %ebp-71 ]
    #    -72(%ebp)   1  [ $t6       <bool> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 65 of <array 90 of <array 38 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 65 of <array 91 of <array 3 of <array 76 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 52 of <array 44 of <array 25 of <array 40 of <array 22 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 63 of <array 36 of <array 68 of <array 80 of <array 2 of <int>>>>>>> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <bool> %ebp-85 ]

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
l_f0_1_while_cond:
    movl    $88442, %eax            #   1:     add    t2 <- 88442, 74038
    movl    $74038, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     if     t2 # 48833 goto 2_while_body
    movl    $48833, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    jmp     l_f0_11                 #   8:     goto   11
    jmp     l_f0_11                 #   9:     goto   11
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -70(%ebp)         
    jmp     l_f0_12                 #  11:     goto   12
l_f0_11:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -70(%ebp)         
l_f0_12:
    call    dummyBOOLfunc           #  15:     call   t5 <- dummyBOOLfunc
    movb    %al, -71(%ebp)         
    movzbl  -70(%ebp), %eax         #  16:     if     t4 = t5 goto 6
    movzbl  -71(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_7                  #  17:     goto   7
l_f0_6:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -72(%ebp)         
    jmp     l_f0_8                  #  20:     goto   8
l_f0_7:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -72(%ebp)         
l_f0_8:
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $78617, %eax            #  27:     mul    t8 <- 78617, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  28:     add    t9 <- t8, 67117
    movl    $67117, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  32:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     add    t12 <- t11, 48249
    movl    $48249, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  37:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     add    t15 <- t14, 44182
    movl    $44182, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  42:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t18 <- t17, 22832
    movl    $22832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  44:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  46:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  47:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  48:     add    t22 <- v0, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -72(%ebp), %eax         #  49:     assign @t22 <- t6
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 63 of <array 36 of <array 68 of <array 80 of <array 2 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 52 of <array 44 of <array 25 of <array 40 of <array 22 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <ptr(4) to <array 57 of <array 65 of <array 91 of <array 3 of <array 76 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 48 of <array 65 of <array 90 of <array 38 of <array 31 of <bool>>>>>>> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 84 of <array 30 of <array 93 of <array 28 of <array 84 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -330782464(%ebp)  330782424  [ $v3       <array 48 of <array 65 of <array 90 of <array 38 of <array 31 of <bool>>>>>> %ebp-330782464 ]
    #   -407653828(%ebp)  76871364  [ $v4       <array 57 of <array 65 of <array 91 of <array 3 of <array 76 of <char>>>>>> %ebp-407653828 ]
    #   -457989852(%ebp)  50336024  [ $v5       <array 52 of <array 44 of <array 25 of <array 40 of <array 22 of <char>>>>>> %ebp-457989852 ]
    #   -556693236(%ebp)  98703384  [ $v6       <array 63 of <array 36 of <array 68 of <array 80 of <array 2 of <int>>>>>> %ebp-556693236 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $556693224, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $139173306, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-330782464(%ebp)     # local array 'v3': 5 dimensions
    movl    $48,-330782460(%ebp)    #   dimension 1: 48 elements
    movl    $65,-330782456(%ebp)    #   dimension 2: 65 elements
    movl    $90,-330782452(%ebp)    #   dimension 3: 90 elements
    movl    $38,-330782448(%ebp)    #   dimension 4: 38 elements
    movl    $31,-330782444(%ebp)    #   dimension 5: 31 elements
    movl    $5,-407653828(%ebp)     # local array 'v4': 5 dimensions
    movl    $57,-407653824(%ebp)    #   dimension 1: 57 elements
    movl    $65,-407653820(%ebp)    #   dimension 2: 65 elements
    movl    $91,-407653816(%ebp)    #   dimension 3: 91 elements
    movl    $3,-407653812(%ebp)     #   dimension 4: 3 elements
    movl    $76,-407653808(%ebp)    #   dimension 5: 76 elements
    movl    $5,-457989852(%ebp)     # local array 'v5': 5 dimensions
    movl    $52,-457989848(%ebp)    #   dimension 1: 52 elements
    movl    $44,-457989844(%ebp)    #   dimension 2: 44 elements
    movl    $25,-457989840(%ebp)    #   dimension 3: 25 elements
    movl    $40,-457989836(%ebp)    #   dimension 4: 40 elements
    movl    $22,-457989832(%ebp)    #   dimension 5: 22 elements
    movl    $5,-556693236(%ebp)     # local array 'v6': 5 dimensions
    movl    $63,-556693232(%ebp)    #   dimension 1: 63 elements
    movl    $36,-556693228(%ebp)    #   dimension 2: 36 elements
    movl    $68,-556693224(%ebp)    #   dimension 3: 68 elements
    movl    $80,-556693220(%ebp)    #   dimension 4: 80 elements
    movl    $2,-556693216(%ebp)     #   dimension 5: 2 elements

    # function body
    movl    $99, %eax               #   0:     if     99 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   4:     goto   5_while_cond
    movl    $44430, %eax            #   5:     if     44430 <= 32803 goto 8
    movl    $32803, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_8                 
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_10:
    movzbl  -14(%ebp), %eax         #  13:     assign v2 <- t2
    movb    %al, 16(%ebp)          
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
    call    WriteLn                 #  16:     call   WriteLn
l_f1_17_while_cond:
    movl    $1, %eax                #  18:     if     1 # 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_18_while_body     
    jmp     l_f1_16                 #  19:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  21:     goto   17_while_cond
l_f1_16:
    movl    $1, %eax                #  23:     return 1
    jmp     l_f1_exit              
    movl    $71089, %eax            #  24:     if     71089 >= 67518 goto 22_if_true
    movl    $67518, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  25:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  27:     goto   21
l_f1_23_if_false:
l_f1_21:
    movl    $97, %eax               #  30:     if     97 # 97 goto 26
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_26                
    jmp     l_f1_27                 #  31:     goto   27
l_f1_26:
    movl    $1, %eax                #  33:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_28                 #  34:     goto   28
l_f1_27:
    movl    $0, %eax                #  36:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f1_28:
    movzbl  -15(%ebp), %eax         #  38:     return t3
    jmp     l_f1_exit              
    movl    $99, %eax               #  39:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    call    dummyINTfunc            #  40:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_33_while_cond:
    movl    $32178, %eax            #  42:     if     32178 >= 91323 goto 34_while_body
    movl    $91323, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_34_while_body     
    jmp     l_f1_32                 #  43:     goto   32
l_f1_34_while_body:
    jmp     l_f1_33_while_cond      #  45:     goto   33_while_cond
l_f1_32:
    jmp     l_f1_0                  #  47:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_37_while_cond:
    call    dummyCHARfunc           #  51:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  52:     if     t5 # 99 goto 38_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_38_while_body     
    jmp     l_f1_36                 #  53:     goto   36
l_f1_38_while_body:
    movl    $0, %eax                #  55:     assign v2 <- 0
    movb    %al, 16(%ebp)          
    movl    $97, %eax               #  56:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f1_37_while_cond      #  57:     goto   37_while_cond
l_f1_36:
    leal    -556693236(%ebp), %eax  #  59:     &()    t6 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  60:     param  3 <- t6
    pushl   %eax                   
    leal    -457989852(%ebp), %eax  #  61:     &()    t7 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  62:     param  2 <- t7
    pushl   %eax                   
    leal    -407653828(%ebp), %eax  #  63:     &()    t8 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  64:     param  1 <- t8
    pushl   %eax                   
    leal    -330782464(%ebp), %eax  #  65:     &()    t9 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  66:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  67:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         

l_f1_exit:
    # epilogue
    addl    $556693224, %esp        # remove locals
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
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t30      <bool> %ebp-101 ]
    #   -102(%ebp)   1  [ $t31      <char> %ebp-102 ]
    #   -108(%ebp)   4  [ $t32      <ptr(4) to <array 84 of <array 30 of <array 93 of <array 28 of <array 84 of <int>>>>>>> %ebp-108 ]
    #   -109(%ebp)   1  [ $t33      <bool> %ebp-109 ]
    #   -110(%ebp)   1  [ $t4       <bool> %ebp-110 ]
    #   -116(%ebp)   4  [ $t5       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t6       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t7       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t8       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <int> %ebp-132 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 11 of <array 83 of <array 6 of <array 18 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -136(%ebp)   4  [ $v2       <int> %ebp-136 ]
    #   -137(%ebp)   1  [ $v3       <bool> %ebp-137 ]
    #   2090108252(%ebp)  -2090108392  [ $v4       <array 84 of <array 30 of <array 93 of <array 28 of <array 84 of <int>>>>>> %ebp+2090108252 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-2090108264, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-522527066, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,2090108252(%ebp)     # local array 'v4': 5 dimensions
    movl    $84,2090108256(%ebp)    #   dimension 1: 84 elements
    movl    $30,2090108260(%ebp)    #   dimension 2: 30 elements
    movl    $93,2090108264(%ebp)    #   dimension 3: 93 elements
    movl    $28,2090108268(%ebp)    #   dimension 4: 28 elements
    movl    $84,2090108272(%ebp)    #   dimension 5: 84 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t2 <- _str_1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $92153, %eax            #   3:     assign v2 <- 92153
    movl    %eax, -136(%ebp)       
    call    ReadInt                 #   4:     call   t3 <- ReadInt
    movl    %eax, -100(%ebp)       
l_f2_7_while_cond:
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_11_if_false        #   9:     goto   11_if_false
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_13_while_cond:
    movl    $34603, %eax            #  14:     if     34603 >= 85163 goto 14_while_body
    movl    $85163, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14_while_body     
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_0                  #  19:     goto   0
l_f2_0:
    jmp     l_f2_18                 #  21:     goto   18
    jmp     l_f2_18                 #  22:     goto   18
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -110(%ebp)        
    jmp     l_f2_19                 #  24:     goto   19
l_f2_18:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -110(%ebp)        
l_f2_19:
    movl    $10615, %eax            #  28:     div    t5 <- 10615, 58265
    movl    $58265, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  29:     mul    t6 <- t5, 59151
    movl    $59151, %ebx           
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  30:     mul    t7 <- t6, 89201
    movl    $89201, %ebx           
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  31:     mul    t8 <- t7, 3469
    movl    $3469, %ebx            
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  32:     mul    t9 <- t8, 69443
    movl    $69443, %ebx           
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  33:     div    t10 <- t9, 37310
    movl    $37310, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  34:     div    t11 <- t10, 5258
    movl    $5258, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     mul    t12 <- t11, 22157
    movl    $22157, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     mul    t13 <- t12, 24640
    movl    $24640, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  39:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  40:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     add    t16 <- t15, 6719
    movl    $6719, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  43:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  44:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  45:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  46:     add    t19 <- t18, 83944
    movl    $83944, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  47:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  49:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  50:     mul    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  51:     add    t22 <- t21, 30954
    movl    $30954, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  52:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  53:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  54:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  55:     mul    t24 <- t22, t23
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  56:     add    t25 <- t24, 8983
    movl    $8983, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  57:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  58:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  59:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  60:     add    t28 <- t26, t27
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  61:     add    t29 <- v0, t28
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -110(%ebp), %eax        #  62:     assign @t29 <- t4
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $96372, %eax            #  63:     if     96372 > 14180 goto 24
    movl    $14180, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_24                
    jmp     l_f2_25                 #  64:     goto   25
l_f2_24:
    movl    $1, %eax                #  66:     assign t30 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f2_26                 #  67:     goto   26
l_f2_25:
    movl    $0, %eax                #  69:     assign t30 <- 0
    movb    %al, -101(%ebp)        
l_f2_26:
    movzbl  -101(%ebp), %eax        #  71:     param  2 <- t30
    pushl   %eax                   
    call    dummyCHARfunc           #  72:     call   t31 <- dummyCHARfunc
    movb    %al, -102(%ebp)        
    movzbl  -102(%ebp), %eax        #  73:     param  1 <- t31
    pushl   %eax                   
    leal    2090108252(%ebp), %eax  #  74:     &()    t32 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  75:     param  0 <- t32
    pushl   %eax                   
    call    f1                      #  76:     call   t33 <- f1
    addl    $12, %esp              
    movb    %al, -109(%ebp)        

l_f2_exit:
    # epilogue
    addl    $-2090108264, %esp      # remove locals
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
l_test_2_while_cond:
    movl    $90701, %eax            #   2:     assign v0 <- 90701
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_7_while_cond:
    movl    $82480, %eax            #   6:     div    t0 <- 82480, 18257
    movl    $18257, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t1 <- t0, 88828
    movl    $88828, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     if     t1 = 68703 goto 8_while_body
    movl    $68703, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  11:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
l_test_16_while_cond:
    movl    $86973, %eax            #  15:     if     86973 >= 55420 goto 17_while_body
    movl    $55420, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  16:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  18:     goto   16_while_cond
l_test_15:
    jmp     l_test_11_while_cond    #  20:     goto   11_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

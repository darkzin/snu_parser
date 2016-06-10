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
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 89 of <array 69 of <array 29 of <array 71 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v5       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   2:     if     t8 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $81813, %eax            #   5:     if     81813 < 77369 goto 5
    movl    $77369, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5                 
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $1, %eax                #   8:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $0, %eax                #  11:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f0_7:
    movzbl  -16(%ebp), %eax         #  13:     assign v3 <- t9
    movb    %al, 16(%ebp)          
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $28767, %eax            #  17:     if     28767 <= 28827 goto 10_if_true
    movl    $28827, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  18:     goto   11_if_false
l_f0_10_if_true:
l_f0_14_while_cond:
    movl    $36067, %eax            #  21:     if     36067 < 23024 goto 15_while_body
    movl    $23024, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  22:     goto   13
l_f0_15_while_body:
    call    dummyCHARfunc           #  24:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $14449, %eax            #  25:     assign v5 <- 14449
    movl    %eax, -20(%ebp)        
    jmp     l_f0_14_while_cond      #  26:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_9                  #  28:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
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
    #    -81(%ebp)   1  [ $t7       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 8 of <array 45 of <array 25 of <array 92 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -93(%ebp)   1  [ $v4       <char> %ebp-93 ]

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
    movl    $97, %eax               #   0:     if     97 <= 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_4                 
    jmp     l_f1_5                  #   1:     goto   5
l_f1_4:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -81(%ebp)         
l_f1_6:
    movzbl  -81(%ebp), %eax         #   8:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_0:
    movl    $78970, %eax            #  15:     add    t8 <- 78970, 26368
    movl    $26368, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  16:     add    t9 <- t8, 46868
    movl    $46868, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  17:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #  18:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_15                 #  19:     goto   15
l_f1_15:
    call    dummyCHARfunc           #  21:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $86991, %eax            #  25:     mul    t12 <- 86991, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 84536
    movl    $84536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 89571
    movl    $89571, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  35:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t19 <- t18, 79408
    movl    $79408, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  39:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  40:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t22 <- t21, 22266
    movl    $22266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  42:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  43:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  44:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  45:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  46:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $98, %eax               #  47:     assign @t26 <- 98
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_12                 #  48:     goto   12
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 15 of <array 89 of <array 69 of <array 29 of <array 71 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 100 of <array 8 of <array 45 of <array 25 of <array 92 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 99 of <array 64 of <array 55 of <array 56 of <char>>>>>>> %ebp+8 ]
    #   -82800052(%ebp)  82800024  [ $v2       <array 100 of <array 8 of <array 45 of <array 25 of <array 92 of <char>>>>>> %ebp-82800052 ]
    #   -841459216(%ebp)  758659164  [ $v3       <array 15 of <array 89 of <array 69 of <array 29 of <array 71 of <int>>>>>> %ebp-841459216 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $841459204, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $210364801, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-82800052(%ebp)      # local array 'v2': 5 dimensions
    movl    $100,-82800048(%ebp)    #   dimension 1: 100 elements
    movl    $8,-82800044(%ebp)      #   dimension 2: 8 elements
    movl    $45,-82800040(%ebp)     #   dimension 3: 45 elements
    movl    $25,-82800036(%ebp)     #   dimension 4: 25 elements
    movl    $92,-82800032(%ebp)     #   dimension 5: 92 elements
    movl    $5,-841459216(%ebp)     # local array 'v3': 5 dimensions
    movl    $15,-841459212(%ebp)    #   dimension 1: 15 elements
    movl    $89,-841459208(%ebp)    #   dimension 2: 89 elements
    movl    $69,-841459204(%ebp)    #   dimension 3: 69 elements
    movl    $29,-841459200(%ebp)    #   dimension 4: 29 elements
    movl    $71,-841459196(%ebp)    #   dimension 5: 71 elements

    # function body
    movl    $12964, %eax            #   0:     param  2 <- 12964
    pushl   %eax                   
    movl    $42968, %eax            #   1:     param  1 <- 42968
    pushl   %eax                   
    leal    -82800052(%ebp), %eax   #   2:     &()    t7 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #   4:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     if     t8 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_1                  #   6:     goto   1
l_f2_1:
    movl    $1, %eax                #   8:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f2_3:
    movzbl  -26(%ebp), %eax         #  12:     return t9
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_7                  #  14:     goto   7
    movl    $1, %eax                #  15:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_8_while_cond       #  16:     goto   8_while_cond
l_f2_7:
    movl    $97, %eax               #  18:     param  3 <- 97
    pushl   %eax                   
    movl    $0, %eax                #  19:     param  2 <- 0
    pushl   %eax                   
    movl    $99, %eax               #  20:     param  1 <- 99
    pushl   %eax                   
    leal    -841459216(%ebp), %eax  #  21:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  23:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  24:     if     98 <= t11 goto 14_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  25:     goto   15_if_false
l_f2_14_if_true:
    movl    $79514, %eax            #  27:     if     79514 < 70073 goto 18
    movl    $70073, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_18                
    jmp     l_f2_19                 #  28:     goto   19
l_f2_18:
    movl    $1, %eax                #  30:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_20                 #  31:     goto   20
l_f2_19:
    movl    $0, %eax                #  33:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f2_20:
    movzbl  -18(%ebp), %eax         #  35:     return t12
    jmp     l_f2_exit              
    movl    $98, %eax               #  36:     if     98 >= 98 goto 23
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_23                
    jmp     l_f2_24                 #  37:     goto   24
l_f2_23:
    movl    $1, %eax                #  39:     assign t13 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_25                 #  40:     goto   25
l_f2_24:
    movl    $0, %eax                #  42:     assign t13 <- 0
    movb    %al, -19(%ebp)         
l_f2_25:
    movzbl  -19(%ebp), %eax         #  44:     return t13
    jmp     l_f2_exit              
    jmp     l_f2_13                 #  45:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $841459204, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $97, %eax               #   5:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     if     t1 < t2 goto 7
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_7               
    jmp     l_test_8                #  12:     goto   8
l_test_7:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_9                #  15:     goto   9
l_test_8:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_9:
    movzbl  -16(%ebp), %eax         #  19:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_13_if_false      #  20:     goto   13_if_false
    movl    $100, %eax              #  21:     assign v0 <- 100
    movb    %al, v0                
    call    dummyINTfunc            #  22:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_11               #  23:     goto   11
l_test_13_if_false:
l_test_11:
l_test_18_while_cond:
    movl    $24617, %eax            #  27:     mul    t5 <- 24617, 8076
    movl    $8076, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $16072, %eax            #  28:     if     16072 > t5 goto 19_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_19_while_body   
    jmp     l_test_17               #  29:     goto   17
l_test_19_while_body:
    call    ReadInt                 #  31:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_18_while_cond    #  32:     goto   18_while_cond
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

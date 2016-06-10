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
    #    -48(%ebp)   4  [ $t2       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t3       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t4       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t5       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t6       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t7       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t8       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t9       <int> %ebp-76 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 5 of <array 4 of <array 6 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 9 of <array 4 of <array 1 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -77(%ebp)   1  [ $v5       <char> %ebp-77 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    movl    $99, %eax               #   2:     return 99
    jmp     l_f0_exit              
    movl    $42557, %eax            #   3:     if     42557 <= 53230 goto 6_if_true
    movl    $53230, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    movl    $97, %eax               #  10:     if     97 <= 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_0                  #  15:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    $88430, %eax            #  21:     mul    t3 <- 88430, t2
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t4 <- t3, 61322
    movl    $61322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  26:     mul    t6 <- t4, t5
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t7 <- t6, 32742
    movl    $32742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     mul    t9 <- t7, t8
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  32:     add    t10 <- t9, 60172
    movl    $60172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  36:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     add    t13 <- t12, 1694
    movl    $1694, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  41:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t17 <- v1, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $100, %eax              #  43:     assign @t17 <- 100
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_15_while_cond:
    jmp     l_f0_16_while_body      #  45:     goto   16_while_body
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  47:     goto   15_while_cond

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 4 of <array 2 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 1 of <array 5 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -48(%ebp)   4  [ $v5       <int> %ebp-48 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 35974
    movl    $35974, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t4 <- t3, 45622
    movl    $45622, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t5 <- t4, 90467
    movl    $90467, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     mul    t6 <- t5, 52975
    movl    $52975, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     div    t7 <- t6, 6392
    movl    $6392, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     div    t8 <- t7, 39138
    movl    $39138, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     assign v5 <- t8
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #   8:     if     97 <= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   9:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $32030, %eax            #  12:     if     32030 # 78678 goto 7_while_body
    movl    $78678, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_while_body:
    movl    $99, %eax               #  15:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #  18:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #  21:     if     99 # 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  22:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_14                 #  24:     goto   14
l_f1_14:
    call    dummyINTfunc            #  26:     call   t9 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_f1_10                 #  27:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <array 9 of <array 4 of <array 1 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 5 of <array 4 of <array 6 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 7 of <array 1 of <array 5 of <array 5 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 2 of <array 4 of <array 2 of <array 7 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $v1       <char> %ebp-35 ]
    #   -2220(%ebp)  2184  [ $v2       <array 3 of <array 5 of <array 4 of <array 6 of <array 6 of <char>>>>>> %ebp-2220 ]
    #   -3144(%ebp)  924  [ $v3       <array 5 of <array 9 of <array 4 of <array 1 of <array 5 of <bool>>>>>> %ebp-3144 ]
    #   -5408(%ebp)  2264  [ $v4       <array 5 of <array 2 of <array 4 of <array 2 of <array 7 of <int>>>>>> %ebp-5408 ]
    #   -6132(%ebp)  724  [ $v5       <array 4 of <array 7 of <array 1 of <array 5 of <array 5 of <char>>>>>> %ebp-6132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6120, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1530, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2220(%ebp)          # local array 'v2': 5 dimensions
    movl    $3,-2216(%ebp)          #   dimension 1: 3 elements
    movl    $5,-2212(%ebp)          #   dimension 2: 5 elements
    movl    $4,-2208(%ebp)          #   dimension 3: 4 elements
    movl    $6,-2204(%ebp)          #   dimension 4: 6 elements
    movl    $6,-2200(%ebp)          #   dimension 5: 6 elements
    movl    $5,-3144(%ebp)          # local array 'v3': 5 dimensions
    movl    $5,-3140(%ebp)          #   dimension 1: 5 elements
    movl    $9,-3136(%ebp)          #   dimension 2: 9 elements
    movl    $4,-3132(%ebp)          #   dimension 3: 4 elements
    movl    $1,-3128(%ebp)          #   dimension 4: 1 elements
    movl    $5,-3124(%ebp)          #   dimension 5: 5 elements
    movl    $5,-5408(%ebp)          # local array 'v4': 5 dimensions
    movl    $5,-5404(%ebp)          #   dimension 1: 5 elements
    movl    $2,-5400(%ebp)          #   dimension 2: 2 elements
    movl    $4,-5396(%ebp)          #   dimension 3: 4 elements
    movl    $2,-5392(%ebp)          #   dimension 4: 2 elements
    movl    $7,-5388(%ebp)          #   dimension 5: 7 elements
    movl    $5,-6132(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-6128(%ebp)          #   dimension 1: 4 elements
    movl    $7,-6124(%ebp)          #   dimension 2: 7 elements
    movl    $1,-6120(%ebp)          #   dimension 3: 1 elements
    movl    $5,-6116(%ebp)          #   dimension 4: 5 elements
    movl    $5,-6112(%ebp)          #   dimension 5: 5 elements

    # function body
l_f2_1_while_cond:
    movl    $29941, %eax            #   1:     if     29941 = 36358 goto 2_while_body
    movl    $36358, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $98, %eax               #   4:     if     98 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $98, %eax               #  10:     assign v1 <- 98
    movb    %al, -35(%ebp)         
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    movl    $0, %eax                #  13:     param  3 <- 0
    pushl   %eax                   
    movl    $480, %eax              #  14:     param  2 <- 480
    pushl   %eax                   
    leal    -3144(%ebp), %eax       #  15:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    leal    -2220(%ebp), %eax       #  17:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  19:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  20:     param  3 <- 97
    pushl   %eax                   
    movl    $0, %eax                #  21:     param  2 <- 0
    pushl   %eax                   
    leal    -6132(%ebp), %eax       #  22:     &()    t5 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     param  1 <- t5
    pushl   %eax                   
    leal    -5408(%ebp), %eax       #  24:     &()    t6 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  26:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -21(%ebp), %eax         #  27:     if     t4 # t7 goto 10
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  28:     goto   11
l_f2_10:
    movl    $1, %eax                #  30:     assign t8 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f2_12                 #  31:     goto   12
l_f2_11:
    movl    $0, %eax                #  33:     assign t8 <- 0
    movb    %al, -34(%ebp)         
l_f2_12:
    movzbl  -34(%ebp), %eax         #  35:     return t8
    jmp     l_f2_exit              
l_f2_15_while_cond:
    movl    $60948, %eax            #  37:     if     60948 < 77247 goto 16_while_body
    movl    $77247, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_16_while_body     
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  39:     goto   15_while_cond

l_f2_exit:
    # epilogue
    addl    $6120, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    movl    $100, %eax              #   1:     if     100 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
l_test_10_while_cond:
    movl    $26884, %eax            #  11:     if     26884 = 21633 goto 11_while_body
    movl    $21633, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    jmp     l_test_0                #  16:     goto   0
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    _str_1, %eax            #  20:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               

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

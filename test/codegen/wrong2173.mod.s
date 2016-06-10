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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 20 of <array 69 of <array 47 of <array 94 of <array 30 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 50 of <array 67 of <array 11 of <array 70 of <array 91 of <bool>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t10 = t11 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   9:     goto   4
l_f0_8_while_cond:
    movl    $1, %eax                #  11:     if     1 # 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  14:     goto   8_while_cond
l_f0_7:
    movl    $34815, %eax            #  16:     if     34815 > 71962 goto 12
    movl    $71962, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_12                
    jmp     l_f0_13                 #  17:     goto   13
l_f0_12:
    movl    $1, %eax                #  19:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_14                 #  20:     goto   14
l_f0_13:
    movl    $0, %eax                #  22:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f0_14:
    movzbl  -15(%ebp), %eax         #  24:     assign v3 <- t12
    movb    %al, 12(%ebp)          
    jmp     l_f0_5_while_cond       #  25:     goto   5_while_cond
l_f0_4:
    call    ReadInt                 #  27:     call   t13 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  30:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  31:     mul    t15 <- t13, t14
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t16 <- t15, 37548
    movl    $37548, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  35:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t18 <- t16, t17
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     add    t19 <- t18, 75562
    movl    $75562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  40:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  41:     mul    t21 <- t19, t20
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  42:     add    t22 <- t21, 42826
    movl    $42826, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  46:     mul    t24 <- t22, t23
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  47:     add    t25 <- t24, 87122
    movl    $87122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  48:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  49:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  50:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  51:     add    t28 <- t26, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  52:     add    t29 <- v4, t28
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $0, %eax                #  53:     assign @t29 <- 0
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 50 of <array 67 of <array 11 of <array 70 of <array 91 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 20 of <array 69 of <array 47 of <array 94 of <array 30 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 50 of <array 67 of <array 11 of <array 70 of <array 91 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 20 of <array 69 of <array 47 of <array 94 of <array 30 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t16      <char> %ebp-34 ]
    #    -35(%ebp)   1  [ $t17      <char> %ebp-35 ]
    #    -36(%ebp)   1  [ $t18      <bool> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 1 of <array 93 of <array 30 of <array 55 of <bool>>>>>>> %ebp+16 ]
    #   -182905260(%ebp)  182905224  [ $v5       <array 20 of <array 69 of <array 47 of <array 94 of <array 30 of <bool>>>>>> %ebp-182905260 ]
    #   -417639784(%ebp)  234734524  [ $v6       <array 50 of <array 67 of <array 11 of <array 70 of <array 91 of <bool>>>>>> %ebp-417639784 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $417639772, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $104409943, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-182905260(%ebp)     # local array 'v5': 5 dimensions
    movl    $20,-182905256(%ebp)    #   dimension 1: 20 elements
    movl    $69,-182905252(%ebp)    #   dimension 2: 69 elements
    movl    $47,-182905248(%ebp)    #   dimension 3: 47 elements
    movl    $94,-182905244(%ebp)    #   dimension 4: 94 elements
    movl    $30,-182905240(%ebp)    #   dimension 5: 30 elements
    movl    $5,-417639784(%ebp)     # local array 'v6': 5 dimensions
    movl    $50,-417639780(%ebp)    #   dimension 1: 50 elements
    movl    $67,-417639776(%ebp)    #   dimension 2: 67 elements
    movl    $11,-417639772(%ebp)    #   dimension 3: 11 elements
    movl    $70,-417639768(%ebp)    #   dimension 4: 70 elements
    movl    $91,-417639764(%ebp)    #   dimension 5: 91 elements

    # function body
    leal    -417639784(%ebp), %eax  #   0:     &()    t10 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t10
    pushl   %eax                   
    leal    -182905260(%ebp), %eax  #   2:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t11
    pushl   %eax                   
    movl    $99500, %eax            #   4:     if     99500 < 9206 goto 1
    movl    $9206, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #  12:     param  1 <- t12
    pushl   %eax                   
    leal    -417639784(%ebp), %eax  #  13:     &()    t13 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  3 <- t13
    pushl   %eax                   
    leal    -182905260(%ebp), %eax  #  15:     &()    t14 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     param  2 <- t14
    pushl   %eax                   
    movl    $99, %eax               #  17:     if     99 # 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_5                 
    jmp     l_f1_6                  #  18:     goto   6
l_f1_5:
    movl    $1, %eax                #  20:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_7                  #  21:     goto   7
l_f1_6:
    movl    $0, %eax                #  23:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f1_7:
    movzbl  -33(%ebp), %eax         #  25:     param  1 <- t15
    pushl   %eax                   
    movl    $97, %eax               #  26:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  27:     call   t16 <- f0
    addl    $16, %esp              
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  28:     param  0 <- t16
    pushl   %eax                   
    call    f0                      #  29:     call   t17 <- f0
    addl    $16, %esp              
    movb    %al, -35(%ebp)         
    movzbl  -35(%ebp), %eax         #  30:     return t17
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_12_while_body      #  32:     goto   12_while_body
    jmp     l_f1_12_while_body      #  33:     goto   12_while_body
    jmp     l_f1_12_while_body      #  34:     goto   12_while_body
    jmp     l_f1_10                 #  35:     goto   10
l_f1_12_while_body:
    movl    $77524, %eax            #  37:     if     77524 <= 9270 goto 17_if_true
    movl    $9270, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  38:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  40:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_11_while_cond      #  43:     goto   11_while_cond
l_f1_10:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  46:     goto   20
    movl    $100, %eax              #  47:     assign v3 <- 100
    movb    %al, 12(%ebp)          
    movl    $98, %eax               #  48:     return 98
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  49:     call   t18 <- dummyBOOLfunc
    movb    %al, -36(%ebp)         
    movl    $99, %eax               #  50:     if     99 = 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_27_if_true        
    jmp     l_f1_28_if_false        #  51:     goto   28_if_false
l_f1_27_if_true:
    jmp     l_f1_26                 #  53:     goto   26
l_f1_28_if_false:
l_f1_26:
    jmp     l_f1_21_while_cond      #  56:     goto   21_while_cond
l_f1_20:

l_f1_exit:
    # epilogue
    addl    $417639772, %esp        # remove locals
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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 23 of <array 42 of <array 79 of <array 1 of <array 100 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 56 of <array 36 of <array 87 of <array 85 of <array 60 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 39 of <array 29 of <array 20 of <array 77 of <array 69 of <int>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v6       <char> %ebp-81 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   2:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $43050, %eax            #   3:     mul    t11 <- 43050, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 54899
    movl    $54899, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     add    t15 <- t14, 93461
    movl    $93461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  13:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     add    t18 <- t17, 12169
    movl    $12169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  18:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     add    t21 <- t20, 53669
    movl    $53669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  20:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  22:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  23:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  24:     add    t25 <- v3, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $97, %eax               #  25:     assign @t25 <- 97
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  26:     assign v6 <- 97
    movb    %al, -81(%ebp)         
    jmp     l_f2_1                  #  27:     goto   1
l_f2_1:
    movl    $91476, %eax            #  29:     mul    t26 <- 91476, 25523
    movl    $25523, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  30:     return t26
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 1 of <array 93 of <array 30 of <array 55 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 8 of <array 1 of <array 93 of <array 30 of <array 55 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 50 of <array 67 of <array 11 of <array 70 of <array 91 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 20 of <array 69 of <array 47 of <array 94 of <array 30 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <char> %ebp-42 ]

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
    movl    $96933, %eax            #   0:     if     96933 > 16429 goto 1
    movl    $16429, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_5                #  10:     goto   5
l_test_5:
    movl    $99, %eax               #  12:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    leal    v2, %eax                #  14:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  16:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  18:     param  1 <- 97
    pushl   %eax                   
    call    ReadInt                 #  19:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  21:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  22:     param  1 <- t4
    pushl   %eax                   
    movl    $28718, %eax            #  23:     param  0 <- 28718
    pushl   %eax                   
    call    f1                      #  24:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  25:     if     t5 >= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  26:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  28:     goto   10
l_test_12_if_false:
l_test_10:
    leal    v4, %eax                #  31:     &()    t6 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     param  3 <- t6
    pushl   %eax                   
    leal    v3, %eax                #  33:     &()    t7 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     param  2 <- t7
    pushl   %eax                   
    movl    $63351, %eax            #  35:     if     63351 >= 36360 goto 15
    movl    $36360, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  36:     goto   16
l_test_15:
    movl    $1, %eax                #  38:     assign t8 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_17               #  39:     goto   17
l_test_16:
    movl    $0, %eax                #  41:     assign t8 <- 0
    movb    %al, -41(%ebp)         
l_test_17:
    movzbl  -41(%ebp), %eax         #  43:     param  1 <- t8
    pushl   %eax                   
    movl    $97, %eax               #  44:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  45:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -42(%ebp)         
    movzbl  -42(%ebp), %eax         #  46:     assign v1 <- t9
    movb    %al, v1                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 8 of <array 1 of <array 93 of <array 30 of <array 55 of <bool>>>>>>
    .long    5
    .long    8
    .long    1
    .long   93
    .long   30
    .long   55
    .skip 1227600
v3:                                 # <array 20 of <array 69 of <array 47 of <array 94 of <array 30 of <bool>>>>>>
    .long    5
    .long   20
    .long   69
    .long   47
    .long   94
    .long   30
    .skip 182905200
v4:                                 # <array 50 of <array 67 of <array 11 of <array 70 of <array 91 of <bool>>>>>>
    .long    5
    .long   50
    .long   67
    .long   11
    .long   70
    .long   91
    .skip 234734500








    # end of global data section
    #-----------------------------------------

    .end
##################################################

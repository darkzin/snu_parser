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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $57126, %eax            #   0:     div    t4 <- 57126, 60707
    movl    $60707, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 85863
    movl    $85863, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #   4:     if     99 = 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_6                  #   7:     goto   6
l_f0_6:
    movl    $97, %eax               #   9:     if     97 = 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_12                 #  13:     goto   12
l_f0_11:
    movl    $0, %eax                #  15:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f0_12:
    movzbl  -22(%ebp), %eax         #  17:     return t7
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  18:     call   t8 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f0_2                  #  19:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t4       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>>> %ebp-100 ]
    #   -101(%ebp)   1  [ $t6       <bool> %ebp-101 ]
    #   -102(%ebp)   1  [ $t7       <char> %ebp-102 ]
    #   -103(%ebp)   1  [ $t8       <bool> %ebp-103 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 63 of <array 33 of <array 16 of <array 84 of <array 12 of <bool>>>>>>> %ebp+8 ]
    #   -126562932(%ebp)  126562824  [ $v1       <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>> %ebp-126562932 ]
    #   -126562933(%ebp)   1  [ $v2       <bool> %ebp-126562933 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $126562924, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $31640731, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-126562932(%ebp)     # local array 'v1': 5 dimensions
    movl    $13,-126562928(%ebp)    #   dimension 1: 13 elements
    movl    $61,-126562924(%ebp)    #   dimension 2: 61 elements
    movl    $100,-126562920(%ebp)   #   dimension 3: 100 elements
    movl    $42,-126562916(%ebp)    #   dimension 4: 42 elements
    movl    $38,-126562912(%ebp)    #   dimension 5: 38 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movl    $99, %eax               #   1:     if     99 >= t4 goto 1_if_true
    movzbl  -93(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    leal    -126562932(%ebp), %eax  #   4:     &()    t5 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   6:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -101(%ebp)        
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -102(%ebp)        
    movl    $100, %eax              #  11:     if     100 > t7 goto 6
    movzbl  -102(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -103(%ebp)        
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -103(%ebp)        
l_f1_8:
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $89396, %eax            #  22:     mul    t10 <- 89396, t9
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 8147
    movl    $8147, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 9322
    movl    $9322, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t17 <- t16, 58842
    movl    $58842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     add    t20 <- t19, 6890
    movl    $6890, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  41:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  42:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  43:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -103(%ebp), %eax        #  44:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_11_while_cond:
    movl    $96709, %eax            #  46:     mul    t25 <- 96709, 30218
    movl    $30218, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  47:     mul    t26 <- t25, 1437
    movl    $1437, %ebx            
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  48:     mul    t27 <- t26, 81710
    movl    $81710, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  49:     mul    t28 <- t27, 64014
    movl    $64014, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  50:     mul    t29 <- t28, 76869
    movl    $76869, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  51:     if     t29 <= 32296 goto 12_while_body
    movl    $32296, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  52:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  54:     goto   11_while_cond
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $126562924, %esp        # remove locals
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
    #    -68(%ebp)   4  [ $t4       <ptr(4) to <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>>> %ebp-68 ]
    #    -69(%ebp)   1  [ $t5       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 18 of <array 3 of <array 39 of <array 42 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 4 of <array 40 of <array 39 of <array 45 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 54 of <array 76 of <array 56 of <array 88 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -126562912(%ebp)  126562824  [ $v4       <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>> %ebp-126562912 ]
    #   -126562913(%ebp)   1  [ $v5       <char> %ebp-126562913 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $126562904, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $31640726, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-126562912(%ebp)     # local array 'v4': 5 dimensions
    movl    $13,-126562908(%ebp)    #   dimension 1: 13 elements
    movl    $61,-126562904(%ebp)    #   dimension 2: 61 elements
    movl    $100,-126562900(%ebp)   #   dimension 3: 100 elements
    movl    $42,-126562896(%ebp)    #   dimension 4: 42 elements
    movl    $38,-126562892(%ebp)    #   dimension 5: 38 elements

    # function body
l_f2_1_while_cond:
    movl    $87672, %eax            #   1:     if     87672 >= 89098 goto 2_while_body
    movl    $89098, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   4:     if     1 # 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    leal    -126562912(%ebp), %eax  #  10:     &()    t4 <- v4
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  11:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  12:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -69(%ebp)         
    call    ReadInt                 #  13:     call   t6 <- ReadInt
    movl    %eax, -76(%ebp)        
l_f2_11_while_cond:
    movl    $6825, %eax             #  15:     if     6825 <= 94887 goto 12_while_body
    movl    $94887, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_1_while_cond       #  20:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_16_if_false        #  22:     goto   16_if_false
l_f2_19_while_cond:
    movl    $77361, %eax            #  24:     if     77361 >= 29572 goto 20_while_body
    movl    $29572, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_20_while_body     
    jmp     l_f2_18                 #  25:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  27:     goto   19_while_cond
l_f2_18:
    jmp     l_f2_14                 #  29:     goto   14
l_f2_16_if_false:
l_f2_14:
l_f2_23_while_cond:
    jmp     l_f2_22                 #  33:     goto   22
    jmp     l_f2_27_if_false        #  34:     goto   27_if_false
    jmp     l_f2_25                 #  35:     goto   25
l_f2_27_if_false:
l_f2_25:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $21604, %eax            #  41:     mul    t8 <- 21604, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     add    t9 <- t8, 91639
    movl    $91639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  46:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  47:     add    t12 <- t11, 61316
    movl    $61316, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  51:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  52:     add    t15 <- t14, 6212
    movl    $6212, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  56:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  57:     add    t18 <- t17, 3840
    movl    $3840, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  58:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  60:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  61:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  62:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $100, %eax              #  63:     assign @t22 <- 100
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_30_while_cond:
    movl    $23959, %eax            #  65:     if     23959 <= 89222 goto 31_while_body
    movl    $89222, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_31_while_body     
    jmp     l_f2_29                 #  66:     goto   29
l_f2_31_while_body:
    jmp     l_f2_30_while_cond      #  68:     goto   30_while_cond
l_f2_29:
    jmp     l_f2_23_while_cond      #  70:     goto   23_while_cond
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $126562904, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_4_if_true        #   0:     goto   4_if_true
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   3:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_0                #   6:     goto   0
l_test_0:
    movl    $0, %eax                #   8:     assign v0 <- 0
    movb    %al, v0                
    leal    v1, %eax                #   9:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #  11:     call   t1 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
l_test_10_while_cond:
    call    dummyINTfunc            #  13:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     sub    t3 <- t2, 96276
    movl    $96276, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $20889, %eax            #  15:     if     20889 < t3 goto 11_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_9:

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
    .align   4
v1:                                 # <array 13 of <array 61 of <array 100 of <array 42 of <array 38 of <bool>>>>>>
    .long    5
    .long   13
    .long   61
    .long  100
    .long   42
    .long   38
    .skip 126562800








    # end of global data section
    #-----------------------------------------

    .end
##################################################

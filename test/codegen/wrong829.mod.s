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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t8       <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t9       <char> %ebp-90 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 7 of <array 2 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 4 of <array 5 of <array 1 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 9 of <array 10 of <array 1 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -91(%ebp)   1  [ $v5       <bool> %ebp-91 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_5                  #   0:     goto   5
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -89(%ebp)         
l_f0_6:
    movl    $1, %eax                #   8:     if     1 # t8 goto 1_if_true
    movzbl  -89(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   9:     goto   2_if_false
l_f0_1_if_true:
    call    dummyCHARfunc           #  11:     call   t9 <- dummyCHARfunc
    movb    %al, -90(%ebp)         
    movl    $95946, %eax            #  12:     if     95946 < 53626 goto 12
    movl    $53626, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_12                
    jmp     l_f0_13                 #  13:     goto   13
l_f0_12:
    movl    $1, %eax                #  15:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_14                 #  16:     goto   14
l_f0_13:
    movl    $0, %eax                #  18:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_14:
    movzbl  -13(%ebp), %eax         #  20:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $2741, %eax             #  24:     div    t11 <- 2741, 64474
    movl    $64474, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     if     t11 >= 93565 goto 17
    movl    $93565, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_17                
    jmp     l_f0_18                 #  26:     goto   18
l_f0_17:
    movl    $1, %eax                #  28:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_19                 #  29:     goto   19
l_f0_18:
    movl    $0, %eax                #  31:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_19:
    movzbl  -21(%ebp), %eax         #  33:     return t12
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  34:     call   t13 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  35:     if     t13 = 1 goto 22_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  36:     goto   23_if_false
l_f0_22_if_true:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $11607, %eax            #  41:     mul    t15 <- 11607, t14
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  42:     add    t16 <- t15, 51450
    movl    $51450, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  46:     mul    t18 <- t16, t17
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  47:     add    t19 <- t18, 83644
    movl    $83644, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  51:     mul    t21 <- t19, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  52:     add    t22 <- t21, 29082
    movl    $29082, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  56:     mul    t24 <- t22, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  57:     add    t25 <- t24, 38057
    movl    $38057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  58:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  60:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  61:     add    t28 <- t26, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  62:     add    t29 <- v2, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $0, %eax                #  63:     assign @t29 <- 0
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_21                 #  64:     goto   21
l_f0_23_if_false:
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $43837, %eax            #   1:     if     43837 = 81624 goto 2_if_true
    movl    $81624, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $97, %eax               #   4:     return 97
    jmp     l_f1_exit              
    call    dummyINTfunc            #   5:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $84586, %eax            #  11:     assign v1 <- 84586
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t31      <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t8       <bool> %ebp-98 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 9 of <array 9 of <array 3 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 8 of <array 3 of <array 2 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 6 of <array 2 of <array 2 of <array 2 of <bool>>>>>>> %ebp+20 ]
    #   -105(%ebp)   1  [ $v5       <bool> %ebp-105 ]
    #   -106(%ebp)   1  [ $v6       <char> %ebp-106 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $21834, %eax            #   3:     if     21834 > 84713 goto 5
    movl    $84713, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t8 <- 1
    movb    %al, -98(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t8 <- 0
    movb    %al, -98(%ebp)         
l_f2_7:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $83528, %eax            #  14:     mul    t10 <- 83528, t9
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $94479, %eax            #  15:     mul    t11 <- 94479, 22593
    movl    $22593, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t12 <- t11, 3014
    movl    $3014, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     div    t13 <- t12, 71431
    movl    $71431, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     div    t14 <- t13, 69092
    movl    $69092, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t15 <- t14, 12696
    movl    $12696, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     div    t16 <- t15, 79765
    movl    $79765, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t17 <- t10, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  24:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     add    t20 <- t19, 5176
    movl    $5176, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  29:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  30:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  31:     add    t23 <- t22, 82395
    movl    $82395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  34:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  35:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  36:     add    t26 <- t25, 70337
    movl    $70337, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  37:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  39:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  40:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    20(%ebp), %eax          #  41:     add    t30 <- v4, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -98(%ebp), %eax         #  42:     assign @t30 <- t8
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  43:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #  46:     assign v6 <- 98
    movb    %al, -106(%ebp)        
    call    dummyBOOLfunc           #  47:     call   t31 <- dummyBOOLfunc
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #  48:     return t31
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $96, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]

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
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $42043, %eax            #   3:     if     42043 <= 79088 goto 5
    movl    $79088, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   7:     goto   7
l_test_6:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_10               #  15:     goto   10
    jmp     l_test_10               #  16:     goto   10
    jmp     l_test_10               #  17:     goto   10
    jmp     l_test_11               #  18:     goto   11
l_test_10:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  21:     goto   12
l_test_11:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_12:
    movzbl  -14(%ebp), %eax         #  25:     assign v0 <- t1
    movb    %al, v0                
    movl    $56668, %eax            #  26:     if     56668 # 64406 goto 21_if_true
    movl    $64406, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  27:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_24               #  29:     goto   24
l_test_24:
l_test_28_while_cond:
    jmp     l_test_27               #  32:     goto   27
    jmp     l_test_28_while_cond    #  33:     goto   28_while_cond
l_test_27:
l_test_31_while_cond:
    movl    $98, %eax               #  36:     if     98 < 100 goto 32_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_32_while_body   
    jmp     l_test_30               #  37:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  39:     goto   31_while_cond
l_test_30:
    call    ReadInt                 #  41:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $43733, %eax            #  42:     if     43733 >= 68871 goto 36_if_true
    movl    $68871, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_36_if_true      
    jmp     l_test_37_if_false      #  43:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  45:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_20               #  48:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $1, %eax                #  51:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_42               #  52:     goto   42
    movl    $0, %eax                #  53:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_42:
    movzbl  -21(%ebp), %eax         #  55:     assign v0 <- t3
    movb    %al, v0                
    movl    $52087, %eax            #  56:     add    t4 <- 52087, 96137
    movl    $96137, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  57:     if     t4 # 49415 goto 45
    movl    $49415, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_45              
    jmp     l_test_46               #  58:     goto   46
l_test_45:
    movl    $1, %eax                #  60:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_47               #  61:     goto   47
l_test_46:
    movl    $0, %eax                #  63:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_test_47:
    movzbl  -29(%ebp), %eax         #  65:     assign v0 <- t5
    movb    %al, v0                
l_test_50_while_cond:
    movl    $96243, %eax            #  67:     if     96243 > 84948 goto 53_if_true
    movl    $84948, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_53_if_true      
    jmp     l_test_54_if_false      #  68:     goto   54_if_false
l_test_53_if_true:
    jmp     l_test_52               #  70:     goto   52
l_test_54_if_false:
l_test_52:
    call    dummyINTfunc            #  73:     call   t6 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    $98, %eax               #  74:     assign v1 <- 98
    movb    %al, v1                
    movl    $1, %eax                #  75:     if     1 = 1 goto 59_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_59_if_true      
    jmp     l_test_60_if_false      #  76:     goto   60_if_false
l_test_59_if_true:
    jmp     l_test_58               #  78:     goto   58
l_test_60_if_false:
l_test_58:
l_test_63_while_cond:
    jmp     l_test_63_while_cond    #  82:     goto   63_while_cond
    movl    $100, %eax              #  83:     if     100 >= 97 goto 66
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_66              
    jmp     l_test_67               #  84:     goto   67
l_test_66:
    movl    $1, %eax                #  86:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_68               #  87:     goto   68
l_test_67:
    movl    $0, %eax                #  89:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_test_68:
    movzbl  -37(%ebp), %eax         #  91:     assign v0 <- t7
    movb    %al, v0                
    movl    $47797, %eax            #  92:     assign v2 <- 47797
    movl    %eax, v2               
    jmp     l_test_50_while_cond    #  93:     goto   50_while_cond

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

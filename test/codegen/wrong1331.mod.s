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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 12 of <array 15 of <array 37 of <array 3 of <array 92 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 51 of <array 57 of <array 83 of <array 37 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $0, %eax                #   0:     if     0 = 0 goto 4
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4                 
    jmp     l_f1_5                  #   1:     goto   5
l_f1_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $94891, %eax            #  11:     mul    t2 <- 94891, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     add    t3 <- t2, 908
    movl    $908, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  16:     mul    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  17:     add    t6 <- t5, 29868
    movl    $29868, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  21:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  22:     add    t9 <- t8, 75132
    movl    $75132, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t12 <- t11, 4618
    movl    $4618, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  30:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t15 <- t13, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  32:     add    t16 <- v1, t15
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  33:     assign @t16 <- t0
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $13458, %eax            #  34:     if     13458 <= 32739 goto 9_if_true
    movl    $32739, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  35:     goto   10_if_false
l_f1_9_if_true:
    movl    $100, %eax              #  37:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #  38:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_8                  #  39:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #  42:     goto   0
l_f1_0:
l_f1_15_while_cond:
    jmp     l_f1_16_while_body      #  45:     goto   16_while_body
l_f1_16_while_body:
l_f1_20_while_cond:
    movl    $1, %eax                #  48:     if     1 = 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_21_while_body     
    jmp     l_f1_19                 #  49:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  51:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_15_while_cond      #  53:     goto   15_while_cond
l_f1_24_while_cond:
    movl    $84126, %eax            #  55:     add    t17 <- 84126, 79232
    movl    $79232, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  56:     if     t17 > 54298 goto 25_while_body
    movl    $54298, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_25_while_body     
    jmp     l_f1_23                 #  57:     goto   23
l_f1_25_while_body:
    movl    $63881, %eax            #  59:     if     63881 <= 31893 goto 28_if_true
    movl    $31893, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  60:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  62:     goto   27
l_f1_29_if_false:
l_f1_27:
    movl    $100, %eax              #  65:     return 100
    jmp     l_f1_exit              
    movl    $39539, %eax            #  66:     assign v0 <- 39539
    movl    %eax, 8(%ebp)          
    jmp     l_f1_24_while_cond      #  67:     goto   24_while_cond
l_f1_23:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 81 of <array 83 of <array 74 of <array 2 of <array 74 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 61 of <array 20 of <array 23 of <array 44 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 67 of <array 96 of <array 57 of <array 13 of <bool>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $v4       <bool> %ebp-82 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     if     100 <= 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_4                 
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   9:     return t0
    jmp     l_f2_exit              
    movl    $84287, %eax            #  10:     if     84287 > 79749 goto 9_if_true
    movl    $79749, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $97, %eax               #  16:     assign v3 <- 97
    movb    %al, -81(%ebp)         
l_f2_14_while_cond:
    movl    $98, %eax               #  18:     if     98 # 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_15_while_body     
    jmp     l_f2_13                 #  19:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  21:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_17                 #  23:     goto   17
l_f2_17:
l_f2_21_while_cond:
    movl    $71744, %eax            #  26:     if     71744 >= 11159 goto 22_while_body
    movl    $11159, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_22_while_body     
    jmp     l_f2_20                 #  27:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  29:     goto   21_while_cond
l_f2_20:
l_f2_25_while_cond:
    movl    $1825, %eax             #  32:     if     1825 < 38739 goto 26_while_body
    movl    $38739, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_26_while_body     
    jmp     l_f2_24                 #  33:     goto   24
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  35:     goto   25_while_cond
l_f2_24:
    jmp     l_f2_0                  #  37:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_29                 #  40:     goto   29
l_f2_29:
    movl    $1, %eax                #  42:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_31                 #  43:     goto   31
    movl    $0, %eax                #  44:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_31:
    movzbl  -14(%ebp), %eax         #  46:     assign v4 <- t1
    movb    %al, -82(%ebp)         
    movl    $2, %eax                #  47:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  49:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $94770, %eax            #  50:     mul    t3 <- 94770, t2
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  51:     add    t4 <- t3, 48633
    movl    $48633, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  52:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  53:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  54:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  55:     mul    t6 <- t4, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  56:     add    t7 <- t6, 51885
    movl    $51885, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  57:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  58:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  59:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  60:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  61:     add    t10 <- t9, 91643
    movl    $91643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  62:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  63:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  64:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  65:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  66:     add    t13 <- t12, 93544
    movl    $93544, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  67:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  68:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  69:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  70:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  71:     add    t17 <- v0, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #  72:     assign @t17 <- 97
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    movl    $99, %eax               #   1:     if     99 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $99, %eax               #   8:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################

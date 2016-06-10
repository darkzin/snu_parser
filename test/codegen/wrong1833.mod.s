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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 16 of <array 48 of <array 33 of <array 49 of <bool>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v1       <bool> %ebp-81 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
l_f0_5_while_cond:
    movl    $1, %eax                #   3:     if     1 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_exit              
    movl    $1, %eax                #   9:     assign v1 <- 1
    movb    %al, -81(%ebp)         
l_f0_11_while_cond:
    movl    $90936, %eax            #  11:     if     90936 >= 90448 goto 12_while_body
    movl    $90448, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  12:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  14:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_16_if_false        #  16:     goto   16_if_false
    jmp     l_f0_14                 #  17:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_1                  #  20:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $80155, %eax            #  26:     mul    t9 <- 80155, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    call    ReadInt                 #  27:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  28:     add    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t14 <- t13, 61025
    movl    $61025, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t17 <- t16, 21436
    movl    $21436, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  42:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     add    t20 <- t19, 18133
    movl    $18133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  44:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  46:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  47:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  48:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $1, %eax                #  49:     assign @t24 <- 1
    movl    -72(%ebp), %edi        
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 60 of <array 61 of <array 92 of <array 87 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 17 of <array 97 of <array 85 of <array 52 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 8 of <array 70 of <array 100 of <array 51 of <int>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $35157, %eax            #   1:     sub    t8 <- 35157, 61371
    movl    $61371, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t9 <- t8, 53129
    movl    $53129, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $10916, %eax            #   3:     if     10916 <= t9 goto 2_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   8:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   9:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $53021, %eax            #  10:     sub    t12 <- 53021, t11
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $74119, %eax            #  11:     if     74119 < t12 goto 6
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movzbl  -25(%ebp), %eax         #  19:     return t13
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -81(%ebp)   1  [ $t27      <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t8       <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 61 of <array 52 of <array 45 of <array 84 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 48 of <array 28 of <array 44 of <array 89 of <int>>>>>>> %ebp+16 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -82(%ebp)         
    movl    $30493, %eax            #   1:     sub    t9 <- 30493, 50402
    movl    $50402, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $83368, %eax            #   2:     mul    t10 <- 83368, 65341
    movl    $65341, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   6:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     add    t13 <- t12, 87695
    movl    $87695, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  11:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     add    t16 <- t15, 68162
    movl    $68162, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  16:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     add    t19 <- t18, 18341
    movl    $18341, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  21:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  22:     add    t22 <- t21, 1762
    movl    $1762, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  23:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  26:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t26 <- v2, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -88(%ebp), %eax         #  28:     assign @t26 <- t9
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_4                  #  29:     goto   4
    jmp     l_f2_4                  #  30:     goto   4
    jmp     l_f2_4                  #  31:     goto   4
    jmp     l_f2_4                  #  32:     goto   4
    movl    $1, %eax                #  33:     assign t27 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_5                  #  34:     goto   5
l_f2_4:
    movl    $0, %eax                #  36:     assign t27 <- 0
    movb    %al, -81(%ebp)         
l_f2_5:
    movzbl  -81(%ebp), %eax         #  38:     assign v4 <- t27
    movb    %al, -93(%ebp)         

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 98 of <array 48 of <array 28 of <array 44 of <array 89 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 98 of <array 48 of <array 28 of <array 44 of <array 89 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 44 of <array 61 of <array 52 of <array 45 of <array 84 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 44 of <array 61 of <array 52 of <array 45 of <array 84 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
    jmp     l_test_exit            
    jmp     l_test_2                #   5:     goto   2
l_test_4_if_false:
l_test_2:
l_test_10_while_cond:
    leal    v3, %eax                #   9:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t1
    pushl   %eax                   
    leal    v3, %eax                #  11:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  13:     param  1 <- 97
    pushl   %eax                   
    leal    v2, %eax                #  14:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  16:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  17:     param  1 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  20:     call   t6 <- f2
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  21:     if     t6 >= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_while_body   
    jmp     l_test_9                #  22:     goto   9
l_test_11_while_body:
    movl    $85089, %eax            #  24:     if     85089 # 72791 goto 14
    movl    $72791, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14              
    jmp     l_test_15               #  25:     goto   15
l_test_14:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_test_16               #  28:     goto   16
l_test_15:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -38(%ebp)         
l_test_16:
    movzbl  -38(%ebp), %eax         #  32:     assign v0 <- t7
    movb    %al, v0                
    movl    $18961, %eax            #  33:     assign v1 <- 18961
    movl    %eax, v1               
    jmp     l_test_10_while_cond    #  34:     goto   10_while_cond
l_test_9:

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 44 of <array 61 of <array 52 of <array 45 of <array 84 of <bool>>>>>>
    .long    5
    .long   44
    .long   61
    .long   52
    .long   45
    .long   84
    .skip 527567040
v3:                                 # <array 98 of <array 48 of <array 28 of <array 44 of <array 89 of <int>>>>>>
    .long    5
    .long   98
    .long   48
    .long   28
    .long   44
    .long   89
    .skip 2063136768








    # end of global data section
    #-----------------------------------------

    .end
##################################################

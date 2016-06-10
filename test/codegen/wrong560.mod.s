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
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t10 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     assign v4 <- t11
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 3 of <array 4 of <array 6 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 4 of <array 2 of <array 3 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #    -92(%ebp)   4  [ $v5       <int> %ebp-92 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t10
    jmp     l_f1_exit              
    call    ReadInt                 #   3:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   5:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   6:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $16882, %eax            #   7:     mul    t13 <- 16882, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     add    t14 <- t13, 19552
    movl    $19552, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  12:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $51635, %eax            #  13:     sub    t17 <- 51635, 17099
    movl    $17099, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  14:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
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
    movl    -56(%ebp), %eax         #  19:     add    t21 <- t20, 94398
    movl    $94398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  23:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  24:     add    t24 <- t23, 81705
    movl    $81705, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  25:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  27:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  28:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t28 <- v3, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -20(%ebp), %eax         #  30:     assign @t28 <- t11
    movl    -88(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 10 of <array 3 of <array 7 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 10 of <array 10 of <array 10 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #   -105(%ebp)   1  [ $v5       <char> %ebp-105 ]

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
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t10
    jmp     l_f2_exit              
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $9104, %eax             #   5:     mul    t12 <- 9104, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t13 <- t12, 54450
    movl    $54450, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $75512, %eax            #  11:     mul    t16 <- 75512, 56330
    movl    $56330, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     mul    t17 <- t16, 22094
    movl    $22094, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $29248, %eax            #  13:     sub    t18 <- 29248, t17
    movl    -44(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -36(%ebp), %eax         #  14:     add    t19 <- t15, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  18:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  19:     add    t22 <- t21, 18886
    movl    $18886, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  23:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  24:     add    t25 <- t24, 37005
    movl    $37005, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  25:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  28:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t29 <- v2, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $98, %eax               #  30:     assign @t29 <- 98
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_3_while_cond:
    movl    $46314, %eax            #  32:     sub    t30 <- 46314, 64576
    movl    $64576, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $49762, %eax            #  33:     mul    t31 <- 49762, 76907
    movl    $76907, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  34:     add    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  35:     if     t32 <= 11212 goto 4_while_body
    movl    $11212, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #  36:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  38:     goto   3_while_cond
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 10 of <array 10 of <array 10 of <array 8 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 10 of <array 3 of <array 7 of <array 6 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-48 ]

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
    movl    $52368, %eax            #   0:     mul    t0 <- 52368, 53808
    movl    $53808, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 11831
    movl    $11831, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
l_test_2_while_cond:
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   5:     if     100 <= t2 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
    movl    $97, %eax               #  11:     assign v1 <- 97
    movb    %al, v1                
    movl    $8728, %eax             #  12:     assign v0 <- 8728
    movl    %eax, v0               
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
    call    dummyBOOLfunc           #  15:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  17:     goto   15_while_cond
    jmp     l_test_5                #  18:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $63917, %eax            #  21:     if     63917 >= 49576 goto 18_if_true
    movl    $49576, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
l_test_23_while_cond:
    movl    $70138, %eax            #  26:     if     70138 > 17529 goto 24_while_body
    movl    $17529, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  27:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  29:     goto   23_while_cond
l_test_22:
    jmp     l_test_exit            
    jmp     l_test_17               #  32:     goto   17
l_test_19_if_false:
l_test_17:
    call    dummyINTfunc            #  35:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     add    t5 <- t4, 28263
    movl    $28263, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     param  2 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  38:     &()    t6 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     param  1 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  40:     &()    t7 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  41:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  42:     call   t8 <- f2
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    leal    _str_1, %eax            #  43:     &()    t9 <- _str_1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  44:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  45:     call   WriteStr
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 9 of <array 10 of <array 3 of <array 7 of <array 6 of <char>>>>>>
    .long    5
    .long    9
    .long   10
    .long    3
    .long    7
    .long    6
    .skip 11340
v3:                                 # <array 9 of <array 10 of <array 10 of <array 10 of <array 8 of <int>>>>>>
    .long    5
    .long    9
    .long   10
    .long   10
    .long   10
    .long    8
    .skip 288000








    # end of global data section
    #-----------------------------------------

    .end
##################################################

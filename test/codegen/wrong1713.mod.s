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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   2:     goto   4
    movl    $1, %eax                #   3:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_5                  #   4:     goto   5
l_f0_4:
    movl    $0, %eax                #   6:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f0_5:
    movzbl  -15(%ebp), %eax         #   8:     assign v2 <- t12
    movb    %al, -16(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 64 of <array 11 of <array 61 of <array 89 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 47 of <array 48 of <array 26 of <array 29 of <int>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_5_while_cond:
    jmp     l_f1_6_while_body       #   5:     goto   6_while_body
    jmp     l_f1_6_while_body       #   6:     goto   6_while_body
    call    dummyBOOLfunc           #   7:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t10 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  11:     goto   5_while_cond
l_f1_4:
    movl    $100, %eax              #  13:     assign v3 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t29      <bool> %ebp-86 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 78 of <array 8 of <array 58 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 37 of <array 21 of <array 29 of <array 99 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 25 of <array 76 of <array 79 of <array 8 of <array 53 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 51 of <array 86 of <array 81 of <array 52 of <array 54 of <int>>>>>>> %ebp+20 ]
    #    -87(%ebp)   1  [ $v5       <char> %ebp-87 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $20806, %eax            #   4:     mul    t11 <- 20806, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t12 <- t11, 98778
    movl    $98778, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t15 <- t14, 64898
    movl    $64898, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  14:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t18 <- t17, 97739
    movl    $97739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  19:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  20:     add    t21 <- t20, 94830
    movl    $94830, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  24:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t25 <- v3, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $97, %eax               #  26:     assign @t25 <- 97
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  27:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  28:     call   t26 <- f0
    addl    $4, %esp               
    movb    %al, -77(%ebp)         
    call    ReadInt                 #  29:     call   t27 <- ReadInt
    movl    %eax, -84(%ebp)        
    jmp     l_f2_0                  #  30:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  33:     call   t28 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #  34:     param  0 <- t28
    pushl   %eax                   
    call    WriteChar               #  35:     call   WriteChar
    addl    $4, %esp               
    call    dummyBOOLfunc           #  36:     call   t29 <- dummyBOOLfunc
    movb    %al, -86(%ebp)         

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]
    #    -35(%ebp)   1  [ $t7       <char> %ebp-35 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]

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
    movl    $93596, %eax            #   0:     mul    t0 <- 93596, 54567
    movl    $54567, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 33910
    movl    $33910, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 11650
    movl    $11650, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t3 <- t2, 30701
    movl    $30701, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     div    t4 <- t3, 54976
    movl    $54976, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v0 <- t4
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #   9:     goto   5
    jmp     l_test_6_while_cond     #  10:     goto   6_while_cond
l_test_5:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
    call    dummyCHARfunc           #  14:     call   t6 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  15:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  16:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -35(%ebp)         
    movzbl  -35(%ebp), %eax         #  17:     if     t7 >= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #  18:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  20:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyINTfunc            #  23:     call   t8 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    call    dummyCHARfunc           #  24:     call   t9 <- dummyCHARfunc
    movb    %al, -41(%ebp)         

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

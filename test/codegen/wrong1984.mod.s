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
    #    -13(%ebp)   1  [ $t14      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t19      <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t14 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98552, %eax            #   1:     mul    t15 <- 98552, 50095
    movl    $50095, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t16 <- t15, 40044
    movl    $40044, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t17 <- t16, 84100
    movl    $84100, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t18 <- t17, 42036
    movl    $42036, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v1 <- t18
    movl    %eax, 8(%ebp)          
    call    dummyBOOLfunc           #   6:     call   t19 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    jmp     l_f0_2                  #   7:     goto   2
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t17      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t18      <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 19 of <array 61 of <array 87 of <array 30 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 67 of <array 82 of <array 35 of <array 7 of <array 45 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 36 of <array 64 of <array 97 of <array 100 of <array 42 of <char>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #   5:     call   t14 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     param  1 <- t14
    pushl   %eax                   
    movl    $56392, %eax            #   7:     mul    t15 <- 56392, 82174
    movl    $82174, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t16 <- t15, 2659
    movl    $2659, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t16
    pushl   %eax                   
    call    f0                      #  10:     call   t17 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t18 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  12:     if     t18 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_7_if_true          #  13:     goto   7_if_true
    jmp     l_f1_8_if_false         #  14:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  16:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t31      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t32      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t33      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t34      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t35      <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 53 of <array 54 of <array 86 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 35 of <array 44 of <array 3 of <array 52 of <array 77 of <int>>>>>>> %ebp+16 ]
    #   -101(%ebp)   1  [ $v4       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $20555, %eax            #   1:     if     20555 # 40859 goto 2_while_body
    movl    $40859, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyINTfunc            #   4:     call   t14 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     return t14
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    movl    $9902, %eax             #   8:     if     9902 >= 85640 goto 6
    movl    $85640, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
l_f2_6:
    movl    $1, %eax                #  10:     assign t15 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_8                  #  11:     goto   8
    movl    $0, %eax                #  12:     assign t15 <- 0
    movb    %al, -17(%ebp)         
l_f2_8:
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $69367, %eax            #  17:     mul    t17 <- 69367, t16
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t18 <- t17, 80132
    movl    $80132, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t20 <- t18, t19
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t21 <- t20, 16473
    movl    $16473, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  27:     mul    t23 <- t21, t22
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t24 <- t23, 80612
    movl    $80612, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  32:     mul    t26 <- t24, t25
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t27 <- t26, 40533
    movl    $40533, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  34:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  36:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  37:     add    t30 <- t28, t29
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t31 <- v1, t30
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -17(%ebp), %eax         #  39:     assign @t31 <- t15
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  40:     call   t32 <- ReadInt
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  41:     sub    t33 <- t32, 81008
    movl    $81008, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  42:     add    t34 <- t33, 25612
    movl    $25612, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  43:     add    t35 <- t34, 75016
    movl    $75016, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  44:     return t35
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t13      <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t5       <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t6       <char> %ebp-50 ]
    #    -56(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-56 ]
    #    -57(%ebp)   1  [ $t8       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $82510, %eax            #   0:     sub    t0 <- 82510, 92888
    movl    $92888, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 37515
    movl    $37515, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $33248, %eax            #   2:     add    t2 <- 33248, 56047
    movl    $56047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     sub    t3 <- t2, 15193
    movl    $15193, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     sub    t4 <- t3, 59543
    movl    $59543, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t1 <= t4 goto 1
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   6:     goto   2
l_test_1:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_test_3                #   9:     goto   3
l_test_2:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -49(%ebp)         
l_test_3:
    movzbl  -49(%ebp), %eax         #  13:     assign v0 <- t5
    movb    %al, v0                
l_test_6_while_cond:
    call    dummyCHARfunc           #  15:     call   t6 <- dummyCHARfunc
    movb    %al, -50(%ebp)         
    movl    $65925, %eax            #  16:     if     65925 # 79642 goto 13_if_true
    movl    $79642, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  17:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  19:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    movl    $97, %eax               #  23:     if     97 >= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  24:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  26:     goto   17
l_test_19_if_false:
l_test_17:
    leal    _str_1, %eax            #  29:     &()    t7 <- _str_1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  31:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_8                #  32:     goto   8
l_test_8:
    jmp     l_test_6_while_cond     #  34:     goto   6_while_cond
    movl    $1, %eax                #  35:     assign t8 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_test_25               #  36:     goto   25
    movl    $0, %eax                #  37:     assign t8 <- 0
    movb    %al, -57(%ebp)         
l_test_25:
    movzbl  -57(%ebp), %eax         #  39:     param  1 <- t8
    pushl   %eax                   
    movl    $66167, %eax            #  40:     add    t9 <- 66167, 4583
    movl    $4583, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  41:     sub    t10 <- t9, 44663
    movl    $44663, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     add    t11 <- t10, 34567
    movl    $34567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     add    t12 <- t11, 53353
    movl    $53353, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  44:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  45:     call   t13 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

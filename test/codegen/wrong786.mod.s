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
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
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
    #    -85(%ebp)   1  [ $t30      <bool> %ebp-85 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 5 of <array 6 of <array 10 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 7 of <array 3 of <array 5 of <array 6 of <char>>>>>>> %ebp+20 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   2:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   3:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $13278, %eax            #   4:     mul    t13 <- 13278, t12
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $38223, %eax            #   5:     div    t14 <- 38223, 79329
    movl    $79329, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t15 <- t13, t14
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     mul    t17 <- t15, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     add    t18 <- t17, 64190
    movl    $64190, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t20 <- t18, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $17466, %eax            #  16:     sub    t21 <- 17466, 73706
    movl    $73706, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  17:     add    t22 <- t20, t21
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  21:     mul    t24 <- t22, t23
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  22:     add    t25 <- t24, 34147
    movl    $34147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  23:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  26:     add    t28 <- t26, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t29 <- v1, t28
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $1, %eax                #  28:     assign @t29 <- 1
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  29:     call   t30 <- dummyBOOLfunc
    movb    %al, -85(%ebp)         

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <ptr(4) to <array 9 of <array 7 of <array 3 of <array 5 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t13      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t14      <ptr(4) to <array 10 of <array 5 of <array 6 of <array 10 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #   -18060(%ebp)  18024  [ $v0       <array 10 of <array 5 of <array 6 of <array 10 of <array 6 of <bool>>>>>> %ebp-18060 ]
    #   -23756(%ebp)  5694  [ $v1       <array 9 of <array 7 of <array 3 of <array 5 of <array 6 of <char>>>>>> %ebp-23756 ]
    #   -23757(%ebp)   1  [ $v2       <char> %ebp-23757 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $23748, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5937, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18060(%ebp)         # local array 'v0': 5 dimensions
    movl    $10,-18056(%ebp)        #   dimension 1: 10 elements
    movl    $5,-18052(%ebp)         #   dimension 2: 5 elements
    movl    $6,-18048(%ebp)         #   dimension 3: 6 elements
    movl    $10,-18044(%ebp)        #   dimension 4: 10 elements
    movl    $6,-18040(%ebp)         #   dimension 5: 6 elements
    movl    $5,-23756(%ebp)         # local array 'v1': 5 dimensions
    movl    $9,-23752(%ebp)         #   dimension 1: 9 elements
    movl    $7,-23748(%ebp)         #   dimension 2: 7 elements
    movl    $3,-23744(%ebp)         #   dimension 3: 3 elements
    movl    $5,-23740(%ebp)         #   dimension 4: 5 elements
    movl    $6,-23736(%ebp)         #   dimension 5: 6 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_4_while_cond:
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_4_while_cond       #   4:     goto   4_while_cond
l_f1_3:
    leal    -23756(%ebp), %eax      #   6:     &()    t12 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  3 <- t12
    pushl   %eax                   
    movl    $18241, %eax            #   8:     if     18241 >= 52029 goto 7
    movl    $52029, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $1, %eax                #  11:     assign t13 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_9                  #  12:     goto   9
l_f1_8:
    movl    $0, %eax                #  14:     assign t13 <- 0
    movb    %al, -17(%ebp)         
l_f1_9:
    movzbl  -17(%ebp), %eax         #  16:     param  2 <- t13
    pushl   %eax                   
    leal    -18060(%ebp), %eax      #  17:     &()    t14 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  1 <- t14
    pushl   %eax                   
    movl    $99, %eax               #  19:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  20:     call   t15 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
    movl    $684, %eax              #  23:     add    t16 <- 684, 16246
    movl    $16246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t17 <- t16, 53358
    movl    $53358, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $34262, %eax            #  25:     if     34262 = t17 goto 12_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  26:     goto   13_if_false
l_f1_12_if_true:
    movl    $100, %eax              #  28:     assign v2 <- 100
    movb    %al, -23757(%ebp)      
    jmp     l_f1_11                 #  29:     goto   11
l_f1_13_if_false:
l_f1_11:
l_f1_17_while_cond:
    jmp     l_f1_18_while_body      #  33:     goto   18_while_body
    jmp     l_f1_16                 #  34:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  36:     goto   17_while_cond
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $23748, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t14      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t15      <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyINTfunc            #   3:     call   t12 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
    leal    _str_1, %eax            #   8:     &()    t13 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t13
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    call    WriteLn                 #  11:     call   WriteLn
    movl    $98, %eax               #  12:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    call    f1                      #  13:     call   t14 <- f1
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  14:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f2_15_if_false        #  15:     goto   15_if_false
    jmp     l_f2_13                 #  16:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_5                  #  19:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    dummyCHARfunc           #  22:     call   t15 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $35820, %eax            #   3:     mul    t1 <- 35820, 14372
    movl    $14372, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t2 <- t1, 92501
    movl    $92501, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     div    t3 <- t2, 44010
    movl    $44010, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     mul    t4 <- t3, 26350
    movl    $26350, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     div    t5 <- t4, 58539
    movl    $58539, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     div    t6 <- t5, 9930
    movl    $9930, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     mul    t7 <- t6, 49974
    movl    $49974, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  10:     div    t8 <- t7, 57510
    movl    $57510, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  11:     mul    t9 <- t8, 53372
    movl    $53372, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  12:     mul    t10 <- t9, 86921
    movl    $86921, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     div    t11 <- t10, 62448
    movl    $62448, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $76301, %eax            #  14:     if     76301 > t11 goto 4_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #  15:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  17:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

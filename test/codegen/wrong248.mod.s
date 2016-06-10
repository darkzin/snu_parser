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
    #    -65(%ebp)   1  [ $t5       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 4 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 9 of <array 1 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 9 of <array 8 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $100, %eax              #   1:     if     100 <= 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -65(%ebp)         
l_f0_6:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $19826, %eax            #  12:     mul    t7 <- 19826, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t8 <- t7, 347
    movl    $347, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 70735
    movl    $70735, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 69116
    movl    $69116, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 18052
    movl    $18052, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  31:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  33:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -65(%ebp), %eax         #  34:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1_while_cond       #  35:     goto   1_while_cond
    call    dummyINTfunc            #  36:     call   t22 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
l_f0_10_while_cond:
l_f0_17_while_cond:
    movl    $100, %eax              #  39:     if     100 < 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  40:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  42:     goto   17_while_cond
l_f0_16:
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  45:     goto   21_while_cond
    jmp     l_f0_10_while_cond      #  46:     goto   10_while_cond

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
l_f1_3_while_body:
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #   9:     goto   9_while_cond
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_12_while_cond:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     if     t6 < 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:

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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 5 of <array 8 of <array 4 of <array 7 of <int>>>>>>> %ebp+20 ]

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
    movl    $13137, %eax            #   0:     add    t5 <- 13137, 22315
    movl    $22315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t6 <- t5, 2773
    movl    $2773, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $0, %eax                #   4:     if     0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
    movl    $61163, %eax            #   9:     return 61163
    jmp     l_f2_exit              
    call    WriteLn                 #  10:     call   WriteLn
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
l_f2_1:
    movl    $74358, %eax            #  13:     mul    t7 <- 74358, 25631
    movl    $25631, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     sub    t8 <- t7, 84000
    movl    $84000, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     sub    t9 <- t8, 91737
    movl    $91737, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t10 <- t9, 47277
    movl    $47277, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $70850, %eax            #  17:     if     70850 < t10 goto 11_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  18:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  20:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $98, %eax               #   3:     if     98 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   4:     goto   3_if_false
l_test_2_if_true:
    movl    $77750, %eax            #   6:     sub    t1 <- 77750, 68518
    movl    $68518, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t2 <- t1, 10331
    movl    $10331, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     sub    t3 <- t2, 55574
    movl    $55574, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     if     t3 <= 86850 goto 6
    movl    $86850, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6               
    jmp     l_test_7                #  10:     goto   7
l_test_6:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_8                #  13:     goto   8
l_test_7:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_8:
    movzbl  -29(%ebp), %eax         #  17:     assign v0 <- t4
    movb    %al, v0                
    jmp     l_test_1                #  18:     goto   1
l_test_3_if_false:
l_test_1:
l_test_11_while_cond:
    jmp     l_test_12_while_body    #  22:     goto   12_while_body
l_test_12_while_body:
    movl    $46375, %eax            #  24:     assign v1 <- 46375
    movl    %eax, v1               
    jmp     l_test_11_while_cond    #  25:     goto   11_while_cond
l_test_18_while_cond:
    jmp     l_test_17               #  27:     goto   17
    jmp     l_test_17               #  28:     goto   17
l_test_22_while_cond:
    jmp     l_test_21               #  30:     goto   21
    jmp     l_test_22_while_cond    #  31:     goto   22_while_cond
l_test_21:
    movl    $22082, %eax            #  33:     param  0 <- 22082
    pushl   %eax                   
    call    WriteInt                #  34:     call   WriteInt
    addl    $4, %esp               
l_test_26_while_cond:
    jmp     l_test_26_while_cond    #  36:     goto   26_while_cond
    jmp     l_test_18_while_cond    #  37:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

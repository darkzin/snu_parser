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
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t3       <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 2 of <array 8 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 3 of <array 9 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 6 of <array 9 of <array 3 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 10 of <array 10 of <array 7 of <array 10 of <bool>>>>>>> %ebp+20 ]
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
    movl    $65263, %eax            #   0:     if     65263 = 65810 goto 1
    movl    $65810, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -66(%ebp)         
l_f0_3:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $33056, %eax            #  11:     mul    t5 <- 33056, t4
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  12:     add    t6 <- t5, 71580
    movl    $71580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  16:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  17:     add    t9 <- t8, 69615
    movl    $69615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  21:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $74610, %eax            #  22:     sub    t12 <- 74610, 6488
    movl    $6488, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     sub    t13 <- t12, 22080
    movl    $22080, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t14 <- t13, 46703
    movl    $46703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t15 <- t11, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     add    t18 <- t17, 78423
    movl    $78423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  33:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  35:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -66(%ebp), %eax         #  36:     assign @t22 <- t3
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  38:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 6 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 4 of <array 3 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 10 of <array 4 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $0, %eax                #   0:     assign v3 <- 0
    movb    %al, 20(%ebp)          
    movl    $42386, %eax            #   1:     sub    t3 <- 42386, 65940
    movl    $65940, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $44422, %eax            #   2:     if     44422 > t3 goto 2_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    movl    $53765, %eax            #   5:     if     53765 >= 27123 goto 6_if_true
    movl    $27123, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $70298, %eax            #  14:     if     70298 = 83604 goto 14_if_true
    movl    $83604, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  15:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  17:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $19145, %eax            #  20:     assign v4 <- 19145
    movl    %eax, -24(%ebp)        
    jmp     l_f1_20_if_false        #  21:     goto   20_if_false
    jmp     l_f1_18                 #  22:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_1                  #  25:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $16506, %eax            #  28:     assign v4 <- 16506
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 5 of <array 10 of <array 5 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 4 of <array 2 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $98, %eax               #   5:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   7:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     if     t5 < 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_8                 
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f2_10:
    movzbl  -22(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v0 <- t1
    movb    %al, v0                
    movl    $0, %eax                #   4:     if     0 = 1 goto 4_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
l_test_4_if_true:
    movl    $83416, %eax            #   7:     if     83416 # 84269 goto 8_if_true
    movl    $84269, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_12               #  14:     goto   12
l_test_12:
l_test_16_while_cond:
    movl    $97, %eax               #  17:     if     97 > 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_17_while_body   
    jmp     l_test_15               #  18:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
    call    ReadInt                 #  22:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  23:     assign v1 <- 0
    movb    %al, v1                
l_test_22_while_cond:
    movl    $97, %eax               #  25:     if     97 >= 97 goto 23_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_23_while_body   
    jmp     l_test_21               #  26:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
l_test_21:
    jmp     l_test_3                #  30:     goto   3
l_test_5_if_false:
l_test_3:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

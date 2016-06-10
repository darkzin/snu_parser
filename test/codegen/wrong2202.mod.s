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
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t3       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 34 of <array 7 of <array 29 of <array 33 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 50 of <array 23 of <array 6 of <array 37 of <array 23 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 # 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   1:     goto   5
l_f0_4:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -54(%ebp)         
l_f0_6:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $14664, %eax            #  11:     mul    t5 <- 14664, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  12:     add    t6 <- t5, 44996
    movl    $44996, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  16:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  17:     add    t9 <- t8, 94147
    movl    $94147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  21:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t12 <- t11, 68530
    movl    $68530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t14, 8379
    movl    $8379, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -54(%ebp), %eax         #  33:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  34:     goto   0
l_f0_0:
    movl    $64094, %eax            #  36:     if     64094 # 67428 goto 9_if_true
    movl    $67428, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  37:     goto   10_if_false
l_f0_9_if_true:
    movl    $98, %eax               #  39:     return 98
    jmp     l_f0_exit              
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  41:     goto   14_while_cond
    jmp     l_f0_8                  #  42:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    dummyCHARfunc           #  45:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  46:     return t20
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 50 of <array 23 of <array 6 of <array 37 of <array 23 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 14 of <array 34 of <array 7 of <array 29 of <array 33 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 93 of <array 41 of <array 16 of <array 99 of <bool>>>>>>> %ebp+8 ]
    #    -34(%ebp)   1  [ $v1       <char> %ebp-34 ]
    #   -3188784(%ebp)  3188748  [ $v2       <array 14 of <array 34 of <array 7 of <array 29 of <array 33 of <bool>>>>>> %ebp-3188784 ]
    #   -9060708(%ebp)  5871924  [ $v3       <array 50 of <array 23 of <array 6 of <array 37 of <array 23 of <char>>>>>> %ebp-9060708 ]
    #   -9060709(%ebp)   1  [ $v4       <bool> %ebp-9060709 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9060700, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2265175, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3188784(%ebp)       # local array 'v2': 5 dimensions
    movl    $14,-3188780(%ebp)      #   dimension 1: 14 elements
    movl    $34,-3188776(%ebp)      #   dimension 2: 34 elements
    movl    $7,-3188772(%ebp)       #   dimension 3: 7 elements
    movl    $29,-3188768(%ebp)      #   dimension 4: 29 elements
    movl    $33,-3188764(%ebp)      #   dimension 5: 33 elements
    movl    $5,-9060708(%ebp)       # local array 'v3': 5 dimensions
    movl    $50,-9060704(%ebp)      #   dimension 1: 50 elements
    movl    $23,-9060700(%ebp)      #   dimension 2: 23 elements
    movl    $6,-9060696(%ebp)       #   dimension 3: 6 elements
    movl    $37,-9060692(%ebp)      #   dimension 4: 37 elements
    movl    $23,-9060688(%ebp)      #   dimension 5: 23 elements

    # function body
    leal    -9060708(%ebp), %eax    #   0:     &()    t3 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    movl    $97, %eax               #   2:     if     97 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_3:
    movzbl  -17(%ebp), %eax         #  10:     param  2 <- t4
    pushl   %eax                   
    movl    $81678, %eax            #  11:     if     81678 <= 94260 goto 5
    movl    $94260, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #  12:     goto   6
l_f1_5:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_7                  #  15:     goto   7
l_f1_6:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_7:
    movzbl  -18(%ebp), %eax         #  19:     param  1 <- t5
    pushl   %eax                   
    leal    -3188784(%ebp), %eax    #  20:     &()    t6 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  22:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  23:     assign v1 <- t7
    movb    %al, -34(%ebp)         
l_f1_10_while_cond:
    jmp     l_f1_11_while_body      #  25:     goto   11_while_body
l_f1_11_while_body:
    jmp     l_f1_14                 #  27:     goto   14
l_f1_14:
    call    ReadInt                 #  29:     call   t8 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_f1_10_while_cond      #  30:     goto   10_while_cond
    jmp     l_f1_19_if_true         #  31:     goto   19_if_true
l_f1_19_if_true:
l_f1_26_while_cond:
    jmp     l_f1_25                 #  34:     goto   25
    jmp     l_f1_26_while_cond      #  35:     goto   26_while_cond
l_f1_25:
    movl    $98, %eax               #  37:     if     98 > 100 goto 29
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_29                
    jmp     l_f1_30                 #  38:     goto   30
l_f1_29:
    movl    $1, %eax                #  40:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_31                 #  41:     goto   31
l_f1_30:
    movl    $0, %eax                #  43:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f1_31:
    movzbl  -33(%ebp), %eax         #  45:     assign v4 <- t9
    movb    %al, -9060709(%ebp)    
    jmp     l_f1_18                 #  46:     goto   18
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $9060700, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 43 of <array 68 of <array 56 of <array 72 of <array 37 of <char>>>>>>> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, -17(%ebp)         
l_f2_2_while_cond:
    movl    $61896, %eax            #   2:     if     61896 >= 59205 goto 3_while_body
    movl    $59205, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $98, %eax               #   5:     assign v1 <- 98
    movb    %al, -17(%ebp)         
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #   8:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_3_while_cond:
    movl    $42400, %eax            #   3:     add    t1 <- 42400, 12012
    movl    $12012, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 1574
    movl    $1574, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t2 <= 29676 goto 4_while_body
    movl    $29676, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_4_while_body    
    jmp     l_test_2                #   6:     goto   2
l_test_4_while_body:
    movl    $1, %eax                #   8:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_3_while_cond     #   9:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

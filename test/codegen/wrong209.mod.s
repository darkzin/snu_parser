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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 5 of <array 10 of <array 7 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 7 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 6 of <array 1 of <array 6 of <array 4 of <bool>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $78635, %eax            #   1:     if     78635 <= 18029 goto 2_if_true
    movl    $18029, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    movl    $73441, %eax            #   4:     assign v4 <- 73441
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $45968, %eax            #   8:     mul    t4 <- 45968, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   9:     add    t5 <- t4, 78862
    movl    $78862, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  13:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  14:     add    t8 <- t7, 36698
    movl    $36698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  18:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     add    t11 <- t10, 36238
    movl    $36238, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  23:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t14 <- t13, 58133
    movl    $58133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  29:     add    t18 <- v2, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $1, %eax                #  30:     assign @t18 <- 1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1                  #  31:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $5264, %eax             #  34:     if     5264 = 62249 goto 8_if_true
    movl    $62249, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  35:     goto   9_if_false
l_f0_8_if_true:
    call    ReadInt                 #  37:     call   t19 <- ReadInt
    movl    %eax, -52(%ebp)        
    jmp     l_f0_7                  #  38:     goto   7
l_f0_9_if_false:
l_f0_7:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 5 of <array 10 of <char>>>>>>> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    jmp     l_f1_1_while_cond       #   1:     goto   1_while_cond
    call    WriteLn                 #   2:     call   WriteLn
l_f1_7_while_cond:
    jmp     l_f1_6                  #   4:     goto   6
    movl    $98, %eax               #   5:     assign v1 <- 98
    movb    %al, -13(%ebp)         
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]

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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    jmp     l_f2_5                  #   3:     goto   5
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   9:     if     t2 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
l_f2_13_while_cond:
    movl    $72480, %eax            #  15:     add    t3 <- 72480, 64572
    movl    $64572, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t4 <- t3, 14091
    movl    $14091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t5 <- t4, 3703
    movl    $3703, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     sub    t6 <- t5, 21477
    movl    $21477, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     sub    t7 <- t6, 61267
    movl    $61267, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $28258, %eax            #  20:     if     28258 > t7 goto 14_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  21:     goto   12
l_f2_14_while_body:
l_f2_17_while_cond:
    movl    $99, %eax               #  24:     if     99 >= 100 goto 18_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_18_while_body     
    jmp     l_f2_16                 #  25:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  27:     goto   17_while_cond
l_f2_16:
l_f2_21_while_cond:
    jmp     l_f2_21_while_cond      #  30:     goto   21_while_cond
    jmp     l_f2_13_while_cond      #  31:     goto   13_while_cond
l_f2_12:
    call    ReadInt                 #  33:     call   t8 <- ReadInt
    movl    %eax, -40(%ebp)        

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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

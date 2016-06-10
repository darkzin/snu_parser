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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <char> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t2
    movb    %al, -29(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $81785, %eax            #   8:     mul    t3 <- 81785, 41435
    movl    $41435, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   9:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t5 <- t3, t4
    movl    -24(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]

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
    movl    $97, %eax               #   0:     if     97 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
    movl    $98, %eax               #   9:     return 98
    jmp     l_f1_exit              
l_f1_12_while_cond:
    movl    $97, %eax               #  11:     if     97 <= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_13_while_body     
    jmp     l_f1_11                 #  12:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  14:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_17_if_false        #  16:     goto   17_if_false
    jmp     l_f1_15                 #  17:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_21_if_false        #  24:     goto   21_if_false
l_f1_23_while_cond:
    movl    $100, %eax              #  26:     if     100 <= 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_24_while_body     
    jmp     l_f1_22                 #  27:     goto   22
l_f1_24_while_body:
l_f1_27_while_cond:
    movl    $97, %eax               #  30:     if     97 >= 97 goto 28_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_28_while_body     
    jmp     l_f1_26                 #  31:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  33:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_23_while_cond      #  35:     goto   23_while_cond
l_f1_22:
    jmp     l_f1_19                 #  37:     goto   19
l_f1_21_if_false:
l_f1_19:

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
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <bool> %ebp-50 ]
    #    -51(%ebp)   1  [ $t20      <char> %ebp-51 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 50 of <array 36 of <array 58 of <array 45 of <array 57 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f2_1_while_cond:
l_f2_4_while_cond:
    movl    $78049, %eax            #   2:     if     78049 > 82406 goto 7_if_true
    movl    $82406, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   3:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   5:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $15342, %eax            #   8:     if     15342 <= 76040 goto 11
    movl    $76040, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #   9:     goto   12
l_f2_11:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -50(%ebp)         
    jmp     l_f2_13                 #  12:     goto   13
l_f2_12:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -50(%ebp)         
l_f2_13:
    movzbl  -50(%ebp), %eax         #  16:     assign v2 <- t2
    movb    %al, 16(%ebp)          
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $10503, %eax            #  20:     mul    t4 <- 10503, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     add    t5 <- t4, 61147
    movl    $61147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  25:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  26:     add    t8 <- t7, 77038
    movl    $77038, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  30:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     add    t11 <- t10, 73969
    movl    $73969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  34:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  35:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     add    t14 <- t13, 34695
    movl    $34695, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  39:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  40:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $74717, %eax            #  42:     assign @t18 <- 74717
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_4_while_cond       #  43:     goto   4_while_cond
    jmp     l_f2_1_while_cond       #  44:     goto   1_while_cond
    call    dummyCHARfunc           #  45:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    call    dummyCHARfunc           #  46:     call   t20 <- dummyCHARfunc
    movb    %al, -51(%ebp)         

l_f2_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    call    f1                      #   0:     call   t0 <- f1
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_2                #   2:     goto   2
    jmp     l_test_2                #   3:     goto   2
    jmp     l_test_2                #   4:     goto   2
    jmp     l_test_2                #   5:     goto   2
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   9:     goto   4
l_test_3:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  13:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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

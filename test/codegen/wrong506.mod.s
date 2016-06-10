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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 4 of <array 7 of <array 5 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f0_exit              
    movl    $18533, %eax            #   1:     add    t1 <- 18533, 91208
    movl    $91208, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t2 <- t1, 95094
    movl    $95094, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 26394
    movl    $26394, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t3 <= 53208 goto 2
    movl    $53208, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
l_f0_3:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_4:
    movzbl  -25(%ebp), %eax         #  12:     assign v0 <- t4
    movb    %al, 8(%ebp)           
l_f0_7_while_cond:
    call    dummyBOOLfunc           #  14:     call   t5 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  15:     if     t5 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_while_body:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  19:     goto   9
    jmp     l_f0_10_while_cond      #  20:     goto   10_while_cond
l_f0_9:
    call    WriteLn                 #  22:     call   WriteLn
l_f0_14_while_cond:
    movl    $100, %eax              #  24:     if     100 # 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_15_while_body     
    jmp     l_f0_13                 #  25:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  27:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_7_while_cond       #  29:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 9 of <array 8 of <array 4 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 8 of <array 1 of <array 9 of <array 1 of <bool>>>>>>> %ebp+20 ]

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
    movl    $53832, %eax            #   0:     add    t1 <- 53832, 92698
    movl    $92698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 36841
    movl    $36841, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 88050
    movl    $88050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t4 <- t3, 96055
    movl    $96055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t4
    jmp     l_f1_exit              
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f1_3_if_true          #   6:     goto   3_if_true
    jmp     l_f1_4_if_false         #   7:     goto   4_if_false
l_f1_3_if_true:
    movl    $47624, %eax            #   9:     return 47624
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t2       <bool> %ebp-54 ]
    #    -55(%ebp)   1  [ $t20      <char> %ebp-55 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 1 of <array 6 of <array 10 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]

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
    movl    $66070, %eax            #   0:     add    t1 <- 66070, 21723
    movl    $21723, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $76807, %eax            #   1:     if     76807 > t1 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -54(%ebp)         
l_f2_3:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $16651, %eax            #  12:     mul    t4 <- 16651, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  13:     add    t5 <- t4, 34005
    movl    $34005, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  17:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  18:     add    t8 <- t7, 68203
    movl    $68203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  22:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     add    t11 <- t10, 2537
    movl    $2537, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t14 <- t13, 23953
    movl    $23953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  31:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t18 <- v0, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -54(%ebp), %eax         #  34:     assign @t18 <- t2
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_10                 #  35:     goto   10
    movl    $1, %eax                #  36:     assign t19 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_11                 #  37:     goto   11
l_f2_10:
    movl    $0, %eax                #  39:     assign t19 <- 0
    movb    %al, -53(%ebp)         
l_f2_11:
    movzbl  -53(%ebp), %eax         #  41:     if     t19 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  42:     goto   7_if_false
l_f2_6_if_true:
    movl    $73485, %eax            #  44:     assign v3 <- 73485
    movl    %eax, -92(%ebp)        
    jmp     l_f2_5                  #  45:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    dummyCHARfunc           #  48:     call   t20 <- dummyCHARfunc
    movb    %al, -55(%ebp)         
    movzbl  -55(%ebp), %eax         #  49:     return t20
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $98, %eax               #   9:     if     98 = 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    movl    $0, %eax                #  18:     if     0 = 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  21:     goto   13
l_test_15_if_false:
l_test_13:
l_test_18_while_cond:
    movl    $97, %eax               #  25:     if     97 >= 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  26:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  28:     goto   18_while_cond
l_test_17:
    jmp     l_test_1_while_cond     #  30:     goto   1_while_cond
l_test_0:
l_test_22_while_cond:
    movl    $98, %eax               #  33:     if     98 <= 98 goto 23_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  34:     goto   21
l_test_23_while_body:
    movl    $15128, %eax            #  36:     assign v1 <- 15128
    movl    %eax, v1               
    jmp     l_test_22_while_cond    #  37:     goto   22_while_cond
l_test_21:
    jmp     l_test_28_if_false      #  39:     goto   28_if_false
l_test_32_while_cond:
    movl    $99, %eax               #  41:     if     99 # 98 goto 33_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_33_while_body   
    jmp     l_test_31               #  42:     goto   31
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  44:     goto   32_while_cond
l_test_31:
    jmp     l_test_26               #  46:     goto   26
l_test_28_if_false:
l_test_26:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

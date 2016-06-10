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
    #    -57(%ebp)   1  [ $t3       <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t4       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 7 of <array 1 of <array 2 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 3 of <array 4 of <array 4 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $77978, %eax            #   0:     if     77978 <= 66796 goto 1_if_true
    movl    $66796, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    movl    $1, %eax                #   5:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #   9:     if     100 < 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  10:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  12:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $81650, %eax            #  15:     if     81650 >= 19397 goto 16
    movl    $19397, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_16                
    jmp     l_f0_17                 #  16:     goto   17
l_f0_16:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f0_18                 #  19:     goto   18
l_f0_17:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -57(%ebp)         
l_f0_18:
    movzbl  -57(%ebp), %eax         #  23:     return t3
    jmp     l_f0_exit              
l_f0_21_while_cond:
    movl    $97, %eax               #  25:     if     97 <= 100 goto 22_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_22_while_body     
    jmp     l_f0_20                 #  26:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  28:     goto   21_while_cond
l_f0_20:
    call    dummyBOOLfunc           #  30:     call   t4 <- dummyBOOLfunc
    movb    %al, -58(%ebp)         
    movl    $2, %eax                #  31:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $1993, %eax             #  34:     mul    t6 <- 1993, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  35:     add    t7 <- t6, 95324
    movl    $95324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  36:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  39:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  40:     add    t10 <- t9, 15632
    movl    $15632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  44:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  45:     add    t13 <- t12, 21336
    movl    $21336, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  49:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  50:     add    t16 <- t15, 5837
    movl    $5837, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  51:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  53:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  54:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  55:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $92585, %eax            #  56:     assign @t20 <- 92585
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_27_while_cond:
    movl    $99, %eax               #  58:     if     99 = 99 goto 28_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_28_while_body     
    jmp     l_f0_26                 #  59:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  61:     goto   27_while_cond
l_f0_26:
    jmp     l_f0_32_if_false        #  63:     goto   32_if_false
    jmp     l_f0_30                 #  64:     goto   30
l_f0_32_if_false:
l_f0_30:
l_f0_34_while_cond:
    movl    $97, %eax               #  68:     if     97 = 100 goto 35_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_35_while_body     
    jmp     l_f0_33                 #  69:     goto   33
l_f0_35_while_body:
    jmp     l_f0_34_while_cond      #  71:     goto   34_while_cond
l_f0_33:
    jmp     l_f0_8                  #  73:     goto   8
l_f0_8:
    call    WriteLn                 #  75:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 3 of <array 7 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 4 of <array 5 of <array 7 of <array 2 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $98, %eax               #   0:     if     98 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $67325, %eax            #  11:     add    t3 <- 67325, 44398
    movl    $44398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v2 <- t3
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  13:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 8 of <array 8 of <array 8 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 9 of <array 9 of <array 5 of <array 6 of <bool>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $21267, %eax            #   4:     if     21267 = 63798 goto 5_if_true
    movl    $63798, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $19647, %eax            #  10:     if     19647 >= 4437 goto 9_if_true
    movl    $4437, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
    jmp     l_f2_12                 #  17:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_1_while_cond       #  20:     goto   1_while_cond
l_f2_0:
    movl    $81043, %eax            #  22:     assign v2 <- 81043
    movl    %eax, 16(%ebp)         
    call    ReadInt                 #  23:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    WriteLn                 #   2:     call   WriteLn
    call    WriteLn                 #   3:     call   WriteLn
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     assign v0 <- t2
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_7_while_body     #   7:     goto   7_while_body
    jmp     l_test_7_while_body     #   8:     goto   7_while_body
    jmp     l_test_7_while_body     #   9:     goto   7_while_body
    jmp     l_test_5                #  10:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:

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

    # scope: test
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

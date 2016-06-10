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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 40 of <array 69 of <array 6 of <array 24 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <char> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v2 <- t5
    movb    %al, -19(%ebp)         
    jmp     l_f0_6                  #   3:     goto   6
    jmp     l_f0_6                  #   4:     goto   6
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f0_8:
    movl    $0, %eax                #  12:     if     0 = t6 goto 3_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #  13:     goto   4_if_false
l_f0_3_if_true:
l_f0_13_while_cond:
    movl    $96232, %eax            #  16:     if     96232 >= 45335 goto 14_while_body
    movl    $45335, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14_while_body     
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  19:     goto   13_while_cond
l_f0_12:
    movl    $100, %eax              #  21:     if     100 > 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  22:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  24:     goto   16
l_f0_18_if_false:
l_f0_16:
l_f0_21_while_cond:
    jmp     l_f0_20                 #  28:     goto   20
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_2                  #  31:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 98 of <array 60 of <array 85 of <array 17 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $34621, %eax            #   0:     mul    t4 <- 34621, 49712
    movl    $49712, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v3 <- t4
    movl    %eax, -24(%ebp)        
    movl    $42460, %eax            #   2:     assign v3 <- 42460
    movl    %eax, -24(%ebp)        
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_4                  #   4:     goto   4
l_f1_3:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_5                  #   7:     goto   5
l_f1_4:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_5:
    movzbl  -17(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              

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
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 45 of <array 83 of <array 9 of <array 78 of <array 76 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 53 of <array 37 of <array 65 of <array 95 of <char>>>>>>> %ebp+16 ]
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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
l_f2_1_if_true:
    movl    $8386, %eax             #   2:     return 8386
    jmp     l_f2_exit              
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    $99, %eax               #   4:     if     99 >= 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   5:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_0:
    movl    $90631, %eax            #  12:     return 90631
    jmp     l_f2_exit              
    movl    $39008, %eax            #  13:     assign v4 <- 39008
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $88395, %eax            #  17:     mul    t6 <- 88395, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  18:     add    t7 <- t6, 98481
    movl    $98481, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  22:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  23:     add    t10 <- t9, 44120
    movl    $44120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  27:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t13 <- t12, 36006
    movl    $36006, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  31:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  32:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t16 <- t15, 22923
    movl    $22923, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  35:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  36:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  38:     add    t20 <- v3, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $98, %eax               #  39:     assign @t20 <- 98
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  40:     call   t21 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    jmp     l_f2_10                 #  41:     goto   10
l_f2_10:
l_f2_18_while_cond:
    jmp     l_f2_22_if_false        #  44:     goto   22_if_false
    jmp     l_f2_20                 #  45:     goto   20
l_f2_22_if_false:
l_f2_20:
    movl    $50963, %eax            #  48:     return 50963
    jmp     l_f2_exit              
    jmp     l_f2_24                 #  49:     goto   24
l_f2_24:
    movl    $58347, %eax            #  51:     return 58347
    jmp     l_f2_exit              
    movl    $87830, %eax            #  52:     if     87830 > 97835 goto 29_if_true
    movl    $97835, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_29_if_true        
    jmp     l_f2_30_if_false        #  53:     goto   30_if_false
l_f2_29_if_true:
    jmp     l_f2_28                 #  55:     goto   28
l_f2_30_if_false:
l_f2_28:
    jmp     l_f2_18_while_cond      #  58:     goto   18_while_cond

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
    jmp     l_test_exit            
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_2_if_true        #   2:     goto   2_if_true
    jmp     l_test_2_if_true        #   3:     goto   2_if_true
l_test_2_if_true:
    call    ReadInt                 #   5:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_1                #   8:     goto   1
l_test_1:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
l_test_13_while_cond:
    jmp     l_test_12               #  13:     goto   12
    jmp     l_test_16               #  14:     goto   16
l_test_16:
    movl    $57790, %eax            #  16:     if     57790 > 68684 goto 20
    movl    $68684, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_20              
    jmp     l_test_21               #  17:     goto   21
l_test_20:
    movl    $1, %eax                #  19:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_22               #  20:     goto   22
l_test_21:
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_22:
    movzbl  -19(%ebp), %eax         #  24:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_13_while_cond    #  25:     goto   13_while_cond
l_test_12:
    movl    $71340, %eax            #  27:     param  0 <- 71340
    pushl   %eax                   
    call    WriteInt                #  28:     call   WriteInt
    addl    $4, %esp               

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

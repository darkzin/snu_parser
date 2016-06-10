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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 7 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 1 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -17(%ebp)   1  [ $v4       <bool> %ebp-17 ]

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
    movl    $100, %eax              #   0:     if     100 <= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v4 <- t4
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $45098, %eax            #  10:     if     45098 <= 86999 goto 7_if_true
    movl    $86999, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  11:     goto   8_if_false
l_f0_7_if_true:
    call    dummyBOOLfunc           #  13:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  14:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
l_f0_13_while_cond:
    movl    $98, %eax               #  16:     if     98 >= 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14_while_body     
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  19:     goto   13_while_cond
l_f0_12:
    movl    $16957, %eax            #  21:     if     16957 < 26676 goto 17_if_true
    movl    $26676, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  22:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  24:     goto   16
l_f0_18_if_false:
l_f0_16:
    movl    $97, %eax               #  27:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  28:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 1 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 7 of <array 3 of <int>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 2 of <array 5 of <array 4 of <array 5 of <char>>>>>>> %ebp+20 ]
    #   -30360(%ebp)  30264  [ $v4       <array 10 of <array 6 of <array 6 of <array 7 of <array 3 of <int>>>>>> %ebp-30360 ]
    #   -30528(%ebp)  168  [ $v5       <array 1 of <array 1 of <array 6 of <array 2 of <array 3 of <int>>>>>> %ebp-30528 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $30516, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7629, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-30360(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-30356(%ebp)        #   dimension 1: 10 elements
    movl    $6,-30352(%ebp)         #   dimension 2: 6 elements
    movl    $6,-30348(%ebp)         #   dimension 3: 6 elements
    movl    $7,-30344(%ebp)         #   dimension 4: 7 elements
    movl    $3,-30340(%ebp)         #   dimension 5: 3 elements
    movl    $5,-30528(%ebp)         # local array 'v5': 5 dimensions
    movl    $1,-30524(%ebp)         #   dimension 1: 1 elements
    movl    $1,-30520(%ebp)         #   dimension 2: 1 elements
    movl    $6,-30516(%ebp)         #   dimension 3: 6 elements
    movl    $2,-30512(%ebp)         #   dimension 4: 2 elements
    movl    $3,-30508(%ebp)         #   dimension 5: 3 elements

    # function body
    movl    $22202, %eax            #   0:     param  3 <- 22202
    pushl   %eax                   
    movl    $5960, %eax             #   1:     param  2 <- 5960
    pushl   %eax                   
    leal    -30528(%ebp), %eax      #   2:     &()    t4 <- v5
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     param  1 <- t4
    pushl   %eax                   
    leal    -30360(%ebp), %eax      #   4:     &()    t5 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   5:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   6:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -81(%ebp)         
    movl    $41152, %eax            #   7:     if     41152 >= 8592 goto 2_if_true
    movl    $8592, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   8:     goto   3_if_false
l_f1_2_if_true:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $60664, %eax            #  13:     mul    t8 <- 60664, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  14:     add    t9 <- t8, 95642
    movl    $95642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 95120
    movl    $95120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 75972
    movl    $75972, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  28:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t18 <- t17, 5663
    movl    $5663, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  32:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  34:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $100, %eax              #  35:     assign @t22 <- 100
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  36:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movl    $72437, %eax            #  37:     return 72437
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  38:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_9_while_cond:
    movl    $87864, %eax            #  42:     add    t24 <- 87864, 90224
    movl    $90224, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  43:     if     t24 <= 69007 goto 10_while_body
    movl    $69007, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  44:     goto   8
l_f1_10_while_body:
    movl    $59147, %eax            #  46:     return 59147
    jmp     l_f1_exit              
l_f1_14_while_cond:
    movl    $98, %eax               #  48:     if     98 <= 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  49:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  51:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_9_while_cond       #  53:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $30516, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   4:     goto   2_while_cond
    movl    $0, %eax                #   5:     assign v1 <- 0
    movb    %al, 12(%ebp)          
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #   7:     goto   12_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    call    ReadInt                 #  10:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_18_while_cond:
    jmp     l_f2_17                 #  12:     goto   17
    jmp     l_f2_18_while_cond      #  13:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_7                  #  15:     goto   7
l_f2_7:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   4:     if     100 > t2 goto 4_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    movl    $99, %eax               #   7:     if     99 <= 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  10:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_3_while_cond     #  13:     goto   3_while_cond
l_test_2:
    movl    $98006, %eax            #  15:     if     98006 < 46223 goto 11_if_true
    movl    $46223, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  16:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    jmp     l_test_10               #  19:     goto   10
l_test_12_if_false:
l_test_10:
l_test_16_while_cond:
    jmp     l_test_15               #  23:     goto   15
    movl    $100, %eax              #  24:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  25:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #  26:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  27:     call   WriteChar
    addl    $4, %esp               
    movl    $41155, %eax            #  28:     assign v0 <- 41155
    movl    %eax, v0               
    call    dummyBOOLfunc           #  29:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_16_while_cond    #  30:     goto   16_while_cond
l_test_15:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

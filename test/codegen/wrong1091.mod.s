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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t25      <char> %ebp-70 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 3 of <array 71 of <array 83 of <array 30 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 48 of <array 34 of <array 43 of <array 11 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 15 of <array 38 of <array 83 of <array 63 of <array 88 of <int>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v5       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v6       <bool> %ebp-89 ]

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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $84871, %eax            #   8:     mul    t8 <- 84871, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   9:     add    t9 <- t8, 62240
    movl    $62240, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  13:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t12 <- t11, 98646
    movl    $98646, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t15 <- t14, 98797
    movl    $98797, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t18 <- t17, 1384
    movl    $1384, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $77848, %eax            #  30:     assign @t22 <- 77848
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  32:     goto   1_while_cond
l_f0_0:
    movl    $47868, %eax            #  34:     if     47868 < 88209 goto 8_if_true
    movl    $88209, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  35:     goto   9_if_false
l_f0_8_if_true:
    call    dummyINTfunc            #  37:     call   t23 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $63840, %eax            #  38:     if     63840 <= t23 goto 12
    movl    -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #  39:     goto   13
l_f0_12:
    movl    $1, %eax                #  41:     assign t24 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f0_14                 #  42:     goto   14
l_f0_13:
    movl    $0, %eax                #  44:     assign t24 <- 0
    movb    %al, -69(%ebp)         
l_f0_14:
    movzbl  -69(%ebp), %eax         #  46:     assign v6 <- t24
    movb    %al, -89(%ebp)         
    jmp     l_f0_7                  #  47:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyCHARfunc           #  50:     call   t25 <- dummyCHARfunc
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         #  51:     assign v3 <- t25
    movb    %al, 16(%ebp)          

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 89 of <array 64 of <array 55 of <array 49 of <int>>>>>>> %ebp+12 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $54472, %eax            #   8:     sub    t7 <- 54472, 7729
    movl    $7729, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_13_if_false        #  10:     goto   13_if_false
    jmp     l_f1_11                 #  11:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_16_if_false        #  14:     goto   16_if_false
    jmp     l_f1_14                 #  15:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_8                  #  18:     goto   8
l_f1_8:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    movl    $1528, %eax             #   0:     assign v1 <- 1528
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t7
    movb    %al, -21(%ebp)         
    jmp     l_f2_16                 #  10:     goto   16
    jmp     l_f2_10                 #  11:     goto   10
l_f2_16:
    jmp     l_f2_10                 #  13:     goto   10
    jmp     l_f2_10                 #  14:     goto   10
    jmp     l_f2_10                 #  15:     goto   10
l_f2_10:
    movl    $1, %eax                #  17:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  18:     goto   12
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  21:     assign v2 <- t8
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <char> %ebp-26 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  13:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_9                #  14:     goto   9
l_test_9:
    call    dummyINTfunc            #  16:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $20537, %eax            #  17:     div    t4 <- 20537, t3
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #  19:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  20:     call   t5 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_test_18_while_cond:
    movl    $99, %eax               #  22:     if     99 # 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_19_while_body   
    jmp     l_test_17               #  23:     goto   17
l_test_19_while_body:
    jmp     l_test_23_if_false      #  25:     goto   23_if_false
l_test_25_while_cond:
    jmp     l_test_24               #  27:     goto   24
    jmp     l_test_25_while_cond    #  28:     goto   25_while_cond
l_test_24:
    call    dummyCHARfunc           #  30:     call   t6 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_test_21               #  31:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_18_while_cond    #  34:     goto   18_while_cond
l_test_17:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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

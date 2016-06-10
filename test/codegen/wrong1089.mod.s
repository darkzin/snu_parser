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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 <= t1 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $4937, %eax             #   7:     return 4937
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  10:     goto   10_while_cond
    jmp     l_f0_4                  #  11:     goto   4
l_f0_4:
    movl    $30937, %eax            #  13:     sub    t3 <- 30937, 70058
    movl    $70058, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     return t3
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 92 of <array 24 of <array 50 of <array 45 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 79 of <array 15 of <array 14 of <array 36 of <char>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $98, %eax               #   2:     if     98 < 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_8_while_cond:
    movl    $99, %eax               #   9:     if     99 < 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_9_while_body      
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_while_body:
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  13:     goto   12_while_cond
    movl    $100, %eax              #  14:     assign v3 <- 100
    movb    %al, -81(%ebp)         
    jmp     l_f1_8_while_cond       #  15:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  20:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $32320, %eax            #  24:     mul    t3 <- 32320, t2
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t4 <- t3, 35119
    movl    $35119, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  29:     mul    t6 <- t4, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     add    t7 <- t6, 61006
    movl    $61006, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  34:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  35:     add    t10 <- t9, 5531
    movl    $5531, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  39:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  40:     add    t13 <- t12, 5337
    movl    $5337, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  43:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  44:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  45:     add    t17 <- v2, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  46:     assign @t17 <- t1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    movl    $16554, %eax            #   4:     assign v0 <- 16554
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t1 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   7:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_3_if_true        #   3:     goto   3_if_true
    jmp     l_test_3_if_true        #   4:     goto   3_if_true
l_test_3_if_true:
    jmp     l_test_2                #   6:     goto   2
l_test_2:
l_test_9_while_cond:
    movl    $98, %eax               #   9:     if     98 # 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    movl    $42347, %eax            #  12:     assign v0 <- 42347
    movl    %eax, v0               
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    movl    $1, %eax                #  16:     if     1 = 0 goto 15
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  17:     goto   16
l_test_15:
    movl    $1, %eax                #  19:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_17               #  20:     goto   17
l_test_16:
    movl    $0, %eax                #  22:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_17:
    movzbl  -13(%ebp), %eax         #  24:     assign v1 <- t0
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

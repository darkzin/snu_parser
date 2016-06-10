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
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    movl    $8570, %eax             #   0:     sub    t4 <- 8570, 7149
    movl    $7149, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
l_f0_2_while_cond:
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t5 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   9:     goto   2_while_cond
l_f0_1:
    movl    $99, %eax               #  11:     if     99 <= 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7                 
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_9                  #  15:     goto   9
l_f0_8:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f0_9:
    movzbl  -18(%ebp), %eax         #  19:     assign v2 <- t6
    movb    %al, -19(%ebp)         

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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t4       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t6       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t7       <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 7 of <array 4 of <array 8 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   2:     if     t4 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3                 
    jmp     l_f1_0                  #   3:     goto   0
l_f1_3:
    jmp     l_f1_0                  #   5:     goto   0
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $53839, %eax            #   8:     add    t5 <- 53839, 75757
    movl    $75757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $80693, %eax            #   9:     if     80693 > t5 goto 5
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #  10:     goto   6
l_f1_5:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f1_7                  #  13:     goto   7
l_f1_6:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -77(%ebp)         
l_f1_7:
    movzbl  -77(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              
    movl    $1, %eax                #  18:     assign t7 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f1_12                 #  19:     goto   12
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -78(%ebp)         
l_f1_12:
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $37081, %eax            #  25:     mul    t9 <- 37081, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  26:     add    t10 <- t9, 53978
    movl    $53978, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  30:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     add    t13 <- t12, 49661
    movl    $49661, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  35:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     add    t16 <- t15, 45579
    movl    $45579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  40:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  41:     add    t19 <- t18, 69650
    movl    $69650, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  42:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  43:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  44:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  45:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  46:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -78(%ebp), %eax         #  47:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 6 of <array 1 of <array 6 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 5 of <array 7 of <array 10 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 6 of <array 2 of <array 8 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v5       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 >= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
    movl    $93276, %eax            #  10:     if     93276 < 63975 goto 6
    movl    $63975, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f2_8:
    movzbl  -15(%ebp), %eax         #  18:     return t6
    jmp     l_f2_exit              
    movl    $97, %eax               #  19:     assign v5 <- 97
    movb    %al, -16(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    movl    $21515, %eax            #   5:     if     21515 > 17688 goto 4
    movl    $17688, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4               
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_6                #   9:     goto   6
l_test_5:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_6:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  20:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

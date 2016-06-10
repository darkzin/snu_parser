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
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $86261, %eax            #   1:     if     86261 < 39542 goto 2_while_body
    movl    $39542, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $70471, %eax            #   4:     sub    t4 <- 70471, 34642
    movl    $34642, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t5 <- t4, 54247
    movl    $54247, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $53039, %eax            #  10:     mul    t6 <- 53039, 73379
    movl    $73379, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     div    t7 <- t6, 34477
    movl    $34477, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     mul    t8 <- t7, 42887
    movl    $42887, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     div    t9 <- t8, 21119
    movl    $21119, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  14:     add    t10 <- t9, 49021
    movl    $49021, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     sub    t11 <- t10, 88555
    movl    $88555, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     if     t11 # 54563 goto 7_while_body
    movl    $54563, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  17:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  19:     goto   6_while_cond
l_f0_5:
    movl    $79741, %eax            #  21:     if     79741 <= 93849 goto 10_if_true
    movl    $93849, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  22:     goto   11_if_false
l_f0_10_if_true:
    movl    $99, %eax               #  24:     if     99 >= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  25:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  27:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    dummyINTfunc            #  30:     call   t12 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f0_9                  #  31:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 31 of <array 43 of <array 13 of <array 72 of <char>>>>>>> %ebp+12 ]

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
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $74581, %eax            #   3:     return 74581
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_2_while_cond       #   5:     goto   2_while_cond
    jmp     l_f1_7_if_true          #   6:     goto   7_if_true
l_f1_7_if_true:
    movl    $99, %eax               #   8:     if     99 >= 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #   9:     goto   12
l_f1_11:
    movl    $1, %eax                #  11:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_13                 #  12:     goto   13
l_f1_12:
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f1_13:
    movzbl  -18(%ebp), %eax         #  16:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    jmp     l_f1_6                  #  17:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 89 of <array 37 of <array 73 of <array 52 of <array 15 of <char>>>>>>> %ebp+12 ]
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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 < 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
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
    movl    $100, %eax              #  10:     if     100 = 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_6                 
l_f2_6:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_8                  #  13:     goto   8
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f2_8:
    movzbl  -15(%ebp), %eax         #  16:     assign v2 <- t6
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  17:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 1 of <array 31 of <array 43 of <array 13 of <array 72 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    leal    v0, %eax                #   0:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t0
    pushl   %eax                   
    jmp     l_test_10               #   2:     goto   10
    jmp     l_test_10               #   3:     goto   10
    jmp     l_test_10               #   4:     goto   10
    jmp     l_test_5                #   5:     goto   5
l_test_10:
    jmp     l_test_5                #   7:     goto   5
l_test_5:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #  10:     goto   7
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movzbl  -17(%ebp), %eax         #  13:     if     t1 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #  14:     goto   2
l_test_1:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_3                #  17:     goto   3
l_test_2:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_3:
    movzbl  -18(%ebp), %eax         #  21:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  22:     call   t3 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
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
v0:                                 # <array 1 of <array 31 of <array 43 of <array 13 of <array 72 of <char>>>>>>
    .long    5
    .long    1
    .long   31
    .long   43
    .long   13
    .long   72
    .skip 1247688








    # end of global data section
    #-----------------------------------------

    .end
##################################################

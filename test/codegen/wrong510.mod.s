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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
l_f0_1_while_cond:
    movl    $38090, %eax            #   1:     mul    t11 <- 38090, 5516
    movl    $5516, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t12 <- t11, 66155
    movl    $66155, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t13 <- t12, 5363
    movl    $5363, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $35983, %eax            #   4:     if     35983 # t13 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   9:     if     100 = 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #  10:     goto   6
l_f0_5:
    movl    $1, %eax                #  12:     assign t14 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_7                  #  13:     goto   7
l_f0_6:
    movl    $0, %eax                #  15:     assign t14 <- 0
    movb    %al, -25(%ebp)         
l_f0_7:
    movzbl  -25(%ebp), %eax         #  17:     assign v1 <- t14
    movb    %al, 8(%ebp)           
l_f0_10_while_cond:
    jmp     l_f0_9                  #  19:     goto   9
    movl    $0, %eax                #  20:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_10_while_cond      #  21:     goto   10_while_cond
l_f0_9:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 7 of <array 9 of <array 7 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 10 of <array 3 of <array 6 of <array 4 of <char>>>>>>> %ebp+20 ]

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
    movl    $96217, %eax            #   0:     mul    t11 <- 96217, 52431
    movl    $52431, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t12 <- t11, 29760
    movl    $29760, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $92377, %eax            #   2:     sub    t13 <- 92377, t12
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t13
    jmp     l_f1_exit              
    movl    $34941, %eax            #   4:     if     34941 > 80549 goto 2_if_true
    movl    $80549, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_5:
    jmp     l_f1_8                  #   9:     goto   8
l_f1_8:
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_12_while_cond:
    call    dummyBOOLfunc           #  15:     call   t14 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  16:     if     t14 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  18:     goto   12_while_cond

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 9 of <array 2 of <array 5 of <int>>>>>>> %ebp+12 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
l_f2_1_if_true:
    movl    $47189, %eax            #   2:     return 47189
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   3:     goto   0
l_f2_0:
    movl    $78237, %eax            #   5:     add    t11 <- 78237, 98799
    movl    $98799, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t12 <- t11, 89727
    movl    $89727, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t13 <- t12, 45014
    movl    $45014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     return t13
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   9:     call   t14 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  10:     assign v1 <- t14
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t8       <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t9       <bool> %ebp-50 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $29467, %eax            #   1:     sub    t1 <- 29467, 20730
    movl    $20730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 73331
    movl    $73331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t3 <- t2, 72064
    movl    $72064, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t4 <- t3, 1340
    movl    $1340, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     assign v0 <- t4
    movl    %eax, v0               
    jmp     l_test_4_if_false       #   6:     goto   4_if_false
l_test_6_while_cond:
    movl    $88700, %eax            #   8:     add    t5 <- 88700, 39473
    movl    $39473, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $13161, %eax            #   9:     if     13161 >= t5 goto 7_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #  10:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  18:     param  1 <- t6
    pushl   %eax                   
    call    dummyINTfunc            #  19:     call   t7 <- dummyINTfunc
    movl    %eax, -48(%ebp)        
    movl    $92211, %eax            #  20:     if     92211 # t7 goto 10
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_10              
    jmp     l_test_11               #  21:     goto   11
l_test_10:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_test_12               #  24:     goto   12
l_test_11:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -49(%ebp)         
l_test_12:
    movzbl  -49(%ebp), %eax         #  28:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  29:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -50(%ebp)         
    movl    $99, %eax               #  30:     assign v1 <- 99
    movb    %al, v1                
    movl    $49248, %eax            #  31:     if     49248 <= 32041 goto 16
    movl    $32041, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16              
    jmp     l_test_17               #  32:     goto   17
l_test_16:
    movl    $1, %eax                #  34:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_18               #  35:     goto   18
l_test_17:
    movl    $0, %eax                #  37:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_18:
    movzbl  -21(%ebp), %eax         #  39:     assign v2 <- t10
    movb    %al, v2                

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

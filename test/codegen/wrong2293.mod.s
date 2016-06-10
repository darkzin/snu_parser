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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 77 of <array 13 of <array 48 of <array 33 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t7 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
l_f0_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   7:     return t8
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $98, %eax               #   9:     if     98 <= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_while_body:
    movl    $1, %eax                #  12:     assign v2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_10                 #  13:     goto   10
l_f0_10:
    jmp     l_f0_6_while_cond       #  15:     goto   6_while_cond
l_f0_5:
    movl    $100, %eax              #  17:     if     100 >= 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  18:     goto   15_if_false
l_f0_14_if_true:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  21:     goto   17
    jmp     l_f0_18_while_cond      #  22:     goto   18_while_cond
l_f0_17:
    movl    $0, %eax                #  24:     assign v2 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f0_13                 #  25:     goto   13
l_f0_15_if_false:
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t9       <bool> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   5:     if     t7 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_13                 #  13:     goto   13
    jmp     l_f1_13                 #  14:     goto   13
    jmp     l_f1_13                 #  15:     goto   13
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_14                 #  17:     goto   14
l_f1_13:
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -23(%ebp)         
l_f1_14:
    movzbl  -23(%ebp), %eax         #  21:     if     t8 = 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_9                  #  22:     goto   9
l_f1_8:
    movl    $1, %eax                #  24:     assign t9 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f1_10                 #  25:     goto   10
l_f1_9:
    movl    $0, %eax                #  27:     assign t9 <- 0
    movb    %al, -24(%ebp)         
l_f1_10:
    movzbl  -24(%ebp), %eax         #  29:     return t9
    jmp     l_f1_exit              
    movl    $89689, %eax            #  30:     div    t10 <- 89689, 98655
    movl    $98655, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     div    t11 <- t10, 19683
    movl    $19683, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     if     t11 < 29575 goto 21
    movl    $29575, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_21                
    jmp     l_f1_22                 #  33:     goto   22
l_f1_21:
    movl    $1, %eax                #  35:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_23                 #  36:     goto   23
l_f1_22:
    movl    $0, %eax                #  38:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_23:
    movzbl  -21(%ebp), %eax         #  40:     return t12
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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 55 of <array 83 of <array 87 of <array 73 of <bool>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     assign v2 <- 97
    movb    %al, -14(%ebp)         
    movl    $74363, %eax            #   2:     assign v3 <- 74363
    movl    %eax, -20(%ebp)        
l_f2_6_while_cond:
    movl    $100, %eax              #   4:     if     100 < 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    movl    $99, %eax               #   9:     return 99
    jmp     l_f2_exit              
    movl    $97, %eax               #  10:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_12_while_cond:
    jmp     l_f2_13_while_body      #  15:     goto   13_while_body
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  17:     goto   12_while_cond
    call    dummyCHARfunc           #  18:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  19:     return t7
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 91 of <array 55 of <array 83 of <array 87 of <array 73 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 91 of <array 55 of <array 83 of <array 87 of <array 73 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    leal    v1, %eax                #   3:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #   5:     call   t3 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     assign v0 <- t3
    movb    %al, v0                
    leal    v1, %eax                #   7:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #   9:     call   t5 <- f2
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  10:     assign v0 <- t5
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_11               #  16:     goto   11
l_test_10:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_test_11:
    movl    $1, %eax                #  20:     if     1 = t6 goto 7_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  21:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  23:     goto   6_while_cond
l_test_5:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
v1:                                 # <array 91 of <array 55 of <array 83 of <array 87 of <array 73 of <bool>>>>>>
    .long    5
    .long   91
    .long   55
    .long   83
    .long   87
    .long   73
    .skip -1656666631








    # end of global data section
    #-----------------------------------------

    .end
##################################################

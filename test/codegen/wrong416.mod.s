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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 7 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 3 of <array 9 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    jmp     l_f0_4                  #   1:     goto   4
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $0, %eax                #   9:     if     0 # t10 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #  12:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
l_f0_13_while_cond:
    movl    $1, %eax                #  17:     if     1 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_14_while_body     
    jmp     l_f0_12                 #  18:     goto   12
l_f0_14_while_body:
    movl    $97, %eax               #  20:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_19_if_false        #  22:     goto   19_if_false
    jmp     l_f0_17                 #  23:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_13_while_cond      #  26:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_22_if_false        #  28:     goto   22_if_false
    call    dummyCHARfunc           #  29:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyProcedure          #  30:     call   dummyProcedure
    movl    $86401, %eax            #  31:     assign v4 <- 86401
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  32:     assign v2 <- 0
    movb    %al, 16(%ebp)          
    jmp     l_f0_exit              
    jmp     l_f0_20                 #  34:     goto   20
l_f0_22_if_false:
l_f0_20:

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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 6 of <array 4 of <array 9 of <array 4 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $61813, %eax            #   2:     add    t11 <- 61813, 71905
    movl    $71905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $13759, %eax            #   3:     if     13759 # t11 goto 5
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_7:
    movl    $1, %eax                #  11:     if     1 = t12 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  16:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  17:     return t13
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 2 of <array 6 of <array 2 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 8 of <array 3 of <array 4 of <array 2 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v3 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 4 of <array 3 of <array 9 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 1 of <array 7 of <array 10 of <array 4 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 6 of <array 4 of <array 9 of <array 4 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t8       <bool> %ebp-38 ]
    #    -39(%ebp)   1  [ $t9       <char> %ebp-39 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $78128, %eax            #   1:     add    t0 <- 78128, 28511
    movl    $28511, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 61673
    movl    $61673, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $76095, %eax            #   3:     if     76095 >= t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   6:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #  11:     goto   6
l_test_10_while_cond:
    jmp     l_test_9                #  13:     goto   9
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    movl    $99, %eax               #  19:     param  3 <- 99
    pushl   %eax                   
    movl    $94353, %eax            #  20:     if     94353 # 91444 goto 14
    movl    $91444, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14              
    jmp     l_test_15               #  21:     goto   15
l_test_14:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_16               #  24:     goto   16
l_test_15:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_16:
    movzbl  -22(%ebp), %eax         #  28:     param  2 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  29:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     param  1 <- t4
    pushl   %eax                   
    leal    v0, %eax                #  31:     &()    t5 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  33:     call   f0
    addl    $16, %esp              
    leal    v2, %eax                #  34:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     param  1 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #  36:     call   t7 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  37:     if     t7 < 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19              
    jmp     l_test_20               #  38:     goto   20
l_test_19:
    movl    $1, %eax                #  40:     assign t8 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_test_21               #  41:     goto   21
l_test_20:
    movl    $0, %eax                #  43:     assign t8 <- 0
    movb    %al, -38(%ebp)         
l_test_21:
    movzbl  -38(%ebp), %eax         #  45:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  46:     call   t9 <- f1
    addl    $8, %esp               
    movb    %al, -39(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <array 1 of <array 1 of <array 7 of <array 10 of <array 4 of <char>>>>>>
    .long    5
    .long    1
    .long    1
    .long    7
    .long   10
    .long    4
    .skip  280
v1:                                 # <array 3 of <array 4 of <array 3 of <array 9 of <array 8 of <int>>>>>>
    .long    5
    .long    3
    .long    4
    .long    3
    .long    9
    .long    8
    .skip 10368
v2:                                 # <array 8 of <array 6 of <array 4 of <array 9 of <array 4 of <bool>>>>>>
    .long    5
    .long    8
    .long    6
    .long    4
    .long    9
    .long    4
    .skip 6912








    # end of global data section
    #-----------------------------------------

    .end
##################################################

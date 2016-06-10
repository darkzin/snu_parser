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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 40 of <array 44 of <array 58 of <array 44 of <char>>>>>>> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   2:     if     t9 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   7:     if     100 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
    jmp     l_f0_6                  #   8:     goto   6
l_f0_5:
    movl    $1, %eax                #  10:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #  11:     goto   7
l_f0_6:
    movl    $0, %eax                #  13:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  15:     assign v2 <- t10
    movb    %al, -22(%ebp)         
    movl    $83945, %eax            #  16:     sub    t11 <- 83945, 91641
    movl    $91641, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     assign v3 <- t11
    movl    %eax, -28(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    movl    $33215, %eax            #   6:     sub    t9 <- 33215, 11035
    movl    $11035, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t10 <- t9, 33118
    movl    $33118, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t11 <- t10, 67653
    movl    $67653, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $42616, %eax            #   9:     if     42616 > t11 goto 6
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #  10:     goto   7
l_f1_6:
    movl    $1, %eax                #  12:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $0, %eax                #  15:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  17:     assign v1 <- t12
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  18:     if     99 > 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_14                
    jmp     l_f1_15                 #  19:     goto   15
l_f1_14:
    movl    $1, %eax                #  21:     assign t13 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_16                 #  22:     goto   16
l_f1_15:
    movl    $0, %eax                #  24:     assign t13 <- 0
    movb    %al, -22(%ebp)         
l_f1_16:
    movzbl  -22(%ebp), %eax         #  26:     return t13
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  27:     goto   18
l_f1_18:
    movl    $1, %eax                #  29:     return 1
    jmp     l_f1_exit              
l_f1_23_while_cond:
    movl    $18241, %eax            #  31:     if     18241 > 77601 goto 24_while_body
    movl    $77601, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_24_while_body     
    jmp     l_f1_22                 #  32:     goto   22
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  34:     goto   23_while_cond
l_f1_22:
    call    dummyCHARfunc           #  36:     call   t14 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movl    $85342, %eax            #  37:     if     85342 < 19458 goto 28_if_true
    movl    $19458, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  38:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  40:     goto   27
l_f1_29_if_false:
l_f1_27:
    jmp     l_f1_10                 #  43:     goto   10
l_f1_10:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 57 of <array 35 of <array 23 of <array 82 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 8 of <array 87 of <array 93 of <array 92 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 15 of <array 5 of <array 74 of <array 68 of <array 51 of <char>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_f2_3                  #   2:     goto   3
l_f2_3:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   6:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     return t9
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   8:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 15 of <array 5 of <array 74 of <array 68 of <array 51 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 96 of <array 8 of <array 87 of <array 93 of <array 92 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 57 of <array 35 of <array 23 of <array 82 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    movl    $0, %eax                #   2:     if     0 # 1 goto 5_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_5_while_body    
    jmp     l_test_3                #   3:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   5:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $9277, %eax             #  12:     assign v0 <- 9277
    movl    %eax, v0               
    call    dummyBOOLfunc           #  13:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  14:     param  2 <- 98
    pushl   %eax                   
    movl    $67878, %eax            #  15:     mul    t1 <- 67878, 28903
    movl    $28903, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t2 <- t1, 7966
    movl    $7966, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t2
    pushl   %eax                   
    jmp     l_test_12               #  18:     goto   12
    jmp     l_test_12               #  19:     goto   12
    jmp     l_test_12               #  20:     goto   12
l_test_12:
    movl    $1, %eax                #  22:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_14               #  23:     goto   14
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_14:
    movzbl  -25(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  27:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    leal    v4, %eax                #  28:     &()    t5 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     param  3 <- t5
    pushl   %eax                   
    movl    $98, %eax               #  30:     param  2 <- 98
    pushl   %eax                   
    leal    v3, %eax                #  31:     &()    t6 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     param  1 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  33:     &()    t7 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  35:     call   t8 <- f2
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  36:     assign v1 <- t8
    movb    %al, v1                
    movl    $99, %eax               #  37:     assign v1 <- 99
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    .align   4
v2:                                 # <array 8 of <array 57 of <array 35 of <array 23 of <array 82 of <int>>>>>>
    .long    5
    .long    8
    .long   57
    .long   35
    .long   23
    .long   82
    .skip 120402240
v3:                                 # <array 96 of <array 8 of <array 87 of <array 93 of <array 92 of <char>>>>>>
    .long    5
    .long   96
    .long    8
    .long   87
    .long   93
    .long   92
    .skip 571677696
v4:                                 # <array 15 of <array 5 of <array 74 of <array 68 of <array 51 of <char>>>>>>
    .long    5
    .long   15
    .long    5
    .long   74
    .long   68
    .long   51
    .skip 19247400








    # end of global data section
    #-----------------------------------------

    .end
##################################################

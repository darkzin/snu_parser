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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $98, %eax               #   1:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
    movl    $50530, %eax            #   7:     mul    t6 <- 50530, 30273
    movl    $30273, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     mul    t7 <- t6, 9787
    movl    $9787, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v2 <- t7
    movl    %eax, 12(%ebp)         
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  11:     goto   12_while_cond
    movl    $98, %eax               #  12:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  13:     goto   8
l_f0_8:

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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   5:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $86749, %eax            #   9:     if     86749 <= 72107 goto 8_if_true
    movl    $72107, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  10:     goto   9_if_false
l_f1_8_if_true:
l_f1_12_while_cond:
    movl    $100, %eax              #  13:     if     100 <= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_13_while_body     
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  19:     goto   15
    jmp     l_f1_16_while_cond      #  20:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_7                  #  22:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $0, %eax                #  25:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_24_if_false        #  26:     goto   24_if_false
    jmp     l_f1_22                 #  27:     goto   22
l_f1_24_if_false:
l_f1_22:
    movl    $0, %eax                #  30:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  31:     goto   18
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 74 of <array 8 of <array 95 of <array 8 of <char>>>>>>> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

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
    movl    $1896, %eax             #   0:     param  1 <- 1896
    pushl   %eax                   
    movl    $97, %eax               #   1:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #   2:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   3:     if     t6 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   4:     goto   2_if_false
l_f2_1_if_true:
    call    dummyBOOLfunc           #   6:     call   t7 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    call    WriteLn                 #   7:     call   WriteLn
l_f2_7_while_cond:
    movl    $100, %eax              #   9:     if     100 < 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #  10:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  12:     goto   7_while_cond
l_f2_6:
    call    dummyINTfunc            #  14:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  1 <- t8
    pushl   %eax                   
    movl    $99, %eax               #  16:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  17:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_12                 #  21:     goto   12
    jmp     l_f2_13                 #  22:     goto   13
l_f2_12:
    movl    $1, %eax                #  24:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_14                 #  25:     goto   14
l_f2_13:
    movl    $0, %eax                #  27:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_14:
    movzbl  -13(%ebp), %eax         #  29:     return t10
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  30:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  31:     assign v2 <- t11
    movb    %al, -22(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 64 of <array 74 of <array 8 of <array 95 of <array 8 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

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
    movl    $100, %eax              #   0:     if     100 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $26252, %eax            #   3:     sub    t0 <- 26252, 10160
    movl    $10160, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t1 <- t0, 49492
    movl    $49492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98, %eax               #   9:     if     98 # 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    movl    $59016, %eax            #  12:     param  1 <- 59016
    pushl   %eax                   
    movl    $100, %eax              #  13:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  14:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_test_11_while_cond:
    jmp     l_test_10               #  16:     goto   10
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    jmp     l_test_5                #  19:     goto   5
l_test_7_if_false:
l_test_5:
    leal    v1, %eax                #  22:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  24:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  25:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  26:     assign v2 <- t5
    movb    %al, v2                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 64 of <array 74 of <array 8 of <array 95 of <array 8 of <char>>>>>>
    .long    5
    .long   64
    .long   74
    .long    8
    .long   95
    .long    8
    .skip 28794880
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    movl    $98, %eax               #   8:     if     98 <= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_while_body:
    movl    $96037, %eax            #  11:     if     96037 < 58386 goto 9_if_true
    movl    $58386, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  14:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_5_while_cond       #  17:     goto   5_while_cond
l_f0_4:
    call    dummyINTfunc            #  19:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t6 <- t5, 38105
    movl    $38105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 32 of <array 19 of <array 17 of <array 62 of <array 93 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    movl    $100, %eax              #   2:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #   6:     if     98 # 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  10:     goto   9
    jmp     l_f1_10_while_cond      #  11:     goto   10_while_cond
l_f1_9:
    movl    $98, %eax               #  13:     assign v2 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f1_5                  #  14:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_14_while_cond:
    movl    $99, %eax               #  18:     if     99 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    movl    $25804, %eax            #  21:     assign v3 <- 25804
    movl    %eax, 16(%ebp)         
    jmp     l_f1_14_while_cond      #  22:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
    movl    $67481, %eax            #   0:     add    t4 <- 67481, 8219
    movl    $8219, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 715
    movl    $715, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t5 <= 48145 goto 1_if_true
    movl    $48145, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_6_while_body       #   9:     goto   6_while_body
    jmp     l_f2_4                  #  10:     goto   4
l_f2_6_while_body:
    movl    $98, %eax               #  12:     if     98 <= 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #  13:     goto   10
l_f2_9:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_11                 #  16:     goto   11
l_f2_10:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_11:
    movzbl  -21(%ebp), %eax         #  20:     assign v1 <- t6
    movb    %al, -29(%ebp)         
    movl    $50026, %eax            #  21:     return 50026
    jmp     l_f2_exit              
    jmp     l_f2_5_while_cond       #  22:     goto   5_while_cond
l_f2_4:
l_f2_15_while_cond:
    jmp     l_f2_19                 #  25:     goto   19
    jmp     l_f2_19                 #  26:     goto   19
    jmp     l_f2_19                 #  27:     goto   19
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_20                 #  29:     goto   20
l_f2_19:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_20:
    movl    $0, %eax                #  33:     if     0 = t7 goto 16_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_16_while_body     
    jmp     l_f2_14                 #  34:     goto   14
l_f2_16_while_body:
    movl    $21498, %eax            #  36:     if     21498 >= 74592 goto 24_if_true
    movl    $74592, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  37:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  39:     goto   23
l_f2_25_if_false:
l_f2_23:
    call    ReadInt                 #  42:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_15_while_cond      #  43:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 32 of <array 19 of <array 17 of <array 62 of <array 93 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
l_test_6_while_cond:
    movl    $39315, %eax            #   4:     if     39315 > 4094 goto 7_while_body
    movl    $4094, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    call    ReadInt                 #   9:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_12_while_cond:
    jmp     l_test_16_if_false      #  13:     goto   16_if_false
    jmp     l_test_14               #  14:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_12_while_cond    #  17:     goto   12_while_cond
    movl    $34497, %eax            #  18:     assign v0 <- 34497
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $59549, %eax            #  20:     add    t1 <- 59549, 11773
    movl    $11773, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     assign v0 <- t1
    movl    %eax, v0               
    leal    v2, %eax                #  22:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  3 <- t2
    pushl   %eax                   
    movl    $66922, %eax            #  24:     param  2 <- 66922
    pushl   %eax                   
    movl    $100, %eax              #  25:     param  1 <- 100
    pushl   %eax                   
    movl    $7485, %eax             #  26:     param  0 <- 7485
    pushl   %eax                   
    call    f1                      #  27:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  28:     assign v1 <- t3
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 32 of <array 19 of <array 17 of <array 62 of <array 93 of <char>>>>>>
    .long    5
    .long   32
    .long   19
    .long   17
    .long   62
    .long   93
    .skip 59597376








    # end of global data section
    #-----------------------------------------

    .end
##################################################

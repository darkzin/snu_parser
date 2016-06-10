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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]

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
    jmp     l_f0_exit              
    movl    $12784, %eax            #   1:     sub    t4 <- 12784, 99772
    movl    $99772, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t5 <- t4, 89244
    movl    $89244, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t6 <- t5, 61481
    movl    $61481, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v3 <- t6
    movl    %eax, 8(%ebp)          
l_f0_3_while_cond:
    jmp     l_f0_2                  #   6:     goto   2
    jmp     l_f0_2                  #   7:     goto   2
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t5 <- t4, 39399
    movl    $39399, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $7036, %eax             #   2:     if     7036 <= t5 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_8                  #   9:     goto   8
    call    dummyBOOLfunc           #  10:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     if     t6 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_9                  #  12:     goto   9
l_f1_8:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_10                 #  15:     goto   10
l_f1_9:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f1_10:
    movl    $0, %eax                #  19:     if     0 # t7 goto 6_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #  20:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  22:     goto   5_while_cond
l_f1_4:
    movl    $19637, %eax            #  24:     sub    t8 <- 19637, 7742
    movl    $7742, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     return t8
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 80 of <array 6 of <array 56 of <array 25 of <int>>>>>>> %ebp+8 ]

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
    movl    $72951, %eax            #   0:     mul    t4 <- 72951, 69131
    movl    $69131, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t4 = 58483 goto 1_if_true
    movl    $58483, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $18786, %eax            #  11:     mul    t5 <- 18786, 10205
    movl    $10205, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     add    t6 <- t5, 95194
    movl    $95194, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     return t6
    jmp     l_f2_exit              
    call    dummyProcedure          #  14:     call   dummyProcedure

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1                #   2:     goto   1
l_test_1:
l_test_7_while_cond:
    movl    $97, %eax               #   5:     if     97 = 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #   6:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #   8:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $34560, %eax            #  11:     if     34560 # 87630 goto 14_if_true
    movl    $87630, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  12:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  14:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $98, %eax               #  17:     if     98 > 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  18:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  20:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $25268, %eax            #  23:     assign v0 <- 25268
    movl    %eax, v0               
    movl    $0, %eax                #  24:     if     0 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_24               #  25:     goto   24
l_test_23:
    movl    $1, %eax                #  27:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_25               #  28:     goto   25
l_test_24:
    movl    $0, %eax                #  30:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_25:
    movzbl  -14(%ebp), %eax         #  32:     assign v1 <- t1
    movb    %al, v1                
    movl    $99, %eax               #  33:     if     99 < 99 goto 28
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_28              
    jmp     l_test_29               #  34:     goto   29
l_test_28:
    movl    $1, %eax                #  36:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_30               #  37:     goto   30
l_test_29:
    movl    $0, %eax                #  39:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_30:
    movzbl  -15(%ebp), %eax         #  41:     assign v1 <- t2
    movb    %al, v1                
    movl    $99, %eax               #  42:     assign v2 <- 99
    movb    %al, v2                
    jmp     l_test_exit            
l_test_35_while_cond:
    movl    $38749, %eax            #  45:     if     38749 <= 34106 goto 36_while_body
    movl    $34106, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_36_while_body   
    jmp     l_test_34               #  46:     goto   34
l_test_36_while_body:
    jmp     l_test_35_while_cond    #  48:     goto   35_while_cond
l_test_34:
    jmp     l_test_7_while_cond     #  50:     goto   7_while_cond
    call    dummyBOOLfunc           #  51:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    call    dummyProcedure          #  52:     call   dummyProcedure
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

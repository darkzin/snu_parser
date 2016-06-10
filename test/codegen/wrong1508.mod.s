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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t7
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   4:     goto   1
l_f0_1:
l_f0_6_while_cond:
    movl    $160, %eax              #   7:     if     160 # 21966 goto 7_while_body
    movl    $21966, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_while_body:
l_f0_10_while_cond:
    movl    $99, %eax               #  11:     return 99
    jmp     l_f0_exit              
    movl    $98, %eax               #  12:     assign v0 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
    jmp     l_f0_6_while_cond       #  14:     goto   6_while_cond
l_f0_5:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t9       <bool> %ebp-19 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     return 0
    jmp     l_f1_exit              
    movl    $98967, %eax            #   2:     if     98967 # 70273 goto 6_if_true
    movl    $70273, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_15                 #  12:     goto   15
    jmp     l_f1_15                 #  13:     goto   15
    jmp     l_f1_16                 #  14:     goto   16
l_f1_15:
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_17                 #  17:     goto   17
l_f1_16:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_17:
    movzbl  -17(%ebp), %eax         #  21:     if     t7 # 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11                
    jmp     l_f1_12                 #  22:     goto   12
l_f1_11:
    movl    $1, %eax                #  24:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_13                 #  25:     goto   13
l_f1_12:
    movl    $0, %eax                #  27:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f1_13:
    movzbl  -18(%ebp), %eax         #  29:     return t8
    jmp     l_f1_exit              
    movl    $97, %eax               #  30:     if     97 >= 98 goto 23
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_23                
    jmp     l_f1_24                 #  31:     goto   24
l_f1_23:
    movl    $1, %eax                #  33:     assign t9 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_25                 #  34:     goto   25
l_f1_24:
    movl    $0, %eax                #  36:     assign t9 <- 0
    movb    %al, -19(%ebp)         
l_f1_25:
    movzbl  -19(%ebp), %eax         #  38:     return t9
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 83 of <array 70 of <array 42 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 25 of <array 30 of <array 36 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    f0                      #   0:     call   t6 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t6
    movb    %al, 16(%ebp)          
    movl    $59818, %eax            #   2:     if     59818 = 23879 goto 5_if_true
    movl    $23879, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_9_while_cond:
    jmp     l_f2_8                  #   9:     goto   8
    jmp     l_f2_9_while_cond       #  10:     goto   9_while_cond
l_f2_8:
    movl    $98, %eax               #  12:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f2_1                  #  13:     goto   1
l_f2_1:
    movl    $0, %eax                #  15:     if     0 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
l_f2_13_if_true:
    call    WriteLn                 #  18:     call   WriteLn
    movl    $100, %eax              #  19:     assign v2 <- 100
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #  20:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  21:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 17 of <array 25 of <array 30 of <array 36 of <array 8 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 27 of <array 83 of <array 70 of <array 42 of <array 2 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $28511, %eax            #   1:     mul    t0 <- 28511, 49784
    movl    $49784, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 62375
    movl    $62375, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $47494, %eax            #   3:     if     47494 <= t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  10:     if     t2 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #  11:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    movl    $90372, %eax            #  14:     if     90372 = 65821 goto 9_if_true
    movl    $65821, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  15:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  17:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_5_while_cond     #  20:     goto   5_while_cond
l_test_4:
    movl    $100, %eax              #  22:     param  2 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  23:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  25:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  27:     call   t5 <- f2
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  28:     assign v0 <- t5
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $0, %eax                #  30:     if     0 = 0 goto 15_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  31:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_exit            
    jmp     l_test_21_if_false      #  34:     goto   21_if_false
    jmp     l_test_19               #  35:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $1, %eax                #  38:     assign v3 <- 1
    movb    %al, v3                
    jmp     l_test_14               #  39:     goto   14
l_test_16_if_false:
l_test_14:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <array 27 of <array 83 of <array 70 of <array 42 of <array 2 of <int>>>>>>
    .long    5
    .long   27
    .long   83
    .long   70
    .long   42
    .long    2
    .skip 52708320
v2:                                 # <array 17 of <array 25 of <array 30 of <array 36 of <array 8 of <bool>>>>>>
    .long    5
    .long   17
    .long   25
    .long   30
    .long   36
    .long    8
    .skip 3672000
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

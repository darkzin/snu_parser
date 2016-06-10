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
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 42 of <array 95 of <array 12 of <array 22 of <int>>>>>>> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v0 <- t11
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   3:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 85 of <array 76 of <array 100 of <array 38 of <array 38 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $56626, %eax            #   0:     if     56626 >= 37809 goto 1_if_true
    movl    $37809, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     return 97
    jmp     l_f1_exit              
    call    ReadInt                 #   4:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   9:     return t11
    jmp     l_f1_exit              
    movl    $1, %eax                #  10:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_10                 #  11:     goto   10
    movl    $0, %eax                #  12:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f1_10:
    movzbl  -18(%ebp), %eax         #  14:     assign v2 <- t12
    movb    %al, 16(%ebp)          

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 27 of <array 76 of <array 28 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
l_f2_1_if_true:
l_f2_6_while_cond:
    movl    $98, %eax               #   4:     if     98 < 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    movl    $99, %eax               #   9:     if     99 < 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  10:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $99692, %eax            #  15:     assign v3 <- 99692
    movl    %eax, -24(%ebp)        
    movl    $86186, %eax            #  16:     if     86186 = 1001 goto 15_if_true
    movl    $1001, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  17:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  19:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $98, %eax               #  22:     return 98
    jmp     l_f2_exit              
l_f2_20_while_cond:
    movl    $100, %eax              #  24:     if     100 = 99 goto 21_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_21_while_body     
    jmp     l_f2_19                 #  25:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  27:     goto   20_while_cond
l_f2_19:
    movl    $90962, %eax            #  29:     assign v3 <- 90962
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #  30:     return 98
    jmp     l_f2_exit              
    movl    $98, %eax               #  31:     if     98 < 100 goto 26
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_26                
    jmp     l_f2_27                 #  32:     goto   27
l_f2_26:
    movl    $1, %eax                #  34:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_28                 #  35:     goto   28
l_f2_27:
    movl    $0, %eax                #  37:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_28:
    movzbl  -13(%ebp), %eax         #  39:     assign v1 <- t10
    movb    %al, 12(%ebp)          
    jmp     l_f2_0                  #  40:     goto   0
l_f2_0:
    movl    $38113, %eax            #  42:     mul    t11 <- 38113, 51378
    movl    $51378, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     if     t11 > 69713 goto 31_if_true
    movl    $69713, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_31_if_true        
    jmp     l_f2_32_if_false        #  44:     goto   32_if_false
l_f2_31_if_true:
l_f2_35_while_cond:
    jmp     l_f2_34                 #  47:     goto   34
    jmp     l_f2_35_while_cond      #  48:     goto   35_while_cond
l_f2_34:
l_f2_38_while_cond:
    movl    $18561, %eax            #  51:     if     18561 <= 32723 goto 39_while_body
    movl    $32723, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_39_while_body     
    jmp     l_f2_37                 #  52:     goto   37
l_f2_39_while_body:
    jmp     l_f2_38_while_cond      #  54:     goto   38_while_cond
l_f2_37:
    movl    $97, %eax               #  56:     return 97
    jmp     l_f2_exit              
    movl    $100, %eax              #  57:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_30                 #  58:     goto   30
l_f2_32_if_false:
l_f2_30:
    call    WriteLn                 #  61:     call   WriteLn

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 23 of <array 42 of <array 95 of <array 12 of <array 22 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 85 of <array 76 of <array 100 of <array 38 of <array 38 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  12:     goto   14_while_cond
    leal    v0, %eax                #  13:     &()    t2 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  15:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  16:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  17:     goto   9
l_test_9:
    movl    $100, %eax              #  19:     if     100 > 99 goto 18
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_18              
    jmp     l_test_19               #  20:     goto   19
l_test_18:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_20               #  23:     goto   20
l_test_19:
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_test_20:
    movzbl  -22(%ebp), %eax         #  27:     param  2 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  28:     param  1 <- 99
    pushl   %eax                   
    leal    v1, %eax                #  29:     &()    t5 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  31:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
l_test_23_while_cond:
    call    dummyINTfunc            #  33:     call   t7 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     sub    t8 <- t7, 44538
    movl    $44538, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t9 <- t8, 34174
    movl    $34174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $77849, %eax            #  36:     if     77849 <= t9 goto 24_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_24_while_body   
    jmp     l_test_22               #  37:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  39:     goto   23_while_cond
l_test_22:

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
v0:                                 # <array 23 of <array 42 of <array 95 of <array 12 of <array 22 of <int>>>>>>
    .long    5
    .long   23
    .long   42
    .long   95
    .long   12
    .long   22
    .skip 96909120
v1:                                 # <array 85 of <array 76 of <array 100 of <array 38 of <array 38 of <char>>>>>>
    .long    5
    .long   85
    .long   76
    .long  100
    .long   38
    .long   38
    .skip 932824000








    # end of global data section
    #-----------------------------------------

    .end
##################################################

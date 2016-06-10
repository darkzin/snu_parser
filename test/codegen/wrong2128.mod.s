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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

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
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t4 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_5_if_true          #   9:     goto   5_if_true
l_f0_5_if_true:
    jmp     l_f0_4                  #  11:     goto   4
l_f0_4:
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  14:     if     t5 < 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_11                
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_13                 #  18:     goto   13
l_f0_12:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f0_13:
    movzbl  -16(%ebp), %eax         #  22:     assign v1 <- t6
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 31 of <array 61 of <array 52 of <array 28 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $15553, %eax            #   0:     assign v2 <- 15553
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 = 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_6_while_cond:
    movl    $99, %eax               #   9:     if     99 < 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  12:     goto   6_while_cond
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <bool> %ebp-37 ]

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
    leal    _str_1, %eax            #   0:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyINTfunc            #   3:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_2                  #   5:     goto   2
    jmp     l_f2_5                  #   6:     goto   5
l_f2_5:
    movl    $3713, %eax             #   8:     if     3713 >= 60859 goto 9_if_true
    movl    $60859, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_14_if_false        #  14:     goto   14_if_false
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_if_false:
l_f2_12:
    movl    $97, %eax               #  18:     if     97 # 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  19:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  21:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_20_while_cond:
    movl    $99, %eax               #  25:     if     99 > 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_21_while_body     
    jmp     l_f2_19                 #  26:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  28:     goto   20_while_cond
l_f2_19:
l_f2_24_while_cond:
    movl    $0, %eax                #  31:     if     0 = 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_25_while_body     
    jmp     l_f2_23                 #  32:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  34:     goto   24_while_cond
l_f2_23:
    call    dummyINTfunc            #  36:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $76491, %eax            #  37:     assign v1 <- 76491
    movl    %eax, -36(%ebp)        
    movl    $97, %eax               #  38:     if     97 > 97 goto 30
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_30                
    jmp     l_f2_31                 #  39:     goto   31
l_f2_30:
    movl    $1, %eax                #  41:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_32                 #  42:     goto   32
l_f2_31:
    movl    $0, %eax                #  44:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f2_32:
    movzbl  -25(%ebp), %eax         #  46:     assign v2 <- t6
    movb    %al, -37(%ebp)         
    call    ReadInt                 #  47:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_f2_3_while_cond       #  48:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    movl    $1, %eax                #   2:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #   7:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_14               #  11:     goto   14
    jmp     l_test_15_while_cond    #  12:     goto   15_while_cond
l_test_14:
    jmp     l_test_9                #  14:     goto   9
l_test_9:
    jmp     l_test_exit            
l_test_19_while_cond:
    jmp     l_test_18               #  18:     goto   18
    jmp     l_test_18               #  19:     goto   18
    jmp     l_test_18               #  20:     goto   18
    movl    $0, %eax                #  21:     if     0 = 0 goto 25
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_25              
    jmp     l_test_26               #  22:     goto   26
l_test_25:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_27               #  25:     goto   27
l_test_26:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_27:
    movzbl  -15(%ebp), %eax         #  29:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 10 of <array 1 of <array 7 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 8 of <array 5 of <array 4 of <array 3 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   1:     goto   2
l_f0_2:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   7:     assign v2 <- t4
    movb    %al, 12(%ebp)          
    call    ReadInt                 #   8:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 1 of <array 9 of <array 3 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $97, %eax               #   0:     assign v4 <- 97
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $98, %eax               #   4:     if     98 <= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_3_while_cond       #  15:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 1 of <array 9 of <array 3 of <array 1 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 1 of <array 1 of <array 9 of <array 3 of <array 1 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 1 of <array 9 of <array 3 of <array 1 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 7 of <array 7 of <int>>>>>>> %ebp+12 ]
    #   -108(%ebp)  51  [ $v3       <array 1 of <array 1 of <array 9 of <array 3 of <array 1 of <bool>>>>>> %ebp-108 ]
    #   -109(%ebp)   1  [ $v4       <bool> %ebp-109 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-108(%ebp)           # local array 'v3': 5 dimensions
    movl    $1,-104(%ebp)           #   dimension 1: 1 elements
    movl    $1,-100(%ebp)           #   dimension 2: 1 elements
    movl    $9,-96(%ebp)            #   dimension 3: 9 elements
    movl    $3,-92(%ebp)            #   dimension 4: 3 elements
    movl    $1,-88(%ebp)            #   dimension 5: 1 elements

    # function body
    movl    $1, %eax                #   0:     if     1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyINTfunc            #   7:     call   t4 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     param  2 <- t4
    pushl   %eax                   
    movl    $74462, %eax            #   9:     param  1 <- 74462
    pushl   %eax                   
    leal    -108(%ebp), %eax        #  10:     &()    t5 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  12:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $54466, %eax            #  16:     sub    t7 <- 54466, 66733
    movl    $66733, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     add    t8 <- t7, 31539
    movl    $31539, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  18:     add    t9 <- t8, 48544
    movl    $48544, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     return t9
    jmp     l_f2_exit              
l_f2_10_while_cond:
    movl    $45004, %eax            #  21:     if     45004 < 19950 goto 11_while_body
    movl    $19950, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  22:     goto   9
l_f2_11_while_body:
    movl    $73927, %eax            #  24:     param  2 <- 73927
    pushl   %eax                   
    movl    $50081, %eax            #  25:     param  1 <- 50081
    pushl   %eax                   
    leal    -108(%ebp), %eax        #  26:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  28:     call   t11 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    leal    _str_1, %eax            #  29:     &()    t12 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  31:     call   WriteStr
    addl    $4, %esp               
    movl    $30601, %eax            #  32:     param  2 <- 30601
    pushl   %eax                   
    movl    $48123, %eax            #  33:     param  1 <- 48123
    pushl   %eax                   
    leal    -108(%ebp), %eax        #  34:     &()    t13 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  36:     call   t14 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movl    $38368, %eax            #  37:     if     38368 > 74748 goto 17_if_true
    movl    $74748, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  38:     goto   18_if_false
l_f2_17_if_true:
l_f2_21_while_cond:
    movl    $97, %eax               #  41:     if     97 # 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_22_while_body     
    jmp     l_f2_20                 #  42:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  44:     goto   21_while_cond
l_f2_20:
    movl    $94220, %eax            #  46:     if     94220 = 21635 goto 25
    movl    $21635, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_25                
    jmp     l_f2_26                 #  47:     goto   26
l_f2_25:
    movl    $1, %eax                #  49:     assign t15 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_27                 #  50:     goto   27
l_f2_26:
    movl    $0, %eax                #  52:     assign t15 <- 0
    movb    %al, -30(%ebp)         
l_f2_27:
    movzbl  -30(%ebp), %eax         #  54:     assign v4 <- t15
    movb    %al, -109(%ebp)        
    jmp     l_f2_16                 #  55:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_10_while_cond      #  58:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $100, %esp              # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 # 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_0                #   2:     goto   0
l_test_6:
    jmp     l_test_0                #   4:     goto   0
    jmp     l_test_0                #   5:     goto   0
    jmp     l_test_0                #   6:     goto   0
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     if     t0 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
    jmp     l_test_18               #  14:     goto   18
l_test_18:
    jmp     l_test_13               #  16:     goto   13
l_test_13:
    movl    $1, %eax                #  18:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  19:     goto   15
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  22:     assign v0 <- t1
    movb    %al, v0                
l_test_21_while_cond:
l_test_24_while_cond:
    jmp     l_test_23               #  25:     goto   23
    movl    $71955, %eax            #  26:     if     71955 <= 99730 goto 27_if_true
    movl    $99730, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_27_if_true      
    jmp     l_test_28_if_false      #  27:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  29:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_24_while_cond    #  32:     goto   24_while_cond
l_test_23:
    jmp     l_test_21_while_cond    #  34:     goto   21_while_cond
    movl    $40727, %eax            #  35:     sub    t2 <- 40727, 78099
    movl    $78099, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     assign v1 <- t2
    movl    %eax, v1               
    call    dummyCHARfunc           #  37:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

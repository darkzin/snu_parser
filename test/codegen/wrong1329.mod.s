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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 21 of <array 2 of <array 55 of <array 67 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 25 of <array 98 of <array 85 of <array 86 of <array 17 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, 16(%ebp)          
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $95404, %eax            #   2:     div    t4 <- 95404, 13601
    movl    $13601, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $76708, %eax            #   3:     sub    t5 <- 76708, t4
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t5 >= 44013 goto 3_while_body
    movl    $44013, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
l_f1_6_while_cond:
    call    dummyBOOLfunc           #  10:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  11:     if     t6 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
    jmp     l_f1_5                  #  12:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  14:     goto   6_while_cond
l_f1_5:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 31 of <array 86 of <array 88 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 28 of <array 2 of <array 86 of <array 36 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 85 of <array 72 of <array 40 of <array 48 of <array 3 of <int>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v4       <bool> %ebp-29 ]

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
    movl    $78296, %eax            #   0:     sub    t3 <- 78296, 64945
    movl    $64945, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    movl    $100, %eax              #   2:     if     100 < 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $44590, %eax            #   5:     return 44590
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
    movl    $56492, %eax            #   8:     assign v3 <- 56492
    movl    %eax, -28(%ebp)        
l_f2_11_while_cond:
    movl    $100, %eax              #  10:     if     100 <= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  11:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  13:     goto   11_while_cond
l_f2_10:
    movl    $5511, %eax             #  15:     return 5511
    jmp     l_f2_exit              
    movl    $1, %eax                #  16:     assign v4 <- 1
    movb    %al, -29(%ebp)         
    movl    $1, %eax                #  17:     if     1 = 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  18:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $95414, %eax            #  23:     return 95414
    jmp     l_f2_exit              
l_f2_22_while_cond:
    jmp     l_f2_21                 #  25:     goto   21
    jmp     l_f2_22_while_cond      #  26:     goto   22_while_cond
l_f2_21:
    movl    $97, %eax               #  28:     if     97 > 99 goto 25_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  29:     goto   26_if_false
l_f2_25_if_true:
    jmp     l_f2_24                 #  31:     goto   24
l_f2_26_if_false:
l_f2_24:
l_f2_29_while_cond:
    movl    $1851, %eax             #  35:     if     1851 <= 20788 goto 30_while_body
    movl    $20788, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_30_while_body     
    jmp     l_f2_28                 #  36:     goto   28
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  38:     goto   29_while_cond
l_f2_28:
    jmp     l_f2_1                  #  40:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $25215, %eax            #  43:     mul    t4 <- 25215, 34941
    movl    $34941, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  44:     mul    t5 <- t4, 28293
    movl    $28293, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  45:     return t5
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyProcedure          #   3:     call   dummyProcedure
    call    dummyINTfunc            #   4:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_4_while_cond:
    jmp     l_test_6                #   6:     goto   6
l_test_6:
    jmp     l_test_4_while_cond     #   8:     goto   4_while_cond
    movl    $97, %eax               #   9:     if     97 < 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
l_test_10_if_true:
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_15_while_cond:
    movl    $97, %eax               #  14:     if     97 <= 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  15:     goto   14
l_test_16_while_body:
    jmp     l_test_20_if_false      #  17:     goto   20_if_false
    jmp     l_test_18               #  18:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_15_while_cond    #  21:     goto   15_while_cond
l_test_14:
    jmp     l_test_9                #  23:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

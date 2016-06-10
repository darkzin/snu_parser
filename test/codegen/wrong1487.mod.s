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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_0                  #   3:     goto   0
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    dummyProcedure          #   6:     call   dummyProcedure
    jmp     l_f0_8_if_true          #   7:     goto   8_if_true
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_12                 #  10:     goto   12
l_f0_12:
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_if_false:
l_f0_7:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $v0       <bool> %ebp-31 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

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
    movl    $52640, %eax            #   0:     add    t3 <- 52640, 22145
    movl    $22145, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 97552
    movl    $97552, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t5 <- t4, 65858
    movl    $65858, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   3:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t5 >= t6 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f1_3:
    movzbl  -29(%ebp), %eax         #  12:     assign v0 <- t7
    movb    %al, -31(%ebp)         
    movl    $89021, %eax            #  13:     if     89021 > 39669 goto 6_if_true
    movl    $39669, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  14:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_11_if_false        #  16:     goto   11_if_false
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $73092, %eax            #  20:     assign v1 <- 73092
    movl    %eax, -36(%ebp)        
    jmp     l_f1_13                 #  21:     goto   13
l_f1_13:
    jmp     l_f1_5                  #  23:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  26:     call   t8 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  27:     if     t8 = 1 goto 17_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  28:     goto   18_if_false
l_f1_17_if_true:
    movl    $3874, %eax             #  30:     if     3874 # 20157 goto 20_if_true
    movl    $20157, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  31:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  33:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $97, %eax               #  36:     assign v2 <- 97
    movb    %al, -37(%ebp)         
    movl    $43926, %eax            #  37:     return 43926
    jmp     l_f1_exit              
    jmp     l_f1_16                 #  38:     goto   16
l_f1_18_if_false:
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]

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
    movl    $99, %eax               #   0:     param  2 <- 99
    pushl   %eax                   
    movl    $0, %eax                #   1:     param  1 <- 0
    pushl   %eax                   
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #   3:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movl    $93922, %eax            #   4:     if     93922 <= 25862 goto 2_if_true
    movl    $25862, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
l_f2_2_if_true:
    movl    $97, %eax               #   7:     if     97 = 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  14:     goto   9
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_1                  #  17:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $97, %eax               #   1:     param  2 <- 97
    pushl   %eax                   
    jmp     l_test_3                #   2:     goto   3
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   4:     goto   4
l_test_3:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   8:     param  1 <- t0
    pushl   %eax                   
    movl    $97, %eax               #   9:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  10:     call   t1 <- f0
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  11:     if     98 # 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  15:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

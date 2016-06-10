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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -18(%ebp)         
l_f0_2_while_cond:
    movl    $25600, %eax            #   2:     if     25600 < 75404 goto 3_while_body
    movl    $75404, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    call    ReadInt                 #   5:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 7 of <array 5 of <array 6 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #    -23(%ebp)   1  [ $v3       <char> %ebp-23 ]

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
    movl    $97, %eax               #   0:     if     97 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyINTfunc            #   8:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  14:     if     t7 = 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_11_while_body     
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  17:     goto   10_while_cond
l_f1_9:
    call    f0                      #  19:     call   t8 <- f0
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  20:     assign v3 <- t8
    movb    %al, -23(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 2 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
    jmp     l_f2_1_if_true          #   2:     goto   1_if_true
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_11_if_false        #   5:     goto   11_if_false
    jmp     l_f2_9                  #   6:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_13_while_cond:
    jmp     l_f2_14_while_body      #  13:     goto   14_while_body
    jmp     l_f2_14_while_body      #  14:     goto   14_while_body
    jmp     l_f2_14_while_body      #  15:     goto   14_while_body
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
    movl    $85846, %eax            #  18:     add    t5 <- 85846, 49958
    movl    $49958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     add    t6 <- t5, 20900
    movl    $20900, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     sub    t7 <- t6, 77798
    movl    $77798, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     sub    t8 <- t7, 85490
    movl    $85490, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     sub    t9 <- t8, 72974
    movl    $72974, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     return t9
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $1, %eax                #   0:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    movl    $0, %eax                #   2:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t0
    movb    %al, v0                
    movl    $9615, %eax             #   5:     if     9615 = 49296 goto 6_if_true
    movl    $49296, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    movl    $49921, %eax            #   8:     mul    t1 <- 49921, 68872
    movl    $68872, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_13               #  13:     goto   13
    jmp     l_test_13               #  14:     goto   13
l_test_13:
    jmp     l_test_10               #  16:     goto   10
l_test_10:
    movl    $15820, %eax            #  18:     assign v1 <- 15820
    movl    %eax, v1               
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_19_while_cond:
    call    f0                      #  21:     call   t3 <- f0
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  22:     if     t3 <= 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_20_while_body   
    jmp     l_test_18               #  23:     goto   18
l_test_20_while_body:
l_test_23_while_cond:
    movl    $97, %eax               #  26:     if     97 # 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_24_while_body   
    jmp     l_test_22               #  27:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  29:     goto   23_while_cond
l_test_22:
l_test_27_while_cond:
    movl    $99, %eax               #  32:     if     99 >= 99 goto 28_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_28_while_body   
    jmp     l_test_26               #  33:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  35:     goto   27_while_cond
l_test_26:
    call    dummyBOOLfunc           #  37:     call   t4 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_test_19_while_cond    #  38:     goto   19_while_cond
l_test_18:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

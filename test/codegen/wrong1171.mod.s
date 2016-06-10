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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 27 of <array 45 of <array 19 of <array 61 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 96 of <array 28 of <array 4 of <array 95 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    movl    $98, %eax               #   9:     if     98 < 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  18:     if     t2 # 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  19:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  21:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_17_while_cond:
    jmp     l_f0_18_while_body      #  25:     goto   18_while_body
    jmp     l_f0_18_while_body      #  26:     goto   18_while_body
    jmp     l_f0_18_while_body      #  27:     goto   18_while_body
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  29:     goto   17_while_cond

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 24 of <array 25 of <array 33 of <array 100 of <array 87 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 48 of <array 73 of <array 73 of <array 63 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 3 of <array 37 of <array 44 of <array 50 of <char>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

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
    movl    $99, %eax               #   0:     if     99 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    call    ReadInt                 #   5:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
    jmp     l_f1_13                 #  10:     goto   13
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_14                 #  12:     goto   14
l_f1_13:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_14:
    movzbl  -21(%ebp), %eax         #  16:     if     t4 # 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  17:     goto   10_if_false
l_f1_9_if_true:
    movl    $36210, %eax            #  19:     assign v5 <- 36210
    movl    %eax, -28(%ebp)        
    jmp     l_f1_8                  #  20:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 53 of <array 96 of <array 28 of <array 4 of <array 95 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 74 of <array 27 of <array 45 of <array 19 of <array 61 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 21 of <array 16 of <array 61 of <array 85 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]
    #   -416822820(%ebp)  416822784  [ $v4       <array 74 of <array 27 of <array 45 of <array 19 of <array 61 of <int>>>>>> %ebp-416822820 ]
    #   -470959164(%ebp)  54136344  [ $v5       <array 53 of <array 96 of <array 28 of <array 4 of <array 95 of <bool>>>>>> %ebp-470959164 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $470959152, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $117739788, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-416822820(%ebp)     # local array 'v4': 5 dimensions
    movl    $74,-416822816(%ebp)    #   dimension 1: 74 elements
    movl    $27,-416822812(%ebp)    #   dimension 2: 27 elements
    movl    $45,-416822808(%ebp)    #   dimension 3: 45 elements
    movl    $19,-416822804(%ebp)    #   dimension 4: 19 elements
    movl    $61,-416822800(%ebp)    #   dimension 5: 61 elements
    movl    $5,-470959164(%ebp)     # local array 'v5': 5 dimensions
    movl    $53,-470959160(%ebp)    #   dimension 1: 53 elements
    movl    $96,-470959156(%ebp)    #   dimension 2: 96 elements
    movl    $28,-470959152(%ebp)    #   dimension 3: 28 elements
    movl    $4,-470959148(%ebp)     #   dimension 4: 4 elements
    movl    $95,-470959144(%ebp)    #   dimension 5: 95 elements

    # function body
    movl    $32120, %eax            #   0:     if     32120 # 20135 goto 1_if_true
    movl    $20135, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   3:     return 0
    jmp     l_f2_exit              
    movl    $72420, %eax            #   4:     assign v3 <- 72420
    movl    %eax, -36(%ebp)        
    movl    $100, %eax              #   5:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_8_while_cond:
    jmp     l_f2_9_while_body       #  11:     goto   9_while_body
    jmp     l_f2_9_while_body       #  12:     goto   9_while_body
l_f2_9_while_body:
    call    dummyINTfunc            #  14:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #  15:     return 0
    jmp     l_f2_exit              
    call    ReadInt                 #  16:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_8_while_cond       #  17:     goto   8_while_cond
    jmp     l_f2_17_if_false        #  18:     goto   17_if_false
    leal    -470959164(%ebp), %eax  #  19:     &()    t4 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     param  1 <- t4
    pushl   %eax                   
    leal    -416822820(%ebp), %eax  #  21:     &()    t5 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  23:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_f2_15                 #  24:     goto   15
l_f2_17_if_false:
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $470959152, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    movl    $5709, %eax             #   1:     assign v0 <- 5709
    movl    %eax, v0               
l_test_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t0 <= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
l_test_2:
    movl    $40629, %eax            #   9:     if     40629 # 79972 goto 7_if_true
    movl    $79972, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #  10:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_10               #  13:     goto   10
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
    jmp     l_test_11_while_cond    #  16:     goto   11_while_cond
l_test_10:
    jmp     l_test_6                #  18:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_21_if_false      #  21:     goto   21_if_false
l_test_23_while_cond:
    jmp     l_test_23_while_cond    #  23:     goto   23_while_cond
    call    dummyCHARfunc           #  24:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_19               #  25:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_16               #  28:     goto   16
l_test_16:
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

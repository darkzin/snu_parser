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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 1 of <array 9 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 2 of <array 1 of <array 1 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f0_1_while_cond:
    call    WriteLn                 #   1:     call   WriteLn
    call    dummyINTfunc            #   2:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_7_while_cond:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   6:     if     t4 = 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_while_body:
    call    ReadInt                 #   9:     call   t5 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $74151, %eax            #  10:     if     74151 <= 87744 goto 12_if_true
    movl    $87744, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  11:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  13:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_7_while_cond       #  16:     goto   7_while_cond
l_f0_6:
    movl    $9993, %eax             #  18:     mul    t6 <- 9993, 18657
    movl    $18657, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t7 <- t6, 3223
    movl    $3223, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 10 of <array 8 of <array 2 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 6 of <array 6 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -19(%ebp)   1  [ $v3       <char> %ebp-19 ]

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
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_8_while_cond:
    movl    $54691, %eax            #   7:     if     54691 >= 73702 goto 9_while_body
    movl    $73702, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  10:     goto   8_while_cond
l_f1_7:
    movl    $57923, %eax            #  12:     if     57923 <= 56871 goto 12_if_true
    movl    $56871, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    call    ReadInt                 #  18:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #  19:     assign v3 <- 100
    movb    %al, -19(%ebp)         
    movl    $0, %eax                #  20:     if     0 # 0 goto 18
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_18                
    jmp     l_f1_19                 #  21:     goto   19
l_f1_18:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_20                 #  24:     goto   20
l_f1_19:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_20:
    movzbl  -17(%ebp), %eax         #  28:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  29:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_23                 #  32:     goto   23
    jmp     l_f1_24                 #  33:     goto   24
l_f1_23:
    movl    $1, %eax                #  35:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_25                 #  36:     goto   25
l_f1_24:
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_25:
    movzbl  -18(%ebp), %eax         #  40:     return t5
    jmp     l_f1_exit              
    movl    $76425, %eax            #  41:     assign v2 <- 76425
    movl    %eax, 16(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $69192, %eax            #   0:     div    t3 <- 69192, 80931
    movl    $80931, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t3
    movl    %eax, 8(%ebp)          
    movl    $81330, %eax            #   2:     sub    t4 <- 81330, 40469
    movl    $40469, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t4
    jmp     l_f2_exit              
    movl    $83267, %eax            #   4:     div    t5 <- 83267, 39441
    movl    $39441, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t6 <- t5, 6101
    movl    $6101, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   7:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 6 of <array 6 of <array 6 of <array 6 of <array 8 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 10 of <array 8 of <array 2 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #   6:     goto   10_while_cond
l_test_13_while_cond:
    movl    $97, %eax               #   8:     if     97 > 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #   9:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  11:     goto   13_while_cond
l_test_12:
    movl    $28347, %eax            #  13:     assign v0 <- 28347
    movl    %eax, v0               
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $96987, %eax            #  17:     param  2 <- 96987
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  22:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 7 of <array 10 of <array 8 of <array 2 of <array 9 of <int>>>>>>
    .long    5
    .long    7
    .long   10
    .long    8
    .long    2
    .long    9
    .skip 40320
v2:                                 # <array 6 of <array 6 of <array 6 of <array 6 of <array 8 of <int>>>>>>
    .long    5
    .long    6
    .long    6
    .long    6
    .long    6
    .long    8
    .skip 41472








    # end of global data section
    #-----------------------------------------

    .end
##################################################

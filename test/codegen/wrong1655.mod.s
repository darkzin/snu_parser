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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t6 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_1                  #   4:     goto   1
l_f0_8:
    jmp     l_f0_1                  #   6:     goto   1
    jmp     l_f0_1                  #   7:     goto   1
    jmp     l_f0_1                  #   8:     goto   1
    jmp     l_f0_1                  #   9:     goto   1
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
l_f0_10_while_cond:
    movl    $0, %eax                #  13:     if     0 = 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_while_body:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f0_exit              
l_f0_15_while_cond:
    jmp     l_f0_14                 #  18:     goto   14
    jmp     l_f0_15_while_cond      #  19:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_10_while_cond      #  21:     goto   10_while_cond
l_f0_9:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 70 of <array 34 of <array 45 of <array 88 of <int>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    call    ReadInt                 #   2:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   3:     if     97 > 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    movl    $73985, %eax            #  11:     add    t6 <- 73985, 31324
    movl    $31324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t7 <- t6, 43760
    movl    $43760, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     assign v3 <- t7
    movl    %eax, -28(%ebp)        
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 99 of <array 57 of <array 48 of <array 21 of <array 21 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 38 of <array 17 of <array 24 of <array 30 of <int>>>>>>> %ebp+16 ]

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
    movl    $0, %eax                #   0:     param  2 <- 0
    pushl   %eax                   
    movl    $1, %eax                #   1:     param  1 <- 1
    pushl   %eax                   
    movl    $51586, %eax            #   2:     mul    t5 <- 51586, 59594
    movl    $59594, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   4:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     return t6
    jmp     l_f2_exit              
    movl    $99, %eax               #   6:     return 99
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    movl    $1, %eax                #   9:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_8                  #  10:     goto   8
l_f2_7:
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_8:
    jmp     l_f2_11                 #  14:     goto   11
    jmp     l_f2_11                 #  15:     goto   11
l_f2_11:
    movl    $1, %eax                #  17:     assign t8 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -19(%ebp)         
l_f2_13:
    movzbl  -18(%ebp), %eax         #  21:     if     t7 = t8 goto 4_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #  22:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  24:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 38 of <array 17 of <array 24 of <array 30 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 99 of <array 57 of <array 48 of <array 21 of <array 21 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   2:     if     98 # 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    call    ReadInt                 #   5:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  11:     goto   12_while_cond
l_test_15_while_cond:
    movl    $90373, %eax            #  13:     if     90373 >= 44768 goto 16_while_body
    movl    $44768, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16_while_body   
    jmp     l_test_14               #  14:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
l_test_14:
    jmp     l_test_8                #  18:     goto   8
l_test_8:
    jmp     l_test_exit            
    leal    v2, %eax                #  21:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  2 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  23:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  1 <- t3
    pushl   %eax                   
    movl    $95326, %eax            #  25:     param  0 <- 95326
    pushl   %eax                   
    call    f2                      #  26:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <array 99 of <array 57 of <array 48 of <array 21 of <array 21 of <int>>>>>>
    .long    5
    .long   99
    .long   57
    .long   48
    .long   21
    .long   21
    .skip 477804096
v2:                                 # <array 6 of <array 38 of <array 17 of <array 24 of <array 30 of <int>>>>>>
    .long    5
    .long    6
    .long   38
    .long   17
    .long   24
    .long   30
    .skip 11162880








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   2:     assign v0 <- 100
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 1 of <array 9 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 2 of <array 5 of <array 9 of <array 6 of <bool>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
l_f1_4_while_cond:
    movl    $4185, %eax             #   2:     if     4185 <= 83388 goto 5_while_body
    movl    $83388, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    call    ReadInt                 #   5:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #   7:     goto   9_while_cond
    jmp     l_f1_4_while_cond       #   8:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
    movl    $99, %eax               #  11:     return 99
    jmp     l_f1_exit              
l_f1_13_while_cond:
    jmp     l_f1_12                 #  13:     goto   12
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
l_f1_12:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
l_f2_5_while_cond:
    movl    $97, %eax               #   3:     if     97 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    movl    $97, %eax               #   6:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #   7:     if     97 # 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   8:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  14:     goto   13
    jmp     l_f2_14_while_cond      #  15:     goto   14_while_cond
l_f2_13:
l_f2_17_while_cond:
    jmp     l_f2_16                 #  18:     goto   16
    jmp     l_f2_17_while_cond      #  19:     goto   17_while_cond
l_f2_16:
l_f2_20_while_cond:
    movl    $99522, %eax            #  22:     if     99522 # 93219 goto 21_while_body
    movl    $93219, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_21_while_body     
    jmp     l_f2_19                 #  23:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  25:     goto   20_while_cond
l_f2_19:
    call    WriteLn                 #  27:     call   WriteLn
    jmp     l_f2_5_while_cond       #  28:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1                  #  30:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_25_while_cond:
    movl    $64657, %eax            #  34:     if     64657 <= 94947 goto 26_while_body
    movl    $94947, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_26_while_body     
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  36:     goto   25_while_cond

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 2 of <array 5 of <array 9 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 9 of <array 1 of <array 9 of <array 9 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $13001, %eax            #   3:     add    t1 <- 13001, 47672
    movl    $47672, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t2 <- t1, 21519
    movl    $21519, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $26200, %eax            #   5:     if     26200 # t2 goto 4
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_4               
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_6                #   9:     goto   6
l_test_5:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_6:
    movzbl  -25(%ebp), %eax         #  13:     assign v0 <- t3
    movb    %al, v0                
l_test_9_while_cond:
    leal    v2, %eax                #  15:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     param  2 <- t4
    pushl   %eax                   
    movl    $100, %eax              #  17:     param  1 <- 100
    pushl   %eax                   
    leal    v1, %eax                #  18:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  20:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  21:     if     t6 > 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  22:     goto   8
l_test_10_while_body:
l_test_13_while_cond:
    movl    $1, %eax                #  25:     if     1 = 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  26:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  28:     goto   13_while_cond
l_test_12:
    jmp     l_test_9_while_cond     #  30:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <array 2 of <array 9 of <array 1 of <array 9 of <array 9 of <bool>>>>>>
    .long    5
    .long    2
    .long    9
    .long    1
    .long    9
    .long    9
    .skip 1458
    .align   4
v2:                                 # <array 1 of <array 2 of <array 5 of <array 9 of <array 6 of <bool>>>>>>
    .long    5
    .long    1
    .long    2
    .long    5
    .long    9
    .long    6
    .skip  540








    # end of global data section
    #-----------------------------------------

    .end
##################################################

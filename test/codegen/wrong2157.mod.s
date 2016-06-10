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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
l_f0_1:
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   7:     assign v3 <- t9
    movb    %al, -15(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_9                  #   9:     goto   9
    jmp     l_f0_8_while_body       #  10:     goto   8_while_body
l_f0_9:
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  14:     goto   7_while_cond
l_f0_6:
    call    dummyBOOLfunc           #  16:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 15 of <array 23 of <array 35 of <array 24 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 97 of <array 23 of <array 11 of <array 49 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 41 of <array 93 of <array 34 of <array 69 of <array 49 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 83 of <array 15 of <array 94 of <array 90 of <array 96 of <bool>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v6       <char> %ebp-26 ]

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
l_f1_4_while_cond:
    movl    $55337, %eax            #   1:     if     55337 <= 58530 goto 5_while_body
    movl    $58530, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5_while_body      
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   4:     goto   4_while_cond
l_f1_3:
    call    dummyProcedure          #   6:     call   dummyProcedure
    call    dummyBOOLfunc           #   7:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #   8:     assign v6 <- 97
    movb    %al, -26(%ebp)         
    call    dummyCHARfunc           #   9:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
    call    dummyINTfunc            #  12:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $61727, %eax            #  13:     mul    t12 <- 61727, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     return t12
    jmp     l_f1_exit              
l_f1_13_while_cond:
    jmp     l_f1_14_while_body      #  16:     goto   14_while_body
l_f1_14_while_body:
l_f1_17_while_cond:
    jmp     l_f1_16                 #  19:     goto   16
    jmp     l_f1_17_while_cond      #  20:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_13_while_cond      #  22:     goto   13_while_cond

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 98 of <array 74 of <array 59 of <array 52 of <array 55 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 17 of <array 17 of <array 51 of <array 26 of <array 84 of <int>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_2_while_cond       #   3:     goto   2_while_cond
    movl    $1, %eax                #   4:     assign v5 <- 1
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 83 of <array 15 of <array 94 of <array 90 of <array 96 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 41 of <array 93 of <array 34 of <array 69 of <array 49 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 11 of <array 97 of <array 23 of <array 11 of <array 49 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 40 of <array 15 of <array 23 of <array 35 of <array 24 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t1 <= t2 goto 3
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3               
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_5                #   8:     goto   5
l_test_4:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_5:
    movzbl  -19(%ebp), %eax         #  12:     assign v1 <- t3
    movb    %al, v1                
    movl    $97, %eax               #  13:     if     97 >= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #  14:     goto   9_if_false
l_test_8_if_true:
    movl    $96238, %eax            #  16:     param  0 <- 96238
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
l_test_13_while_cond:
    movl    $100, %eax              #  19:     if     100 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  20:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  22:     goto   13_while_cond
l_test_12:
    jmp     l_test_7                #  24:     goto   7
l_test_9_if_false:
l_test_7:
    leal    v5, %eax                #  27:     &()    t4 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  3 <- t4
    pushl   %eax                   
    leal    v4, %eax                #  29:     &()    t5 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     param  2 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  31:     &()    t6 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     param  1 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  33:     &()    t7 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  35:     call   t8 <- f1
    addl    $16, %esp              
    movl    %eax, -40(%ebp)        
    movl    $93263, %eax            #  36:     if     93263 < 76918 goto 18_if_true
    movl    $76918, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  37:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
    jmp     l_test_17               #  40:     goto   17
l_test_19_if_false:
l_test_17:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 40 of <array 15 of <array 23 of <array 35 of <array 24 of <bool>>>>>>
    .long    5
    .long   40
    .long   15
    .long   23
    .long   35
    .long   24
    .skip 11592000
v3:                                 # <array 11 of <array 97 of <array 23 of <array 11 of <array 49 of <bool>>>>>>
    .long    5
    .long   11
    .long   97
    .long   23
    .long   11
    .long   49
    .skip 13227599
    .align   4
v4:                                 # <array 41 of <array 93 of <array 34 of <array 69 of <array 49 of <char>>>>>>
    .long    5
    .long   41
    .long   93
    .long   34
    .long   69
    .long   49
    .skip 438319602
    .align   4
v5:                                 # <array 83 of <array 15 of <array 94 of <array 90 of <array 96 of <bool>>>>>>
    .long    5
    .long   83
    .long   15
    .long   94
    .long   90
    .long   96
    .skip 1011139200








    # end of global data section
    #-----------------------------------------

    .end
##################################################

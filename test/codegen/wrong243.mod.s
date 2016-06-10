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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 3 of <array 5 of <array 10 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 9 of <array 4 of <array 3 of <array 2 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -36(%ebp)   4  [ $v6       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     return t8
    jmp     l_f0_exit              
    movl    $70874, %eax            #   2:     add    t9 <- 70874, 90426
    movl    $90426, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     assign v6 <- t9
    movl    %eax, -36(%ebp)        
l_f0_3_while_cond:
    movl    $27986, %eax            #   5:     sub    t10 <- 27986, 73766
    movl    $73766, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t11 <- t10, 42319
    movl    $42319, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t12 <- t11, 73485
    movl    $73485, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $26810, %eax            #   8:     if     26810 <= t12 goto 4_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_4_while_body      
    jmp     l_f0_2                  #   9:     goto   2
l_f0_4_while_body:
    jmp     l_f0_8_if_false         #  11:     goto   8_if_false
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_3_while_cond       #  15:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 10 of <array 3 of <array 10 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $73567, %eax            #   0:     if     73567 > 3964 goto 1_if_true
    movl    $3964, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   4:     if     1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $68824, %eax            #  10:     assign v4 <- 68824
    movl    %eax, -24(%ebp)        
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  14:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     return t9
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  16:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  17:     if     99 > t10 goto 12_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  18:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  20:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 10 of <array 5 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    movl    $4880, %eax             #   0:     if     4880 >= 16634 goto 1_if_true
    movl    $16634, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyINTfunc            #   3:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
    movl    $100, %eax              #   9:     if     100 # 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  10:     goto   11
l_f2_10:
    movl    $1, %eax                #  12:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  13:     goto   12
l_f2_11:
    movl    $0, %eax                #  15:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  17:     return t10
    jmp     l_f2_exit              
l_f2_15_while_cond:
    movl    $100, %eax              #  19:     if     100 > 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_16_while_body     
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  22:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_6                  #  24:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $63246, %eax            #  27:     div    t11 <- 63246, 51191
    movl    $51191, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     if     t11 > 60733 goto 19_if_true
    movl    $60733, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  29:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  31:     goto   18
l_f2_20_if_false:
l_f2_18:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 10 of <array 3 of <array 10 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 10 of <array 5 of <array 6 of <array 4 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_6_if_false       #   2:     goto   6_if_false
    jmp     l_test_4                #   3:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $86727, %eax            #   6:     assign v1 <- 86727
    movl    %eax, v1               
    jmp     l_test_exit            
    movl    $97, %eax               #   8:     if     97 < 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #   9:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
    call    dummyINTfunc            #  15:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #  16:     param  1 <- 99
    pushl   %eax                   
    leal    v2, %eax                #  17:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  19:     call   t2 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     sub    t3 <- t2, 83198
    movl    $83198, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     assign v1 <- t3
    movl    %eax, v1               
    jmp     l_test_16               #  22:     goto   16
    jmp     l_test_17               #  23:     goto   17
l_test_16:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_18               #  26:     goto   18
l_test_17:
    movl    $0, %eax                #  28:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_18:
    movzbl  -29(%ebp), %eax         #  30:     param  1 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  31:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  33:     call   t6 <- f2
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
l_test_21_while_cond:
    movl    $97, %eax               #  35:     if     97 < 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22_while_body   
    jmp     l_test_20               #  36:     goto   20
l_test_22_while_body:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  39:     call   t7 <- dummyBOOLfunc
    movb    %al, -38(%ebp)         
    jmp     l_test_21_while_cond    #  40:     goto   21_while_cond
l_test_20:

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 10 of <array 10 of <array 3 of <array 10 of <array 8 of <bool>>>>>>
    .long    5
    .long   10
    .long   10
    .long    3
    .long   10
    .long    8
    .skip 24000
v3:                                 # <array 8 of <array 10 of <array 5 of <array 6 of <array 4 of <int>>>>>>
    .long    5
    .long    8
    .long   10
    .long    5
    .long    6
    .long    4
    .skip 38400








    # end of global data section
    #-----------------------------------------

    .end
##################################################

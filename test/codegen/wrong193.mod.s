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
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t7 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t8 <= 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
l_f0_3:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f0_4:
    movzbl  -18(%ebp), %eax         #  12:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_7_if_true          #  13:     goto   7_if_true
    jmp     l_f0_8_if_false         #  14:     goto   8_if_false
l_f0_7_if_true:
    movl    $0, %eax                #  16:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  17:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, -21(%ebp)         
    movl    $45616, %eax            #   1:     div    t7 <- 45616, 26964
    movl    $26964, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $63738, %eax            #   2:     sub    t8 <- 63738, t7
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t8
    movl    %eax, -28(%ebp)        
    call    dummyProcedure          #   4:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #   -5812(%ebp)  5784  [ $v0       <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <int>>>>>> %ebp-5812 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5800, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1450, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5812(%ebp)          # local array 'v0': 5 dimensions
    movl    $2,-5808(%ebp)          #   dimension 1: 2 elements
    movl    $8,-5804(%ebp)          #   dimension 2: 8 elements
    movl    $3,-5800(%ebp)          #   dimension 3: 3 elements
    movl    $6,-5796(%ebp)          #   dimension 4: 6 elements
    movl    $5,-5792(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $91170, %eax            #   0:     param  2 <- 91170
    pushl   %eax                   
    leal    -5812(%ebp), %eax       #   1:     &()    t7 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  1 <- t7
    pushl   %eax                   
    movl    $43484, %eax            #   3:     sub    t8 <- 43484, 42363
    movl    $42363, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t8 >= 50352 goto 6
    movl    $50352, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_8                  #   8:     goto   8
l_f2_7:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f2_8:
    movzbl  -25(%ebp), %eax         #  12:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  13:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     if     t10 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #  15:     goto   2
l_f2_1:
    movl    $1, %eax                #  17:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #  18:     goto   3
l_f2_2:
    movl    $0, %eax                #  20:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  22:     return t11
    jmp     l_f2_exit              
    call    f1                      #  23:     call   t12 <- f1
    movb    %al, -15(%ebp)         
l_f2_12_while_cond:
    call    f1                      #  25:     call   t13 <- f1
    movb    %al, -16(%ebp)         
    movl    $97, %eax               #  26:     if     97 > t13 goto 13_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_13_while_body     
    jmp     l_f2_11                 #  27:     goto   11
l_f2_13_while_body:
    movl    $0, %eax                #  29:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  30:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $5800, %esp             # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t6       <bool> %ebp-28 ]

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
    movl    $71712, %eax            #   0:     add    t0 <- 71712, 57789
    movl    $57789, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 89880
    movl    $89880, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  2 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   3:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  1 <- t2
    pushl   %eax                   
    jmp     l_test_2                #   5:     goto   2
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_3:
    movzbl  -25(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  12:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    jmp     l_test_8_if_false       #  13:     goto   8_if_false
    jmp     l_test_8_if_false       #  14:     goto   8_if_false
    movl    $3039, %eax             #  15:     if     3039 >= 56156 goto 11_if_true
    movl    $56156, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  16:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  18:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    movl    $97, %eax               #  22:     if     97 >= 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16_while_body   
    jmp     l_test_14               #  23:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_6                #  28:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyCHARfunc           #  31:     call   t5 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movl    $98, %eax               #  32:     if     98 = t5 goto 20
    movzbl  -27(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_20              
    jmp     l_test_21               #  33:     goto   21
l_test_20:
    movl    $1, %eax                #  35:     assign t6 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_test_22               #  36:     goto   22
l_test_21:
    movl    $0, %eax                #  38:     assign t6 <- 0
    movb    %al, -28(%ebp)         
l_test_22:
    movzbl  -28(%ebp), %eax         #  40:     assign v1 <- t6
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <int>>>>>>
    .long    5
    .long    2
    .long    8
    .long    3
    .long    6
    .long    5
    .skip 5760
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

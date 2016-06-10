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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 70 of <array 79 of <array 5 of <array 23 of <array 44 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 16 of <array 25 of <array 55 of <array 3 of <array 41 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
    jmp     l_f0_1                  #   4:     goto   1
    jmp     l_f0_1                  #   5:     goto   1
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 70 of <array 79 of <array 5 of <array 23 of <array 44 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 16 of <array 25 of <array 55 of <array 3 of <array 41 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 70 of <array 79 of <array 5 of <array 23 of <array 44 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 16 of <array 25 of <array 55 of <array 3 of <array 41 of <int>>>>>>> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 86 of <array 30 of <array 50 of <array 17 of <array 39 of <int>>>>>>> %ebp+16 ]
    #   -27981864(%ebp)  27981824  [ $v4       <array 70 of <array 79 of <array 5 of <array 23 of <array 44 of <char>>>>>> %ebp-27981864 ]
    #   -38805888(%ebp)  10824024  [ $v5       <array 16 of <array 25 of <array 55 of <array 3 of <array 41 of <int>>>>>> %ebp-38805888 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $38805876, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9701469, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-27981864(%ebp)      # local array 'v4': 5 dimensions
    movl    $70,-27981860(%ebp)     #   dimension 1: 70 elements
    movl    $79,-27981856(%ebp)     #   dimension 2: 79 elements
    movl    $5,-27981852(%ebp)      #   dimension 3: 5 elements
    movl    $23,-27981848(%ebp)     #   dimension 4: 23 elements
    movl    $44,-27981844(%ebp)     #   dimension 5: 44 elements
    movl    $5,-38805888(%ebp)      # local array 'v5': 5 dimensions
    movl    $16,-38805884(%ebp)     #   dimension 1: 16 elements
    movl    $25,-38805880(%ebp)     #   dimension 2: 25 elements
    movl    $55,-38805876(%ebp)     #   dimension 3: 55 elements
    movl    $3,-38805872(%ebp)      #   dimension 4: 3 elements
    movl    $41,-38805868(%ebp)     #   dimension 5: 41 elements

    # function body
    leal    -38805888(%ebp), %eax   #   0:     &()    t6 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  3 <- t6
    pushl   %eax                   
    movl    $15533, %eax            #   2:     param  2 <- 15533
    pushl   %eax                   
    movl    $97, %eax               #   3:     param  1 <- 97
    pushl   %eax                   
    leal    -27981864(%ebp), %eax   #   4:     &()    t7 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   6:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   7:     return t8
    jmp     l_f1_exit              
    movl    $100, %eax              #   8:     return 100
    jmp     l_f1_exit              
l_f1_3_while_cond:
    leal    -38805888(%ebp), %eax   #  10:     &()    t9 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  3 <- t9
    pushl   %eax                   
    movl    $73619, %eax            #  12:     param  2 <- 73619
    pushl   %eax                   
    movl    $99, %eax               #  13:     param  1 <- 99
    pushl   %eax                   
    leal    -27981864(%ebp), %eax   #  14:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  16:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  17:     if     t11 <= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_4_while_body      
    jmp     l_f1_2                  #  18:     goto   2
l_f1_4_while_body:
    jmp     l_f1_8_if_false         #  20:     goto   8_if_false
    jmp     l_f1_6                  #  21:     goto   6
l_f1_8_if_false:
l_f1_6:
    call    ReadInt                 #  24:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f1_3_while_cond       #  25:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $38805876, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 23 of <array 22 of <array 36 of <array 26 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2_while_cond       #   3:     goto   2_while_cond
l_f2_1:
    movl    $88754, %eax            #   5:     mul    t7 <- 88754, 75908
    movl    $75908, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $65925, %eax            #   6:     sub    t8 <- 65925, t7
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 79 of <array 23 of <array 22 of <array 36 of <array 26 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]

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
l_test_1_while_cond:
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_3:
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   9:     if     99 >= t0 goto 6
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_6               
    jmp     l_test_7                #  10:     goto   7
l_test_6:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_8                #  13:     goto   8
l_test_7:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_8:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
l_test_11_while_cond:
    movl    $98, %eax               #  19:     if     98 >= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  20:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  22:     goto   11_while_cond
l_test_10:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  25:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  26:     if     98 <= 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_18_if_true      
    jmp     l_test_19_if_false      #  27:     goto   19_if_false
l_test_18_if_true:
    movl    $98, %eax               #  29:     if     98 > 100 goto 22
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_22              
    jmp     l_test_23               #  30:     goto   23
l_test_22:
    movl    $1, %eax                #  32:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_24               #  33:     goto   24
l_test_23:
    movl    $0, %eax                #  35:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_24:
    movzbl  -16(%ebp), %eax         #  37:     param  2 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  38:     param  1 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  39:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  40:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  41:     call   t5 <- f2
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_29_while_cond:
    movl    $11290, %eax            #  45:     if     11290 >= 94382 goto 30_while_body
    movl    $94382, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_30_while_body   
    jmp     l_test_28               #  46:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  48:     goto   29_while_cond
l_test_28:
    jmp     l_test_17               #  50:     goto   17
l_test_19_if_false:
l_test_17:

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
v1:                                 # <array 79 of <array 23 of <array 22 of <array 36 of <array 26 of <bool>>>>>>
    .long    5
    .long   79
    .long   23
    .long   22
    .long   36
    .long   26
    .skip 37415664








    # end of global data section
    #-----------------------------------------

    .end
##################################################

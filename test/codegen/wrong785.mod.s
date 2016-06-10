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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    WriteLn                 #   3:     call   WriteLn
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #   5:     goto   8_while_cond
    movl    $56282, %eax            #   6:     assign v4 <- 56282
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 2 of <array 10 of <array 4 of <array 10 of <int>>>>>>> %ebp+8 ]

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
    jmp     l_f1_exit              
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyProcedure          #   2:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t6       <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $v0       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    movl    $1, %eax                #   0:     param  3 <- 1
    pushl   %eax                   
    movl    $97, %eax               #   1:     param  2 <- 97
    pushl   %eax                   
    movl    $99, %eax               #   2:     param  1 <- 99
    pushl   %eax                   
    movl    $82909, %eax            #   3:     if     82909 <= 22029 goto 5
    movl    $22029, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     param  3 <- t1
    pushl   %eax                   
    movl    $99, %eax               #  12:     param  2 <- 99
    pushl   %eax                   
    movl    $98, %eax               #  13:     param  1 <- 98
    pushl   %eax                   
    movl    $9076, %eax             #  14:     add    t2 <- 9076, 57528
    movl    $57528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $78835, %eax            #  15:     if     78835 > t2 goto 9
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  16:     goto   10
l_f2_9:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_11                 #  19:     goto   11
l_f2_10:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_11:
    movzbl  -21(%ebp), %eax         #  23:     param  3 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  24:     param  2 <- 100
    pushl   %eax                   
    movl    $99, %eax               #  25:     param  1 <- 99
    pushl   %eax                   
    movl    $100, %eax              #  26:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  27:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  28:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  29:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  30:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  31:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -24(%ebp)         
    movzbl  -24(%ebp), %eax         #  32:     if     t6 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #  33:     goto   2
l_f2_1:
    movl    $1, %eax                #  35:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #  36:     goto   3
l_f2_2:
    movl    $0, %eax                #  38:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  40:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  41:     goto   14
l_f2_14:
    movl    $1, %eax                #  43:     assign t8 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_16                 #  44:     goto   16
    movl    $0, %eax                #  45:     assign t8 <- 0
    movb    %al, -26(%ebp)         
l_f2_16:
    movzbl  -26(%ebp), %eax         #  47:     assign v0 <- t8
    movb    %al, -27(%ebp)         
    movl    $70160, %eax            #  48:     assign v1 <- 70160
    movl    %eax, -32(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    movl    $97, %eax               #   9:     if     97 = 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
    movl    $0, %eax                #  14:     if     0 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $0, %eax                #  20:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_1                #  21:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $18978, %eax            #  24:     assign v1 <- 18978
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

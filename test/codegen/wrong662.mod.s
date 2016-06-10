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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t5 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #   8:     goto   6_while_body
l_f0_6_while_body:
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_5_while_cond       #  13:     goto   5_while_cond
    call    ReadInt                 #  14:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 10 of <array 10 of <array 5 of <char>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
l_f1_1_while_cond:
    jmp     l_f1_1_while_cond       #   1:     goto   1_while_cond
    movl    $97, %eax               #   2:     assign v2 <- 97
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 2 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $46016, %eax            #   1:     add    t5 <- 46016, 95324
    movl    $95324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t6 <- t5, 41062
    movl    $41062, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   3:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t6 = t7 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  10:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $97, %eax               #  11:     if     97 > t9 goto 6_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_if_false:
l_f2_5:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
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
l_test_1_while_cond:
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 92901
    movl    $92901, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $49171, %eax            #   3:     if     49171 = t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_9                #  10:     goto   9
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_10:
    movzbl  -21(%ebp), %eax         #  16:     if     t2 # 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #  17:     goto   4
l_test_6_while_body:
    movl    $97, %eax               #  19:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_5_while_cond     #  20:     goto   5_while_cond
l_test_4:
    call    dummyBOOLfunc           #  22:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movl    $98, %eax               #  23:     if     98 >= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_17_if_true      
    jmp     l_test_18_if_false      #  24:     goto   18_if_false
l_test_17_if_true:
    movl    $99, %eax               #  26:     assign v0 <- 99
    movb    %al, v0                
l_test_22_while_cond:
    movl    $99, %eax               #  28:     if     99 > 100 goto 23_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_23_while_body   
    jmp     l_test_21               #  29:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  31:     goto   22_while_cond
l_test_21:
    jmp     l_test_16               #  33:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $97, %eax               #  36:     if     97 <= 97 goto 26
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_26              
    jmp     l_test_27               #  37:     goto   27
l_test_26:
    movl    $1, %eax                #  39:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_28               #  40:     goto   28
l_test_27:
    movl    $0, %eax                #  42:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_28:
    movzbl  -23(%ebp), %eax         #  44:     assign v1 <- t4
    movb    %al, v1                

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $66979, %eax            #   2:     assign v0 <- 66979
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <bool> %ebp-26 ]

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
    movl    $1, %eax                #   0:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t3
    movb    %al, -26(%ebp)         
    movl    $39377, %eax            #   5:     mul    t4 <- 39377, 91743
    movl    $91743, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     div    t5 <- t4, 58442
    movl    $58442, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     return t5
    jmp     l_f1_exit              
    movl    $97, %eax               #   8:     if     97 >= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
    call    dummyBOOLfunc           #  11:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #  12:     if     98 # 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $24701, %eax            #  18:     return 24701
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  19:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

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
    call    f1                      #   0:     call   t3 <- f1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, -29(%ebp)         
l_f2_6_while_cond:
    movl    $97, %eax               #   5:     if     97 <= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    movl    $81098, %eax            #  10:     return 81098
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_1                  #  12:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $30910, %eax            #  15:     sub    t5 <- 30910, 12225
    movl    $12225, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t6 <- t5, 6598
    movl    $6598, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     assign v1 <- t6
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $83995, %eax            #   9:     if     83995 < 66849 goto 6_while_body
    movl    $66849, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #  10:     goto   4
l_test_6_while_body:
    jmp     l_test_8                #  12:     goto   8
l_test_8:
    call    dummyBOOLfunc           #  14:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_5_while_cond     #  15:     goto   5_while_cond
l_test_4:
l_test_13_while_cond:
    movl    $98, %eax               #  18:     if     98 < 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    call    dummyBOOLfunc           #  21:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_13_while_cond    #  23:     goto   13_while_cond
l_test_12:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################

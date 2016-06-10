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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 3 of <array 7 of <array 4 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -56(%ebp)   4  [ $v1       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     if     t2 < 27938 goto 1
    movl    $27938, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_f0_3:
    movzbl  -25(%ebp), %eax         #   9:     return t3
    jmp     l_f0_exit              
    movl    $58494, %eax            #  10:     add    t4 <- 58494, 37232
    movl    $37232, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     assign v1 <- t4
    movl    %eax, -56(%ebp)        
    movl    $58674, %eax            #  12:     div    t5 <- 58674, 11627
    movl    $11627, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     add    t6 <- t5, 19027
    movl    $19027, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     add    t7 <- t6, 69636
    movl    $69636, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t8 <- t7, 54425
    movl    $54425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  16:     sub    t9 <- t8, 64985
    movl    $64985, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     sub    t10 <- t9, 44075
    movl    $44075, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $43359, %eax            #  18:     if     43359 >= t10 goto 7
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #  19:     goto   8
l_f0_7:
    movl    $1, %eax                #  21:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_9                  #  22:     goto   9
l_f0_8:
    movl    $0, %eax                #  24:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_9:
    movzbl  -17(%ebp), %eax         #  26:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 5 of <array 8 of <char>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
l_f1_3_while_body:
    leal    _str_1, %eax            #   4:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
    movl    $69941, %eax            #   8:     if     69941 <= 67646 goto 7_if_true
    movl    $67646, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
    call    dummyBOOLfunc           #  15:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $49090, %eax            #  16:     assign v2 <- 49090
    movl    %eax, -28(%ebp)        
    movl    $0, %eax                #  17:     assign v3 <- 0
    movb    %al, -29(%ebp)         
    jmp     l_f1_exit              
    movl    $98, %eax               #  19:     if     98 > 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  20:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_if_false:
l_f1_17:
    call    ReadInt                 #  25:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f1_6                  #  26:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 3 of <array 7 of <array 4 of <array 3 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 3 of <array 7 of <array 4 of <array 3 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <char> %ebp-27 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -808(%ebp)  780  [ $v1       <array 3 of <array 3 of <array 7 of <array 4 of <array 3 of <bool>>>>>> %ebp-808 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $796, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $199, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-808(%ebp)           # local array 'v1': 5 dimensions
    movl    $3,-804(%ebp)           #   dimension 1: 3 elements
    movl    $3,-800(%ebp)           #   dimension 2: 3 elements
    movl    $7,-796(%ebp)           #   dimension 3: 7 elements
    movl    $4,-792(%ebp)           #   dimension 4: 4 elements
    movl    $3,-788(%ebp)           #   dimension 5: 3 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    leal    -808(%ebp), %eax        #   1:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   3:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t3 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   5:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -808(%ebp), %eax        #  10:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  12:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  13:     if     t5 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_7                  #  14:     goto   7
l_f2_9:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_8                  #  17:     goto   8
l_f2_7:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f2_8:
    movzbl  -26(%ebp), %eax         #  21:     return t6
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  22:     call   t7 <- dummyCHARfunc
    movb    %al, -27(%ebp)         

l_f2_exit:
    # epilogue
    addl    $796, %esp              # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $100, %eax              #   2:     if     100 > 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $0, %eax                #   5:     assign v0 <- 0
    movb    %al, v0                
l_test_7_while_cond:
    movl    $0, %eax                #   7:     if     0 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #   8:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
    movl    $100, %eax              #  13:     if     100 = 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  16:     goto   11_while_cond
l_test_10:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
l_test_1:
    movl    $18047, %eax            #  20:     assign v1 <- 18047
    movl    %eax, v1               
    movl    $98, %eax               #  21:     if     98 >= 98 goto 16
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $1, %eax                #  24:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_18               #  25:     goto   18
l_test_17:
    movl    $0, %eax                #  27:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_18:
    movzbl  -13(%ebp), %eax         #  29:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #  30:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -14(%ebp)         

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   6:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t7 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
l_f0_5_if_true:
    movl    $1, %eax                #  10:     assign v3 <- 1
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_9                  #  12:     goto   9
l_f0_9:
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_4                  #  16:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_14_while_cond:
l_f0_17_while_cond:
    movl    $73669, %eax            #  21:     if     73669 # 67790 goto 18_while_body
    movl    $67790, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_18_while_body     
    jmp     l_f0_16                 #  22:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  24:     goto   17_while_cond
l_f0_16:
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  27:     goto   21_while_cond
    jmp     l_f0_14_while_cond      #  28:     goto   14_while_cond

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
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 6 of <array 23 of <array 73 of <array 53 of <bool>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v3       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $v4       <bool> %ebp-20 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, -19(%ebp)         
    movl    $95247, %eax            #   1:     div    t7 <- 95247, 58129
    movl    $58129, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $48782, %eax            #   2:     if     48782 > t7 goto 2_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    movl    $100, %eax              #   5:     if     100 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  13:     assign v4 <- t8
    movb    %al, -20(%ebp)         
    jmp     l_f1_1                  #  14:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyBOOLfunc           #  17:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 60 of <array 85 of <array 60 of <array 37 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 23 of <array 100 of <array 66 of <array 29 of <array 17 of <char>>>>>>> %ebp+20 ]
    #    -34(%ebp)   1  [ $v5       <bool> %ebp-34 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   1:     assign v3 <- t7
    movb    %al, 16(%ebp)          
    movl    $21801, %eax            #   2:     add    t8 <- 21801, 45246
    movl    $45246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     if     t8 = 66130 goto 2
    movl    $66130, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f2_4:
    movzbl  -33(%ebp), %eax         #  11:     assign v5 <- t9
    movb    %al, -34(%ebp)         
    movl    $23129, %eax            #  12:     mul    t10 <- 23129, 81674
    movl    $81674, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     mul    t11 <- t10, 97057
    movl    $97057, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  1 <- t11
    pushl   %eax                   
    movl    $80483, %eax            #  15:     param  0 <- 80483
    pushl   %eax                   
    call    f0                      #  16:     call   t12 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 23 of <array 100 of <array 66 of <array 29 of <array 17 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 44 of <array 60 of <array 85 of <array 60 of <array 37 of <int>>>>>>> %ebp-36 ]
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
    movl    $7785, %eax             #   0:     assign v0 <- 7785
    movl    %eax, v0               
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $92549, %eax            #   3:     sub    t2 <- 92549, t1
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t2
    movl    %eax, v0               
l_test_4_while_cond:
    movl    $100, %eax              #   6:     if     100 # 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_5_while_body    
    jmp     l_test_3                #   7:     goto   3
l_test_5_while_body:
    movl    $29165, %eax            #   9:     if     29165 <= 39001 goto 8
    movl    $39001, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8               
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_10:
    movzbl  -25(%ebp), %eax         #  17:     assign v1 <- t3
    movb    %al, v1                
    leal    v3, %eax                #  18:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     param  3 <- t4
    pushl   %eax                   
    movl    $97, %eax               #  20:     param  2 <- 97
    pushl   %eax                   
    movl    $25478, %eax            #  21:     param  1 <- 25478
    pushl   %eax                   
    leal    v2, %eax                #  22:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  24:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    jmp     l_test_4_while_cond     #  25:     goto   4_while_cond
l_test_3:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 44 of <array 60 of <array 85 of <array 60 of <array 37 of <int>>>>>>
    .long    5
    .long   44
    .long   60
    .long   85
    .long   60
    .long   37
    .skip 1992672000
v3:                                 # <array 23 of <array 100 of <array 66 of <array 29 of <array 17 of <char>>>>>>
    .long    5
    .long   23
    .long  100
    .long   66
    .long   29
    .long   17
    .skip 74837400








    # end of global data section
    #-----------------------------------------

    .end
##################################################

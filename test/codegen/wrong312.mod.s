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
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 = 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_4:
    jmp     l_f0_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  11:     if     97 >= t4 goto 7
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_9                  #  15:     goto   9
l_f0_8:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_9:
    movzbl  -15(%ebp), %eax         #  19:     return t5
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  20:     call   t6 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    jmp     l_f0_11                 #  21:     goto   11
l_f0_11:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 4 of <array 8 of <array 7 of <array 7 of <char>>>>>>> %ebp+12 ]
    #    -37(%ebp)   1  [ $v2       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $v3       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_7                  #   2:     goto   7
l_f1_7:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #   5:     goto   9
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #   8:     if     t3 = 0 goto 4_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   9:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #  11:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    movl    $98, %eax               #  16:     if     98 # 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  17:     goto   13
l_f1_12:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  20:     goto   14
l_f1_13:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_14:
    movzbl  -14(%ebp), %eax         #  24:     assign v2 <- t4
    movb    %al, -37(%ebp)         
    movl    $46331, %eax            #  25:     add    t5 <- 46331, 19275
    movl    $19275, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     add    t6 <- t5, 79286
    movl    $79286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     sub    t7 <- t6, 29838
    movl    $29838, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     sub    t8 <- t7, 34233
    movl    $34233, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     sub    t9 <- t8, 32164
    movl    $32164, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     assign v3 <- t9
    movl    %eax, -44(%ebp)        

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 5 of <array 9 of <array 1 of <char>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    movl    $4412, %eax             #   7:     add    t3 <- 4412, 39690
    movl    $39690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t4 <- t3, 88666
    movl    $88666, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t5 <- t4, 43307
    movl    $43307, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $49255, %eax            #  10:     if     49255 > t5 goto 6_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_while_body:
l_f2_9_while_cond:
    jmp     l_f2_8                  #  14:     goto   8
    jmp     l_f2_9_while_cond       #  15:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_5_while_cond       #  17:     goto   5_while_cond
l_f2_4:
    call    dummyCHARfunc           #  19:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 4 of <array 8 of <array 7 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    v0, %eax                #   1:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  1 <- t1
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #   4:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_test_3_while_cond:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond

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
v0:                                 # <array 5 of <array 4 of <array 8 of <array 7 of <array 7 of <char>>>>>>
    .long    5
    .long    5
    .long    4
    .long    8
    .long    7
    .long    7
    .skip 7840








    # end of global data section
    #-----------------------------------------

    .end
##################################################

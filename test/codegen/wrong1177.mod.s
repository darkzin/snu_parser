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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     assign v2 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $100, %eax              #   3:     if     100 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   4:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   6:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    movl    $0, %eax                #  10:     if     0 = 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  11:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  13:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_3_while_cond       #  15:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 80 of <array 56 of <array 99 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t6 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $31047, %eax            #   3:     sub    t7 <- 31047, 2593
    movl    $2593, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t8 <- t7, 10653
    movl    $10653, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t9 <- t8, 54424
    movl    $54424, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t9
    jmp     l_f1_exit              
    movl    $76106, %eax            #   7:     assign v1 <- 76106
    movl    %eax, 8(%ebp)          

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 15 of <array 5 of <array 56 of <array 21 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 75 of <array 60 of <array 28 of <array 70 of <array 98 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 14 of <array 88 of <array 60 of <array 17 of <array 93 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $58960, %eax            #   1:     assign v5 <- 58960
    movl    %eax, -24(%ebp)        
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    call    dummyINTfunc            #   6:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99523, %eax            #   7:     if     99523 >= t6 goto 6_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_6_while_body      
    jmp     l_f2_4                  #   8:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  10:     goto   5_while_cond
l_f2_4:
    movl    $78022, %eax            #  12:     mul    t7 <- 78022, 57050
    movl    $57050, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v5 <- t7
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 25 of <array 80 of <array 56 of <array 99 of <array 1 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
    jmp     l_test_3                #   0:     goto   3
l_test_3:
    movl    $0, %eax                #   2:     if     0 = 0 goto 7_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   3:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   5:     goto   6
l_test_8_if_false:
l_test_6:
    call    ReadInt                 #   8:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $48687, %eax            #  10:     assign v0 <- 48687
    movl    %eax, v0               
    jmp     l_test_0                #  11:     goto   0
l_test_0:
    movl    $70294, %eax            #  13:     param  3 <- 70294
    pushl   %eax                   
    movl    $97, %eax               #  14:     param  2 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  1 <- t1
    pushl   %eax                   
    movl    $76503, %eax            #  17:     mul    t2 <- 76503, 19700
    movl    $19700, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t3 <- t2, 64860
    movl    $64860, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  20:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_13               #  22:     goto   13
l_test_13:
    movl    $98, %eax               #  24:     if     98 > 97 goto 19_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_19_if_true      
    jmp     l_test_20_if_false      #  25:     goto   20_if_false
l_test_19_if_true:
    movl    $100, %eax              #  27:     assign v2 <- 100
    movb    %al, v2                
    jmp     l_test_exit            
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  30:     goto   25_while_cond
    jmp     l_test_exit            
    jmp     l_test_18               #  32:     goto   18
l_test_20_if_false:
l_test_18:
l_test_29_while_cond:
    jmp     l_test_32               #  36:     goto   32
    jmp     l_test_33               #  37:     goto   33
l_test_32:
    movl    $1, %eax                #  39:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_34               #  40:     goto   34
l_test_33:
    movl    $0, %eax                #  42:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_34:
    movl    $0, %eax                #  44:     if     0 = t5 goto 30_while_body
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_30_while_body   
    jmp     l_test_28               #  45:     goto   28
l_test_30_while_body:
    movl    $94275, %eax            #  47:     assign v0 <- 94275
    movl    %eax, v0               
    jmp     l_test_29_while_cond    #  48:     goto   29_while_cond
l_test_28:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 25 of <array 80 of <array 56 of <array 99 of <array 1 of <char>>>>>>
    .long    5
    .long   25
    .long   80
    .long   56
    .long   99
    .long    1
    .skip 11088000
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

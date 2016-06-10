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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 10 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f0_1_while_cond:
    movl    $23196, %eax            #   1:     mul    t0 <- 23196, 78159
    movl    $78159, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 12508
    movl    $12508, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 76961
    movl    $76961, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $94864, %eax            #   4:     sub    t3 <- 94864, t2
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t3 < 78612 goto 2_while_body
    movl    $78612, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $1336, %eax             #  10:     if     1336 >= 53351 goto 5_if_true
    movl    $53351, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #  11:     goto   6_if_false
l_f0_5_if_true:
    leal    _str_1, %eax            #  13:     &()    t4 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    movl    $59191, %eax            #  16:     if     59191 <= 43219 goto 10_if_true
    movl    $43219, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  17:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  19:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $100, %eax              #  22:     if     100 >= 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  23:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  25:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_4                  #  28:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    dummyCHARfunc           #  31:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $60470, %eax            #   0:     mul    t0 <- 60470, 1598
    movl    $1598, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 23157
    movl    $23157, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t1
    movl    %eax, 12(%ebp)         
    jmp     l_f1_2_if_true          #   3:     goto   2_if_true
l_f1_2_if_true:
    movl    $6948, %eax             #   5:     if     6948 # 97901 goto 7
    movl    $97901, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f1_9:
    movzbl  -21(%ebp), %eax         #  13:     assign v2 <- t2
    movb    %al, 16(%ebp)          
    jmp     l_f1_1                  #  14:     goto   1
l_f1_1:
    movl    $59741, %eax            #  16:     sub    t3 <- 59741, 71940
    movl    $71940, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     sub    t4 <- t3, 65392
    movl    $65392, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t5 <- t4, 53012
    movl    $53012, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $39573, %eax            #  19:     if     39573 # t5 goto 12_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  20:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_exit              
    movl    $0, %eax                #  23:     if     0 # 1 goto 17
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_17                
    jmp     l_f1_18                 #  24:     goto   18
l_f1_17:
    movl    $1, %eax                #  26:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f1_19                 #  27:     goto   19
l_f1_18:
    movl    $0, %eax                #  29:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_f1_19:
    movzbl  -37(%ebp), %eax         #  31:     assign v2 <- t6
    movb    %al, 16(%ebp)          
    call    dummyINTfunc            #  32:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_f1_11                 #  33:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $84976, %eax            #   0:     mul    t0 <- 84976, 42741
    movl    $42741, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 29492
    movl    $29492, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 89017
    movl    $89017, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 17476
    movl    $17476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 22247
    movl    $22247, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     if     t4 >= 22475 goto 1
    movl    $22475, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_f2_3:
    movzbl  -33(%ebp), %eax         #  13:     return t5
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $4213, %eax             #  15:     add    t6 <- 4213, 44962
    movl    $44962, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $85174, %eax            #  16:     add    t7 <- 85174, 61242
    movl    $61242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  17:     if     t6 < t7 goto 7_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  18:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  20:     goto   6_while_cond
l_f2_5:
    movl    $98, %eax               #  22:     param  3 <- 98
    pushl   %eax                   
    movl    $87165, %eax            #  23:     if     87165 = 46686 goto 10
    movl    $46686, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  24:     goto   11
l_f2_10:
    movl    $1, %eax                #  26:     assign t8 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_12                 #  27:     goto   12
l_f2_11:
    movl    $0, %eax                #  29:     assign t8 <- 0
    movb    %al, -45(%ebp)         
l_f2_12:
    movzbl  -45(%ebp), %eax         #  31:     param  2 <- t8
    pushl   %eax                   
    movl    $49873, %eax            #  32:     param  1 <- 49873
    pushl   %eax                   
    movl    $99, %eax               #  33:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  34:     call   f1
    addl    $16, %esp              

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $99, %eax               #   6:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

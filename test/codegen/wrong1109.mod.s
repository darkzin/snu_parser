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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 65 of <array 54 of <array 28 of <array 31 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $99, %eax               #   0:     if     99 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99, %eax               #   3:     if     99 > 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $97, %eax               #   9:     assign v3 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  13:     return 97
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 29 of <array 65 of <array 54 of <array 28 of <array 31 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 99 of <array 61 of <array 8 of <array 71 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 62 of <array 42 of <array 19 of <array 89 of <int>>>>>>> %ebp+16 ]
    #   -353414932(%ebp)  353414904  [ $v3       <array 29 of <array 65 of <array 54 of <array 28 of <array 31 of <int>>>>>> %ebp-353414932 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $353414920, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $88353730, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-353414932(%ebp)     # local array 'v3': 5 dimensions
    movl    $29,-353414928(%ebp)    #   dimension 1: 29 elements
    movl    $65,-353414924(%ebp)    #   dimension 2: 65 elements
    movl    $54,-353414920(%ebp)    #   dimension 3: 54 elements
    movl    $28,-353414916(%ebp)    #   dimension 4: 28 elements
    movl    $31,-353414912(%ebp)    #   dimension 5: 31 elements

    # function body
    movl    $67784, %eax            #   0:     if     67784 # 31793 goto 1
    movl    $31793, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     param  2 <- t3
    pushl   %eax                   
    leal    -353414932(%ebp), %eax  #   9:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t4
    pushl   %eax                   
    movl    $100, %eax              #  11:     if     100 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #  12:     goto   6
l_f1_5:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #  15:     goto   7
l_f1_6:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_7:
    movzbl  -21(%ebp), %eax         #  19:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  20:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  21:     return t6
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $97, %eax               #  23:     if     97 <= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  24:     goto   9
l_f1_11_while_body:
    movl    $99, %eax               #  26:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_19_if_false        #  27:     goto   19_if_false
    jmp     l_f1_17                 #  28:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_13                 #  31:     goto   13
l_f1_13:
    jmp     l_f1_10_while_cond      #  33:     goto   10_while_cond
l_f1_9:
    call    ReadInt                 #  35:     call   t7 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $353414920, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 53 of <array 62 of <array 42 of <array 19 of <array 89 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 99 of <array 61 of <array 8 of <array 71 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 19 of <array 92 of <array 22 of <array 29 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 52 of <array 60 of <array 36 of <array 27 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 58 of <array 87 of <array 26 of <array 13 of <int>>>>>>> %ebp+20 ]
    #   -123485540(%ebp)  123485496  [ $v4       <array 9 of <array 99 of <array 61 of <array 8 of <array 71 of <int>>>>>> %ebp-123485540 ]
    #   -1056998732(%ebp)  933513192  [ $v5       <array 53 of <array 62 of <array 42 of <array 19 of <array 89 of <int>>>>>> %ebp-1056998732 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1056998720, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $264249680, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-123485540(%ebp)     # local array 'v4': 5 dimensions
    movl    $9,-123485536(%ebp)     #   dimension 1: 9 elements
    movl    $99,-123485532(%ebp)    #   dimension 2: 99 elements
    movl    $61,-123485528(%ebp)    #   dimension 3: 61 elements
    movl    $8,-123485524(%ebp)     #   dimension 4: 8 elements
    movl    $71,-123485520(%ebp)    #   dimension 5: 71 elements
    movl    $5,-1056998732(%ebp)    # local array 'v5': 5 dimensions
    movl    $53,-1056998728(%ebp)   #   dimension 1: 53 elements
    movl    $62,-1056998724(%ebp)   #   dimension 2: 62 elements
    movl    $42,-1056998720(%ebp)   #   dimension 3: 42 elements
    movl    $19,-1056998716(%ebp)   #   dimension 4: 19 elements
    movl    $89,-1056998712(%ebp)   #   dimension 5: 89 elements

    # function body
    movl    $77191, %eax            #   0:     add    t3 <- 77191, 44727
    movl    $44727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t4 <- t3, 82729
    movl    $82729, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t5 <- t4, 6295
    movl    $6295, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t6 <- t5, 11858
    movl    $11858, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     return t6
    jmp     l_f2_exit              
    movl    $0, %eax                #   5:     if     0 # 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   6:     goto   3_if_false
l_f2_2_if_true:
    movl    $50164, %eax            #   8:     if     50164 > 84775 goto 6_if_true
    movl    $84775, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   9:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  15:     goto   9
    jmp     l_f2_10_while_cond      #  16:     goto   10_while_cond
l_f2_9:
    movl    $81217, %eax            #  18:     return 81217
    jmp     l_f2_exit              
    jmp     l_f2_13                 #  19:     goto   13
l_f2_13:
    leal    -1056998732(%ebp), %eax #  21:     &()    t7 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     param  2 <- t7
    pushl   %eax                   
    leal    -123485540(%ebp), %eax  #  23:     &()    t8 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  1 <- t8
    pushl   %eax                   
    movl    $97, %eax               #  25:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  26:     call   t9 <- f1
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    jmp     l_f2_1                  #  27:     goto   1
l_f2_3_if_false:
l_f2_1:
    leal    _str_1, %eax            #  30:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  32:     call   WriteStr
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $1056998720, %esp       # remove locals
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
    jmp     l_test_exit            
    movl    $72796, %eax            #   1:     mul    t0 <- 72796, 54471
    movl    $54471, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 97858
    movl    $97858, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 78872
    movl    $78872, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

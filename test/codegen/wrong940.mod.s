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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 5 of <array 4 of <array 6 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp+12 ]

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
    movl    $98, %eax               #   1:     if     98 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #   5:     goto   6_while_body
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v1       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $v2       <char> %ebp-38 ]
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
    movl    $100, %eax              #   2:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $23426, %eax            #   4:     if     23426 >= 48873 goto 5
    movl    $48873, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5                 
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t2
    movb    %al, -37(%ebp)         
    movl    $97, %eax               #  13:     assign v2 <- 97
    movb    %al, -38(%ebp)         
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    movl    $12177, %eax            #  16:     add    t3 <- 12177, 91935
    movl    $91935, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t4 <- t3, 31127
    movl    $31127, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     sub    t5 <- t4, 31136
    movl    $31136, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     assign v3 <- t5
    movl    %eax, -44(%ebp)        
    movl    $74892, %eax            #  20:     add    t6 <- 74892, 15474
    movl    $15474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $80666, %eax            #  21:     if     80666 > t6 goto 12_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  22:     goto   13_if_false
l_f1_12_if_true:
    call    dummyINTfunc            #  24:     call   t7 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    jmp     l_f1_11                 #  25:     goto   11
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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 4 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 5 of <array 4 of <array 6 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 8 of <array 5 of <array 6 of <char>>>>>>> %ebp+12 ]
    #   -1864(%ebp)  1824  [ $v3       <array 3 of <array 5 of <array 4 of <array 6 of <array 5 of <bool>>>>>> %ebp-1864 ]
    #   -59488(%ebp)  57624  [ $v4       <array 10 of <array 4 of <array 4 of <array 9 of <array 10 of <int>>>>>> %ebp-59488 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $59476, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14869, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1864(%ebp)          # local array 'v3': 5 dimensions
    movl    $3,-1860(%ebp)          #   dimension 1: 3 elements
    movl    $5,-1856(%ebp)          #   dimension 2: 5 elements
    movl    $4,-1852(%ebp)          #   dimension 3: 4 elements
    movl    $6,-1848(%ebp)          #   dimension 4: 6 elements
    movl    $5,-1844(%ebp)          #   dimension 5: 5 elements
    movl    $5,-59488(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-59484(%ebp)        #   dimension 1: 10 elements
    movl    $4,-59480(%ebp)         #   dimension 2: 4 elements
    movl    $4,-59476(%ebp)         #   dimension 3: 4 elements
    movl    $9,-59472(%ebp)         #   dimension 4: 9 elements
    movl    $10,-59468(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $99, %eax               #   0:     if     99 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $51171, %eax            #   3:     assign v1 <- 51171
    movl    %eax, 8(%ebp)          
    movl    $29205, %eax            #   4:     return 29205
    jmp     l_f2_exit              
    movl    $45260, %eax            #   5:     return 45260
    jmp     l_f2_exit              
    leal    -59488(%ebp), %eax      #   6:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    leal    -1864(%ebp), %eax       #   8:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  10:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    leal    _str_1, %eax            #  11:     &()    t5 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    _str_2, %eax            #  17:     &()    t6 <- _str_2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  19:     call   WriteStr
    addl    $4, %esp               
    movl    $48608, %eax            #  20:     div    t7 <- 48608, 88969
    movl    $88969, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t8 <- t7, 99577
    movl    $99577, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $59476, %esp            # remove locals
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
    movl    $486, %eax              #   0:     sub    t0 <- 486, 5127
    movl    $5127, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 3611
    movl    $3611, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $97, %eax               #   5:     if     97 < 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_4_while_body    
    jmp     l_test_2                #   6:     goto   2
l_test_4_while_body:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
    movl    $98399, %eax            #  10:     if     98399 >= 73401 goto 10_if_true
    movl    $73401, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_3_while_cond     #  16:     goto   3_while_cond
l_test_2:
    movl    $91212, %eax            #  18:     assign v0 <- 91212
    movl    %eax, v0               
l_test_15_while_cond:
    jmp     l_test_14               #  20:     goto   14
    jmp     l_test_14               #  21:     goto   14
    jmp     l_test_14               #  22:     goto   14
    jmp     l_test_21               #  23:     goto   21
l_test_21:
    movl    $21366, %eax            #  25:     assign v0 <- 21366
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  27:     goto   15_while_cond
l_test_14:
l_test_27_while_cond:
    jmp     l_test_26               #  30:     goto   26
    jmp     l_test_exit            
    jmp     l_test_27_while_cond    #  32:     goto   27_while_cond
l_test_26:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 7 of <char>>
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

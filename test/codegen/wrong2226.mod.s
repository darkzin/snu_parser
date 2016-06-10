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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t4
    jmp     l_f0_exit              
    call    WriteLn                 #  10:     call   WriteLn
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     if     t5 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_9                  #  13:     goto   9
l_f0_12:
    jmp     l_f0_9                  #  15:     goto   9
    jmp     l_f0_9                  #  16:     goto   9
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_10                 #  18:     goto   10
l_f0_9:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_10:
    movzbl  -15(%ebp), %eax         #  22:     return t6
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 48 of <array 75 of <array 64 of <array 97 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 4 of <array 91 of <array 51 of <array 44 of <int>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]

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
    movl    $59010, %eax            #   0:     if     59010 < 6995 goto 1_if_true
    movl    $6995, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $4126, %eax             #   3:     add    t4 <- 4126, 54972
    movl    $54972, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $6712, %eax             #   4:     if     6712 # t4 goto 5_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $30181, %eax            #  13:     if     30181 > 33735 goto 9_if_true
    movl    $33735, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  14:     goto   10_if_false
l_f1_9_if_true:
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $71426, %eax            #  17:     assign v3 <- 71426
    movl    %eax, -24(%ebp)        
    jmp     l_f1_8                  #  18:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $46728, %eax            #  21:     if     46728 < 97300 goto 15
    movl    $97300, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15                
    jmp     l_f1_16                 #  22:     goto   16
l_f1_15:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_17                 #  25:     goto   17
l_f1_16:
    movl    $0, %eax                #  27:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f1_17:
    movzbl  -18(%ebp), %eax         #  29:     assign v4 <- t6
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 65 of <array 4 of <array 91 of <array 51 of <array 44 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 64 of <array 48 of <array 75 of <array 64 of <array 97 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 58 of <array 54 of <array 71 of <array 19 of <bool>>>>>>> %ebp+8 ]
    #    -26(%ebp)   1  [ $v1       <char> %ebp-26 ]
    #   -1426325556(%ebp)  1426325528  [ $v2       <array 64 of <array 48 of <array 75 of <array 64 of <array 97 of <int>>>>>> %ebp-1426325556 ]
    #   -1638697740(%ebp)  212372184  [ $v3       <array 65 of <array 4 of <array 91 of <array 51 of <array 44 of <int>>>>>> %ebp-1638697740 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1638697728, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $409674432, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1426325556(%ebp)    # local array 'v2': 5 dimensions
    movl    $64,-1426325552(%ebp)   #   dimension 1: 64 elements
    movl    $48,-1426325548(%ebp)   #   dimension 2: 48 elements
    movl    $75,-1426325544(%ebp)   #   dimension 3: 75 elements
    movl    $64,-1426325540(%ebp)   #   dimension 4: 64 elements
    movl    $97,-1426325536(%ebp)   #   dimension 5: 97 elements
    movl    $5,-1638697740(%ebp)    # local array 'v3': 5 dimensions
    movl    $65,-1638697736(%ebp)   #   dimension 1: 65 elements
    movl    $4,-1638697732(%ebp)    #   dimension 2: 4 elements
    movl    $91,-1638697728(%ebp)   #   dimension 3: 91 elements
    movl    $51,-1638697724(%ebp)   #   dimension 4: 51 elements
    movl    $44,-1638697720(%ebp)   #   dimension 5: 44 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     assign v1 <- t4
    movb    %al, -26(%ebp)         
    leal    -1638697740(%ebp), %eax #   6:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   8:     param  1 <- 99
    pushl   %eax                   
    leal    -1426325556(%ebp), %eax #   9:     &()    t6 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  11:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1638697728, %esp       # remove locals
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
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-28 ]

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
    jmp     l_test_exit            
    movl    $21375, %eax            #   1:     sub    t0 <- 21375, 68091
    movl    $68091, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 25118
    movl    $25118, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 > 28480 goto 2_if_true
    movl    $28480, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   4:     goto   3_if_false
l_test_2_if_true:
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $8232, %eax             #  10:     add    t2 <- 8232, 54800
    movl    $54800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_9_if_false       #  12:     goto   9_if_false
l_test_11_while_cond:
    jmp     l_test_10               #  14:     goto   10
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    jmp     l_test_14_while_cond    #  19:     goto   14_while_cond
l_test_13:
    leal    _str_1, %eax            #  21:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               
l_test_18_while_cond:
    jmp     l_test_17               #  25:     goto   17
    jmp     l_test_18_while_cond    #  26:     goto   18_while_cond
l_test_17:
    jmp     l_test_7                #  28:     goto   7
l_test_9_if_false:
l_test_7:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]

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
    jmp     l_f0_6                  #   0:     goto   6
    jmp     l_f0_1                  #   1:     goto   1
l_f0_6:
l_f0_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t1
    movb    %al, -15(%ebp)         
l_f0_9_while_cond:
    jmp     l_f0_10_while_body      #  10:     goto   10_while_body
l_f0_10_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_19                 #  13:     goto   19
l_f0_19:
l_f0_23_while_cond:
    jmp     l_f0_22                 #  16:     goto   22
    jmp     l_f0_23_while_cond      #  17:     goto   23_while_cond
l_f0_22:
    movl    $54573, %eax            #  19:     if     54573 = 2536 goto 26_if_true
    movl    $2536, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  20:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  22:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_9_while_cond       #  25:     goto   9_while_cond
    call    dummyCHARfunc           #  26:     call   t2 <- dummyCHARfunc
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 48 of <array 64 of <array 54 of <array 71 of <char>>>>>>> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

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
    movl    $18665, %eax            #   0:     div    t1 <- 18665, 82726
    movl    $82726, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 40991
    movl    $40991, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 38927
    movl    $38927, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t3
    movl    %eax, -36(%ebp)        
    movl    $29378, %eax            #   4:     if     29378 # 40042 goto 2_if_true
    movl    $40042, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
l_f1_2_if_true:
    movl    $94853, %eax            #   7:     return 94853
    jmp     l_f1_exit              
    movl    $57413, %eax            #   8:     return 57413
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_9_if_false         #  12:     goto   9_if_false
    movl    $100, %eax              #  13:     assign v2 <- 100
    movb    %al, -37(%ebp)         
    call    ReadInt                 #  14:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $74711, %eax            #  15:     return 74711
    jmp     l_f1_exit              
l_f1_14_while_cond:
    movl    $95345, %eax            #  17:     if     95345 <= 14091 goto 15_while_body
    movl    $14091, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    call    dummyBOOLfunc           #  22:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f1_7                  #  23:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 58 of <array 48 of <array 64 of <array 54 of <array 71 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 37 of <array 57 of <array 31 of <array 56 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 19 of <array 76 of <array 11 of <array 71 of <char>>>>>>> %ebp+16 ]
    #   -683126832(%ebp)  683126808  [ $v3       <array 58 of <array 48 of <array 64 of <array 54 of <array 71 of <char>>>>>> %ebp-683126832 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $683126820, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $170781705, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-683126832(%ebp)     # local array 'v3': 5 dimensions
    movl    $58,-683126828(%ebp)    #   dimension 1: 58 elements
    movl    $48,-683126824(%ebp)    #   dimension 2: 48 elements
    movl    $64,-683126820(%ebp)    #   dimension 3: 64 elements
    movl    $54,-683126816(%ebp)    #   dimension 4: 54 elements
    movl    $71,-683126812(%ebp)    #   dimension 5: 71 elements

    # function body
    leal    -683126832(%ebp), %eax  #   0:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   2:     call   t2 <- f1
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
l_f2_2_while_cond:
    jmp     l_f2_1                  #   4:     goto   1
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
l_f2_10_while_cond:
    movl    $80676, %eax            #   9:     mul    t3 <- 80676, 26412
    movl    $26412, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $21469, %eax            #  10:     if     21469 <= t3 goto 11_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_while_body:
    jmp     l_f2_13                 #  13:     goto   13
l_f2_13:
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $683126820, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   9:     goto   9_while_cond
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

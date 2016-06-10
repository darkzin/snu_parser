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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $80656, %eax            #   0:     mul    t4 <- 80656, 7604
    movl    $7604, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 69822
    movl    $69822, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f0_exit              
    call    dummyProcedure          #   3:     call   dummyProcedure
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 71 of <array 11 of <array 94 of <array 79 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 40 of <array 69 of <array 24 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $98, %eax               #   4:     if     98 = 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   5:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   7:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_9_if_false         #  13:     goto   9_if_false
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #  15:     goto   7
l_f1_9_if_false:
l_f1_7:
    call    dummyBOOLfunc           #  18:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 11 of <array 40 of <array 69 of <array 24 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 19 of <array 71 of <array 11 of <array 94 of <array 79 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 69 of <array 92 of <array 99 of <array 36 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 40 of <array 24 of <array 89 of <array 19 of <array 54 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -110194472(%ebp)  110194438  [ $v4       <array 19 of <array 71 of <array 11 of <array 94 of <array 79 of <char>>>>>> %ebp-110194472 ]
    #   -113109056(%ebp)  2914584  [ $v5       <array 11 of <array 40 of <array 69 of <array 24 of <array 4 of <bool>>>>>> %ebp-113109056 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $113109044, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28277261, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-110194472(%ebp)     # local array 'v4': 5 dimensions
    movl    $19,-110194468(%ebp)    #   dimension 1: 19 elements
    movl    $71,-110194464(%ebp)    #   dimension 2: 71 elements
    movl    $11,-110194460(%ebp)    #   dimension 3: 11 elements
    movl    $94,-110194456(%ebp)    #   dimension 4: 94 elements
    movl    $79,-110194452(%ebp)    #   dimension 5: 79 elements
    movl    $5,-113109056(%ebp)     # local array 'v5': 5 dimensions
    movl    $11,-113109052(%ebp)    #   dimension 1: 11 elements
    movl    $40,-113109048(%ebp)    #   dimension 2: 40 elements
    movl    $69,-113109044(%ebp)    #   dimension 3: 69 elements
    movl    $24,-113109040(%ebp)    #   dimension 4: 24 elements
    movl    $4,-113109036(%ebp)     #   dimension 5: 4 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    WriteLn                 #   1:     call   WriteLn
l_f2_5_while_cond:
    movl    $82504, %eax            #   3:     if     82504 > 79869 goto 6_while_body
    movl    $79869, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $100, %eax              #  11:     assign v3 <- 100
    movb    %al, 20(%ebp)          
    movl    $5596, %eax             #  12:     if     5596 <= 8511 goto 10
    movl    $8511, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_10                
    jmp     l_f2_11                 #  13:     goto   11
l_f2_10:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  16:     goto   12
l_f2_11:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  20:     param  1 <- t4
    pushl   %eax                   
    movl    $10181, %eax            #  21:     if     10181 # 25275 goto 14
    movl    $25275, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  22:     goto   15
l_f2_14:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  25:     goto   16
l_f2_15:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  29:     param  3 <- t5
    pushl   %eax                   
    leal    -113109056(%ebp), %eax  #  30:     &()    t6 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  2 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  32:     param  1 <- 1
    pushl   %eax                   
    leal    -110194472(%ebp), %eax  #  33:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  35:     call   t8 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  36:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  37:     call   t9 <- f0
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $113109044, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 40 of <array 24 of <array 89 of <array 19 of <array 54 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 16 of <array 69 of <array 92 of <array 99 of <array 36 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
l_test_1_while_cond:
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_2_while_body     #   4:     goto   2_while_body
l_test_3:
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
    jmp     l_test_exit            
    movl    $99, %eax               #   9:     param  3 <- 99
    pushl   %eax                   
    movl    $98, %eax               #  10:     param  2 <- 98
    pushl   %eax                   
    leal    v1, %eax                #  11:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #  13:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  15:     call   t2 <- f2
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_test_10_if_true       #  16:     goto   10_if_true
    jmp     l_test_11_if_false      #  17:     goto   11_if_false
l_test_10_if_true:
    movl    $97, %eax               #  19:     if     97 < 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  22:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_9                #  27:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $33757, %eax            #  30:     add    t3 <- 33757, 99431
    movl    $99431, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     assign v2 <- t3
    movl    %eax, v2               

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
v0:                                 # <array 16 of <array 69 of <array 92 of <array 99 of <array 36 of <char>>>>>>
    .long    5
    .long   16
    .long   69
    .long   92
    .long   99
    .long   36
    .skip 361988352
v1:                                 # <array 40 of <array 24 of <array 89 of <array 19 of <array 54 of <int>>>>>>
    .long    5
    .long   40
    .long   24
    .long   89
    .long   19
    .long   54
    .skip 350645760
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

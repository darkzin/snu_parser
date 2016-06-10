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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 40 of <array 72 of <array 22 of <array 97 of <array 30 of <int>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     if     1 = 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v2 <- t6
    movb    %al, -16(%ebp)         
    jmp     l_f0_7                  #  10:     goto   7
    jmp     l_f0_7                  #  11:     goto   7
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_9                  #  15:     goto   9
l_f0_8:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_9:
    movzbl  -15(%ebp), %eax         #  19:     assign v2 <- t7
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 51 of <array 13 of <array 97 of <array 20 of <array 17 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f1_exit              
    movl    $54760, %eax            #   1:     if     54760 = 11879 goto 5
    movl    $11879, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t5
    movb    %al, -15(%ebp)         
    jmp     l_f1_1                  #  10:     goto   1
l_f1_1:
l_f1_10_while_cond:
    call    dummyBOOLfunc           #  13:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 51 of <array 13 of <array 97 of <array 20 of <array 17 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #   -87463016(%ebp)  87462984  [ $v0       <array 51 of <array 13 of <array 97 of <array 20 of <array 17 of <int>>>>>> %ebp-87463016 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $87463004, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21865751, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-87463016(%ebp)      # local array 'v0': 5 dimensions
    movl    $51,-87463012(%ebp)     #   dimension 1: 51 elements
    movl    $13,-87463008(%ebp)     #   dimension 2: 13 elements
    movl    $97,-87463004(%ebp)     #   dimension 3: 97 elements
    movl    $20,-87463000(%ebp)     #   dimension 4: 20 elements
    movl    $17,-87462996(%ebp)     #   dimension 5: 17 elements

    # function body
    leal    -87463016(%ebp), %eax   #   0:     &()    t5 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   2:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #   3:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t8 <- t7, 45301
    movl    $45301, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t8 <= 2798 goto 2
    movl    $2798, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $1, %eax                #   8:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_4                  #   9:     goto   4
l_f2_3:
    movl    $0, %eax                #  11:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f2_4:
    movzbl  -29(%ebp), %eax         #  13:     return t9
    jmp     l_f2_exit              
    movl    $97, %eax               #  14:     if     97 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  15:     goto   8_if_false
l_f2_7_if_true:
    movl    $1, %eax                #  17:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  18:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $87463004, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 51 of <array 13 of <array 97 of <array 20 of <array 17 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 40 of <array 72 of <array 22 of <array 97 of <array 30 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_2_while_body     #   3:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
    jmp     l_test_exit            
    movl    $0, %eax                #   7:     if     0 # 0 goto 16_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_16_if_true      
    jmp     l_test_17_if_false      #   8:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  10:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_10               #  13:     goto   10
l_test_10:
l_test_20_while_cond:
    jmp     l_test_exit            
l_test_24_while_cond:
    jmp     l_test_23               #  18:     goto   23
    jmp     l_test_24_while_cond    #  19:     goto   24_while_cond
l_test_23:
l_test_27_while_cond:
    movl    $1, %eax                #  22:     if     1 # 1 goto 28_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_28_while_body   
    jmp     l_test_26               #  23:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  25:     goto   27_while_cond
l_test_26:
    jmp     l_test_20_while_cond    #  27:     goto   20_while_cond
l_test_31_while_cond:
    leal    v1, %eax                #  29:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #  31:     call   t1 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  32:     if     99 >= t1 goto 32_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_32_while_body   
    jmp     l_test_30               #  33:     goto   30
l_test_32_while_body:
    jmp     l_test_exit            
    leal    v0, %eax                #  36:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     param  1 <- t2
    pushl   %eax                   
    movl    $99, %eax               #  38:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  39:     call   t3 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    jmp     l_test_31_while_cond    #  40:     goto   31_while_cond
l_test_30:
    call    dummyINTfunc            #  42:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 40 of <array 72 of <array 22 of <array 97 of <array 30 of <int>>>>>>
    .long    5
    .long   40
    .long   72
    .long   22
    .long   97
    .long   30
    .skip 737510400
v1:                                 # <array 51 of <array 13 of <array 97 of <array 20 of <array 17 of <int>>>>>>
    .long    5
    .long   51
    .long   13
    .long   97
    .long   20
    .long   17
    .skip 87462960








    # end of global data section
    #-----------------------------------------

    .end
##################################################

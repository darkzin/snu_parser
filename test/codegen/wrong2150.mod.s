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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_3_if_true          #   2:     goto   3_if_true
l_f0_3_if_true:
    jmp     l_f0_2                  #   4:     goto   2
l_f0_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 55 of <array 39 of <array 19 of <array 42 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 100 of <array 27 of <array 88 of <array 61 of <array 26 of <bool>>>>>>> %ebp+16 ]

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
    movl    $60776, %eax            #   0:     add    t7 <- 60776, 86243
    movl    $86243, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     add    t8 <- t7, 81354
    movl    $81354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5117, %eax             #   2:     add    t9 <- 5117, 34338
    movl    $34338, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     sub    t10 <- t9, 27841
    movl    $27841, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t8 > t10 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   5:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  10:     if     98 <= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  11:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_8                  #  13:     goto   8
l_f1_8:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  16:     goto   11
    jmp     l_f1_12_while_cond      #  17:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_4                  #  19:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $97, %eax               #  22:     if     97 = 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  23:     goto   16_if_false
l_f1_15_if_true:
    call    dummyBOOLfunc           #  25:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_14                 #  26:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 88 of <array 48 of <array 9 of <array 56 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movl    $80427, %eax            #   0:     assign v3 <- 80427
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   3:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 14 of <array 88 of <array 48 of <array 9 of <array 56 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]

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
    movl    $66356, %eax            #   0:     assign v0 <- 66356
    movl    %eax, v0               
    movl    $35477, %eax            #   1:     sub    t0 <- 35477, 10319
    movl    $10319, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t1 <= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    call    dummyBOOLfunc           #   7:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $0, %eax                #  11:     param  1 <- 0
    pushl   %eax                   
    leal    v2, %eax                #  12:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  14:     call   t4 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     assign v1 <- t4
    movb    %al, v1                
    movl    $39143, %eax            #  16:     if     39143 > 34967 goto 9_if_true
    movl    $34967, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #  17:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
    jmp     l_test_12               #  20:     goto   12
l_test_14_if_false:
l_test_12:
l_test_16_while_cond:
    movl    $97, %eax               #  24:     if     97 < 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_17_while_body   
    jmp     l_test_15               #  25:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  27:     goto   16_while_cond
l_test_15:
    call    dummyINTfunc            #  29:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $99, %eax               #  30:     if     99 < 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_21_if_true      
    jmp     l_test_22_if_false      #  31:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  33:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $99, %eax               #  36:     if     99 >= 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_25_if_true      
    jmp     l_test_26_if_false      #  37:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  39:     goto   24
l_test_26_if_false:
l_test_24:
l_test_29_while_cond:
    movl    $58483, %eax            #  43:     if     58483 > 28696 goto 30_while_body
    movl    $28696, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_30_while_body   
    jmp     l_test_28               #  44:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  46:     goto   29_while_cond
l_test_28:
    jmp     l_test_8                #  48:     goto   8
l_test_10_if_false:
l_test_8:
    call    dummyBOOLfunc           #  51:     call   t6 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 14 of <array 88 of <array 48 of <array 9 of <array 56 of <int>>>>>>
    .long    5
    .long   14
    .long   88
    .long   48
    .long    9
    .long   56
    .skip 119218176








    # end of global data section
    #-----------------------------------------

    .end
##################################################

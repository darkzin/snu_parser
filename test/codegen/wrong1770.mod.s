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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 45 of <array 42 of <array 9 of <array 33 of <array 86 of <int>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v4       <char> %ebp-29 ]

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
    leal    _str_1, %eax            #   0:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $5876, %eax             #   3:     assign v3 <- 5876
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #   4:     assign v4 <- 98
    movb    %al, -29(%ebp)         
    leal    _str_2, %eax            #   5:     &()    t6 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   8:     return 97
    jmp     l_f0_exit              
    call    dummyINTfunc            #   9:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
l_f0_10_while_cond:
    jmp     l_f0_9                  #  11:     goto   9
    jmp     l_f0_10_while_cond      #  12:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_14_if_false        #  14:     goto   14_if_false
    jmp     l_f0_12                 #  15:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_16_while_cond:
    jmp     l_f0_15                 #  19:     goto   15
    jmp     l_f0_16_while_cond      #  20:     goto   16_while_cond
l_f0_15:
    call    dummyProcedure          #  22:     call   dummyProcedure
    jmp     l_f0_1                  #  23:     goto   1
l_f0_1:
    movl    $100, %eax              #  25:     return 100
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 26 of <array 88 of <array 99 of <array 42 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <bool> %ebp-22 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   1:     goto   0
l_f1_0:
    movl    $5180, %eax             #   3:     add    t6 <- 5180, 7247
    movl    $7247, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     assign v2 <- t6
    movl    %eax, 12(%ebp)         
    movl    $40200, %eax            #   5:     if     40200 >= 9884 goto 7
    movl    $9884, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f1_9:
    movzbl  -21(%ebp), %eax         #  13:     assign v3 <- t7
    movb    %al, -22(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 45 of <array 42 of <array 9 of <array 33 of <array 86 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 35 of <array 45 of <array 1 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 63 of <array 32 of <array 22 of <array 80 of <int>>>>>>> %ebp+16 ]
    #   -193097588(%ebp)  193097544  [ $v4       <array 45 of <array 42 of <array 9 of <array 33 of <array 86 of <int>>>>>> %ebp-193097588 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $193097576, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $48274394, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-193097588(%ebp)     # local array 'v4': 5 dimensions
    movl    $45,-193097584(%ebp)    #   dimension 1: 45 elements
    movl    $42,-193097580(%ebp)    #   dimension 2: 42 elements
    movl    $9,-193097576(%ebp)     #   dimension 3: 9 elements
    movl    $33,-193097572(%ebp)    #   dimension 4: 33 elements
    movl    $86,-193097568(%ebp)    #   dimension 5: 86 elements

    # function body
    movl    $89879, %eax            #   0:     add    t5 <- 89879, 53261
    movl    $53261, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t6 <- t5, 80902
    movl    $80902, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t7 <- t6, 46085
    movl    $46085, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t8 <- t7, 75343
    movl    $75343, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     if     t8 > 33555 goto 1
    movl    $33555, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_1:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f2_3:
    movzbl  -41(%ebp), %eax         #  12:     return t9
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $100, %eax              #  14:     if     100 > 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  15:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  17:     goto   8
l_f2_10_if_false:
l_f2_8:
    leal    -193097588(%ebp), %eax  #  20:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  1 <- t10
    pushl   %eax                   
    movl    $86122, %eax            #  22:     sub    t11 <- 86122, 74814
    movl    $74814, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     if     t11 = 22215 goto 13
    movl    $22215, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_14                 #  24:     goto   14
l_f2_13:
    movl    $1, %eax                #  26:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  27:     goto   15
l_f2_14:
    movl    $0, %eax                #  29:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_15:
    movzbl  -21(%ebp), %eax         #  31:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  32:     call   t13 <- f0
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    jmp     l_f2_6_while_cond       #  33:     goto   6_while_cond
l_f2_21_while_cond:
    jmp     l_f2_20                 #  35:     goto   20
    jmp     l_f2_21_while_cond      #  36:     goto   21_while_cond
l_f2_20:
    movl    $98, %eax               #  38:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #  39:     call   t14 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f2_17                 #  40:     goto   17
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $193097576, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]

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
    jmp     l_test_5                #   0:     goto   5
    movl    $1, %eax                #   1:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   6:     if     t0 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   7:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
l_test_9_while_cond:
    movl    $97, %eax               #  13:     if     97 <= 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  14:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  16:     goto   9_while_cond
l_test_8:
    call    dummyBOOLfunc           #  18:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     if     t1 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  20:     goto   14_if_false
l_test_13_if_true:
    movl    $0, %eax                #  22:     assign v0 <- 0
    movb    %al, v0                
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_12               #  24:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $59772, %eax            #  27:     if     59772 >= 28349 goto 18_if_true
    movl    $28349, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  28:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_17               #  32:     goto   17
l_test_19_if_false:
l_test_17:
l_test_24_while_cond:
    jmp     l_test_23               #  36:     goto   23
    jmp     l_test_28_if_false      #  37:     goto   28_if_false
    jmp     l_test_26               #  38:     goto   26
l_test_28_if_false:
l_test_26:
l_test_30_while_cond:
    jmp     l_test_29               #  42:     goto   29
    jmp     l_test_30_while_cond    #  43:     goto   30_while_cond
l_test_29:
l_test_33_while_cond:
    movl    $100, %eax              #  46:     if     100 # 100 goto 34_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_34_while_body   
    jmp     l_test_32               #  47:     goto   32
l_test_34_while_body:
    jmp     l_test_33_while_cond    #  49:     goto   33_while_cond
l_test_32:
    jmp     l_test_exit            
    call    ReadInt                 #  52:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_24_while_cond    #  53:     goto   24_while_cond
l_test_23:
    movl    $98, %eax               #  55:     if     98 <= 98 goto 39_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_39_if_true      
    jmp     l_test_40_if_false      #  56:     goto   40_if_false
l_test_39_if_true:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  59:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_38               #  60:     goto   38
l_test_40_if_false:
l_test_38:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

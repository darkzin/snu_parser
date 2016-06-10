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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    leal    _str_1, %eax            #   1:     &()    t8 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   4:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
l_f0_10_while_cond:
    movl    $59276, %eax            #  10:     if     59276 <= 27834 goto 11_while_body
    movl    $27834, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    movl    $28936, %eax            #  15:     if     28936 < 30203 goto 14_if_true
    movl    $30203, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  16:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_19_if_false        #  18:     goto   19_if_false
    jmp     l_f0_17                 #  19:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $27989, %eax            #  22:     if     27989 # 64260 goto 21_if_true
    movl    $64260, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  23:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  25:     goto   20
l_f0_22_if_false:
l_f0_20:
    jmp     l_f0_24                 #  28:     goto   24
l_f0_24:
    movl    $31622, %eax            #  30:     if     31622 >= 49096 goto 28_if_true
    movl    $49096, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_28_if_true        
    jmp     l_f0_29_if_false        #  31:     goto   29_if_false
l_f0_28_if_true:
    jmp     l_f0_27                 #  33:     goto   27
l_f0_29_if_false:
l_f0_27:
l_f0_32_while_cond:
    jmp     l_f0_32_while_cond      #  37:     goto   32_while_cond
l_f0_35_while_cond:
    jmp     l_f0_35_while_cond      #  39:     goto   35_while_cond
l_f0_38_while_cond:
    jmp     l_f0_38_while_cond      #  41:     goto   38_while_cond
    jmp     l_f0_13                 #  42:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_5                  #  45:     goto   5
l_f0_5:
l_f0_41_while_cond:
    jmp     l_f0_40                 #  48:     goto   40
    jmp     l_f0_43                 #  49:     goto   43
l_f0_43:
l_f0_50_while_cond:
    movl    $89673, %eax            #  52:     if     89673 <= 53092 goto 51_while_body
    movl    $53092, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_51_while_body     
    jmp     l_f0_49                 #  53:     goto   49
l_f0_51_while_body:
    jmp     l_f0_50_while_cond      #  55:     goto   50_while_cond
l_f0_49:
    movl    $1912, %eax             #  57:     if     1912 < 86947 goto 54_if_true
    movl    $86947, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_54_if_true        
    jmp     l_f0_55_if_false        #  58:     goto   55_if_false
l_f0_54_if_true:
    jmp     l_f0_53                 #  60:     goto   53
l_f0_55_if_false:
l_f0_53:
    jmp     l_f0_59_if_false        #  63:     goto   59_if_false
    jmp     l_f0_57                 #  64:     goto   57
l_f0_59_if_false:
l_f0_57:
    jmp     l_f0_exit              
    leal    _str_2, %eax            #  68:     &()    t10 <- _str_2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  69:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  70:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_46                 #  71:     goto   46
l_f0_46:
    jmp     l_f0_41_while_cond      #  73:     goto   41_while_cond
l_f0_40:

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $6608, %eax             #   0:     if     6608 > 82327 goto 1_if_true
    movl    $82327, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   3:     assign v1 <- 1
    movb    %al, -21(%ebp)         
l_f1_6_while_cond:
    movl    $97, %eax               #   5:     if     97 # 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_9                  #  10:     goto   9
l_f1_9:
l_f1_13_while_cond:
    movl    $57552, %eax            #  13:     if     57552 < 54497 goto 14_while_body
    movl    $54497, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  16:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_0                  #  18:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  22:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 3 of <array 2 of <array 9 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 3 of <array 2 of <array 3 of <array 10 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   1:     if     98 # 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $1, %eax                #   5:     if     1 # 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    movl    $91670, %eax            #  10:     if     91670 >= 63790 goto 10
    movl    $63790, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10                
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_12                 #  14:     goto   12
l_f2_11:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f2_12:
    movzbl  -21(%ebp), %eax         #  18:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_16_if_false        #  19:     goto   16_if_false
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_19_if_false        #  23:     goto   19_if_false
    jmp     l_f2_17                 #  24:     goto   17
l_f2_19_if_false:
l_f2_17:
    call    dummyCHARfunc           #  27:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #  28:     return 0
    jmp     l_f2_exit              
    movl    $96065, %eax            #  29:     assign v4 <- 96065
    movl    %eax, -28(%ebp)        
l_f2_24_while_cond:
    jmp     l_f2_23                 #  31:     goto   23
    jmp     l_f2_24_while_cond      #  32:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_1                  #  34:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_27_while_cond:
    call    dummyCHARfunc           #  38:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  39:     if     t11 # 98 goto 28_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_28_while_body     
    jmp     l_f2_26                 #  40:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  42:     goto   27_while_cond
l_f2_26:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 3 of <array 2 of <array 3 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 3 of <array 2 of <array 9 of <array 2 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    movl    $73297, %eax            #   5:     add    t1 <- 73297, 59958
    movl    $59958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t2 <- t1, 51677
    movl    $51677, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $31165, %eax            #   7:     if     31165 < t2 goto 8
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8               
    jmp     l_test_9                #   8:     goto   9
l_test_8:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_10:
    movzbl  -25(%ebp), %eax         #  15:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_4                #  16:     goto   4
l_test_6_if_false:
l_test_4:
l_test_13_while_cond:
    jmp     l_test_12               #  20:     goto   12
    movl    $97, %eax               #  21:     param  3 <- 97
    pushl   %eax                   
    leal    v3, %eax                #  22:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     param  2 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  24:     param  1 <- 0
    pushl   %eax                   
    leal    v2, %eax                #  25:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  26:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  27:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    call    dummyINTfunc            #  28:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_test_13_while_cond    #  29:     goto   13_while_cond
l_test_12:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 7 of <array 3 of <array 2 of <array 9 of <array 2 of <int>>>>>>
    .long    5
    .long    7
    .long    3
    .long    2
    .long    9
    .long    2
    .skip 3024
v3:                                 # <array 8 of <array 3 of <array 2 of <array 3 of <array 10 of <char>>>>>>
    .long    5
    .long    8
    .long    3
    .long    2
    .long    3
    .long   10
    .skip 1440








    # end of global data section
    #-----------------------------------------

    .end
##################################################

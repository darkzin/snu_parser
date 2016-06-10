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
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 38 of <array 10 of <array 90 of <array 18 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 57 of <array 50 of <array 67 of <array 6 of <int>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   1:     &()    t6 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    movl    $98, %eax               #   4:     if     98 > 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_3                 
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_5                  #   8:     goto   5
l_f0_4:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f0_5:
    movzbl  -21(%ebp), %eax         #  12:     assign v1 <- t7
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 62 of <array 15 of <array 27 of <array 75 of <array 36 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 26 of <array 88 of <array 18 of <array 86 of <char>>>>>>> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $36961, %eax            #   7:     div    t6 <- 36961, 44266
    movl    $44266, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t7 <- t6, 25220
    movl    $25220, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     return t7
    jmp     l_f1_exit              
    movl    $11194, %eax            #  10:     mul    t8 <- 11194, 70843
    movl    $70843, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     mul    t9 <- t8, 71964
    movl    $71964, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     div    t10 <- t9, 18736
    movl    $18736, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 48 of <array 29 of <array 38 of <array 94 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 73 of <array 43 of <array 51 of <array 85 of <array 54 of <int>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    movl    $98, %eax               #   0:     if     98 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   4:     goto   4
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    movl    $40510, %eax            #   7:     if     40510 < 70865 goto 8
    movl    $70865, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8                 
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  15:     assign v4 <- t5
    movb    %al, -18(%ebp)         
    movl    $25708, %eax            #  16:     if     25708 = 27912 goto 13
    movl    $27912, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_14                 #  17:     goto   14
l_f2_13:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_15                 #  20:     goto   15
l_f2_14:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_15:
    movzbl  -14(%ebp), %eax         #  24:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  25:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  28:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  29:     if     t7 = 1 goto 22
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_22                
    jmp     l_f2_19                 #  30:     goto   19
l_f2_22:
    jmp     l_f2_19                 #  32:     goto   19
    jmp     l_f2_19                 #  33:     goto   19
    movl    $1, %eax                #  34:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_20                 #  35:     goto   20
l_f2_19:
    movl    $0, %eax                #  37:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f2_20:
    movzbl  -16(%ebp), %eax         #  39:     assign v4 <- t8
    movb    %al, -18(%ebp)         
    jmp     l_f2_25                 #  40:     goto   25
    jmp     l_f2_25                 #  41:     goto   25
    jmp     l_f2_25                 #  42:     goto   25
    jmp     l_f2_25                 #  43:     goto   25
    jmp     l_f2_25                 #  44:     goto   25
    movl    $1, %eax                #  45:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_26                 #  46:     goto   26
l_f2_25:
    movl    $0, %eax                #  48:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f2_26:
    movzbl  -17(%ebp), %eax         #  50:     return t9
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 87 of <array 57 of <array 50 of <array 67 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 96 of <array 38 of <array 10 of <array 90 of <array 18 of <int>>>>>>> %ebp-32 ]

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
    movl    $100, %eax              #   1:     if     100 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   4:     goto   4
l_test_4:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #   8:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_8                #  11:     goto   8
l_test_10_if_false:
l_test_8:
    leal    v1, %eax                #  14:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  16:     if     97 = 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14              
    jmp     l_test_15               #  17:     goto   15
l_test_14:
    movl    $1, %eax                #  19:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_16               #  20:     goto   16
l_test_15:
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_16:
    movzbl  -25(%ebp), %eax         #  24:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t4 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  27:     call   f0
    addl    $12, %esp              

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 96 of <array 38 of <array 10 of <array 90 of <array 18 of <int>>>>>>
    .long    5
    .long   96
    .long   38
    .long   10
    .long   90
    .long   18
    .skip 236390400
v1:                                 # <array 87 of <array 57 of <array 50 of <array 67 of <array 6 of <int>>>>>>
    .long    5
    .long   87
    .long   57
    .long   50
    .long   67
    .long    6
    .skip 398703600








    # end of global data section
    #-----------------------------------------

    .end
##################################################

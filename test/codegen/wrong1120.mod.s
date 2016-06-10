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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   2:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_6_while_cond:
    movl    $98, %eax               #   4:     if     98 <= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     if     t8 > 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_13                
    jmp     l_f0_14                 #  16:     goto   14
l_f0_13:
    movl    $1, %eax                #  18:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_15                 #  19:     goto   15
l_f0_14:
    movl    $0, %eax                #  21:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f0_15:
    movzbl  -22(%ebp), %eax         #  23:     return t9
    jmp     l_f0_exit              
l_f0_18_while_cond:
    movl    $69279, %eax            #  25:     if     69279 = 56309 goto 19_while_body
    movl    $56309, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_19_while_body     
    jmp     l_f0_19_while_body      #  26:     goto   19_while_body
    jmp     l_f0_19_while_body      #  27:     goto   19_while_body
    jmp     l_f0_17                 #  28:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  30:     goto   18_while_cond
l_f0_17:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 64 of <array 46 of <array 51 of <array 83 of <array 25 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 89 of <array 72 of <array 90 of <array 59 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 75 of <array 70 of <array 26 of <array 52 of <array 66 of <int>>>>>>> %ebp+16 ]
    #    -30(%ebp)   1  [ $v6       <bool> %ebp-30 ]

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
    movl    $90136, %eax            #   0:     mul    t6 <- 90136, 72289
    movl    $72289, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t7 <- t6, 49605
    movl    $49605, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
    movl    $20933, %eax            #   3:     add    t8 <- 20933, 47832
    movl    $47832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $85334, %eax            #   4:     if     85334 <= t8 goto 2
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2                 
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_4:
    movzbl  -29(%ebp), %eax         #  12:     assign v6 <- t9
    movb    %al, -30(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <bool> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t6 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_3                  #   3:     goto   3
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #   9:     return t7
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    movl    $97, %eax               #   0:     if     97 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_7_while_body     #  10:     goto   7_while_body
    jmp     l_test_7_while_body     #  11:     goto   7_while_body
    jmp     l_test_7_while_body     #  12:     goto   7_while_body
l_test_7_while_body:
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
    jmp     l_test_exit            
    movl    $98, %eax               #  18:     assign v1 <- 98
    movb    %al, v1                
    call    dummyINTfunc            #  19:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    call    ReadInt                 #  21:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  22:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #  23:     if     100 < 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_24_if_true      
    jmp     l_test_25_if_false      #  24:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  26:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            
l_test_29_while_cond:
    movl    $1, %eax                #  31:     if     1 # 0 goto 30_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_30_while_body   
    jmp     l_test_28               #  32:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  34:     goto   29_while_cond
l_test_28:
    jmp     l_test_6_while_cond     #  36:     goto   6_while_cond
    call    dummyCHARfunc           #  37:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  38:     if     t4 > 98 goto 33_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_33_if_true      
    jmp     l_test_34_if_false      #  39:     goto   34_if_false
l_test_33_if_true:
    jmp     l_test_exit            
    movl    $92256, %eax            #  42:     assign v2 <- 92256
    movl    %eax, v2               
    movl    $46344, %eax            #  43:     assign v2 <- 46344
    movl    %eax, v2               
    jmp     l_test_32               #  44:     goto   32
l_test_34_if_false:
l_test_32:
    movl    $90978, %eax            #  47:     add    t5 <- 90978, 17524
    movl    $17524, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  48:     if     t5 < 40094 goto 40_if_true
    movl    $40094, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_40_if_true      
    jmp     l_test_41_if_false      #  49:     goto   41_if_false
l_test_40_if_true:
l_test_44_while_cond:
    movl    $3784, %eax             #  52:     if     3784 > 81340 goto 45_while_body
    movl    $81340, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_45_while_body   
    jmp     l_test_43               #  53:     goto   43
l_test_45_while_body:
    jmp     l_test_44_while_cond    #  55:     goto   44_while_cond
l_test_43:
    jmp     l_test_39               #  57:     goto   39
l_test_41_if_false:
l_test_39:
    jmp     l_test_exit            
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

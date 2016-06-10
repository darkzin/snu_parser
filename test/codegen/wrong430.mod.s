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
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
l_f0_3_while_cond:
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_3_while_cond       #   4:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v1       <bool> %ebp-23 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    jmp     l_f1_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #   9:     assign v1 <- t8
    movb    %al, -23(%ebp)         
    movl    $22504, %eax            #  10:     if     22504 >= 65154 goto 9_if_true
    movl    $65154, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  11:     goto   10_if_false
l_f1_9_if_true:
    movl    $98, %eax               #  13:     if     98 > 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_13                
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $1, %eax                #  16:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $0, %eax                #  19:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f1_15:
    movzbl  -22(%ebp), %eax         #  21:     assign v1 <- t9
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #  22:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  23:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  24:     return 0
    jmp     l_f1_exit              
    movl    $92385, %eax            #  25:     param  0 <- 92385
    pushl   %eax                   
    call    WriteInt                #  26:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_8                  #  27:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    ReadInt                 #  30:     call   t12 <- ReadInt
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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 1 of <array 3 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 5 of <array 3 of <array 8 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v3       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $v4       <bool> %ebp-30 ]

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
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_5_if_false:
l_f2_3:
l_f2_7_while_cond:
    movl    $96268, %eax            #   5:     if     96268 # 83467 goto 8_while_body
    movl    $83467, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #   6:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
l_f2_6:
    call    ReadInt                 #  10:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #  11:     assign v3 <- 98
    movb    %al, -29(%ebp)         
    jmp     l_f2_12                 #  12:     goto   12
l_f2_12:
    jmp     l_f2_15                 #  14:     goto   15
l_f2_15:
    call    dummyINTfunc            #  16:     call   t9 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $0, %eax                #  17:     assign v4 <- 0
    movb    %al, -30(%ebp)         
    call    dummyCHARfunc           #  18:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_22_while_cond:
    jmp     l_f2_22_while_cond      #  20:     goto   22_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  22:     goto   0
l_f2_0:
    call    dummyINTfunc            #  24:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  25:     assign v3 <- 98
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_0                #   2:     goto   0
l_test_0:
l_test_7_while_cond:
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     if     t2 < 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    movl    $98, %eax               #   9:     if     98 >= 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_11              
    jmp     l_test_12               #  10:     goto   12
l_test_11:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_13               #  13:     goto   13
l_test_12:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_13:
    movzbl  -22(%ebp), %eax         #  17:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
    jmp     l_test_exit            
    movl    $100, %eax              #  22:     if     100 < 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  23:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  25:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_15               #  28:     goto   15
l_test_17_if_false:
l_test_15:
    movl    $64149, %eax            #  31:     div    t4 <- 64149, 95255
    movl    $95255, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     div    t5 <- t4, 18563
    movl    $18563, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     if     t5 >= 14211 goto 24_if_true
    movl    $14211, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  34:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  36:     goto   23
l_test_25_if_false:
l_test_23:
l_test_28_while_cond:
    movl    $51465, %eax            #  40:     sub    t6 <- 51465, 11209
    movl    $11209, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     if     t6 <= 43415 goto 29_while_body
    movl    $43415, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_29_while_body   
    jmp     l_test_27               #  42:     goto   27
l_test_29_while_body:
    call    dummyBOOLfunc           #  44:     call   t7 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    movl    $99, %eax               #  45:     if     99 >= 98 goto 33_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_33_if_true      
    jmp     l_test_34_if_false      #  46:     goto   34_if_false
l_test_33_if_true:
    jmp     l_test_32               #  48:     goto   32
l_test_34_if_false:
l_test_32:
    jmp     l_test_28_while_cond    #  51:     goto   28_while_cond
l_test_27:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

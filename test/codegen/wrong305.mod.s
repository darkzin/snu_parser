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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v1 <- t8
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    jmp     l_f1_exit              
    call    ReadInt                 #   1:     call   t8 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_3_while_cond:
    jmp     l_f1_7                  #   3:     goto   7
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
l_f1_7:
    jmp     l_f1_2                  #   6:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   8:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 10 of <array 2 of <array 6 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

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
    movl    $81219, %eax            #   0:     div    t8 <- 81219, 28835
    movl    $28835, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     div    t9 <- t8, 8079
    movl    $8079, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $75501, %eax            #   2:     sub    t10 <- 75501, t9
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     return t10
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     assign v2 <- t11
    movb    %al, -29(%ebp)         
    movl    $87043, %eax            #   6:     assign v3 <- 87043
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <char> %ebp-31 ]
    #    -32(%ebp)   1  [ $t7       <bool> %ebp-32 ]

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
    movl    $15405, %eax            #   1:     div    t0 <- 15405, 18404
    movl    $18404, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 43061
    movl    $43061, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   3:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t1 < t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $5596, %eax             #  10:     add    t3 <- 5596, 3347
    movl    $3347, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     if     t3 < 79084 goto 6_while_body
    movl    $79084, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #  12:     goto   4
l_test_6_while_body:
l_test_9_while_cond:
    jmp     l_test_8                #  15:     goto   8
    jmp     l_test_9_while_cond     #  16:     goto   9_while_cond
l_test_8:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
l_test_16_while_cond:
    movl    $96194, %eax            #  22:     if     96194 # 2196 goto 17_while_body
    movl    $2196, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
l_test_15:
    call    dummyBOOLfunc           #  27:     call   t5 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_5_while_cond     #  28:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #  30:     call   t6 <- dummyCHARfunc
    movb    %al, -31(%ebp)         
    movl    $98, %eax               #  31:     if     98 = t6 goto 21
    movzbl  -31(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_21              
    jmp     l_test_22               #  32:     goto   22
l_test_21:
    movl    $1, %eax                #  34:     assign t7 <- 1
    movb    %al, -32(%ebp)         
    jmp     l_test_23               #  35:     goto   23
l_test_22:
    movl    $0, %eax                #  37:     assign t7 <- 0
    movb    %al, -32(%ebp)         
l_test_23:
    movzbl  -32(%ebp), %eax         #  39:     assign v0 <- t7
    movb    %al, v0                
    movl    $98, %eax               #  40:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_27_if_true       #  41:     goto   27_if_true
l_test_27_if_true:
    movl    $49954, %eax            #  43:     assign v2 <- 49954
    movl    %eax, v2               
    jmp     l_test_26               #  44:     goto   26
l_test_26:
l_test_35_while_cond:
    movl    $97, %eax               #  47:     if     97 # 98 goto 36_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_36_while_body   
    jmp     l_test_34               #  48:     goto   34
l_test_36_while_body:
l_test_39_while_cond:
    movl    $1, %eax                #  51:     if     1 = 1 goto 40_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_40_while_body   
    jmp     l_test_38               #  52:     goto   38
l_test_40_while_body:
    jmp     l_test_39_while_cond    #  54:     goto   39_while_cond
l_test_38:
    jmp     l_test_35_while_cond    #  56:     goto   35_while_cond
l_test_34:

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

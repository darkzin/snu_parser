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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     assign v3 <- t5
    movb    %al, -16(%ebp)         
    jmp     l_f0_6                  #   9:     goto   6
    jmp     l_f0_6                  #  10:     goto   6
    jmp     l_f0_6                  #  11:     goto   6
l_f0_6:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  14:     goto   8
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  17:     assign v1 <- t6
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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <bool> %ebp-37 ]

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
    movl    $1568, %eax             #   0:     mul    t4 <- 1568, 73241
    movl    $73241, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t6 <- t4, t5
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              
    movl    $34784, %eax            #   4:     sub    t7 <- 34784, 53326
    movl    $53326, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v1 <- t7
    movl    %eax, -36(%ebp)        
l_f1_3_while_cond:
    jmp     l_f1_2                  #   7:     goto   2
    jmp     l_f1_2                  #   8:     goto   2
    jmp     l_f1_2                  #   9:     goto   2
    jmp     l_f1_2                  #  10:     goto   2
    jmp     l_f1_2                  #  11:     goto   2
    movl    $1, %eax                #  12:     if     1 = 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $84692, %eax            #  18:     if     84692 <= 50460 goto 16
    movl    $50460, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_16                
    jmp     l_f1_17                 #  19:     goto   17
l_f1_16:
    movl    $1, %eax                #  21:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_18                 #  22:     goto   18
l_f1_17:
    movl    $0, %eax                #  24:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_18:
    movzbl  -29(%ebp), %eax         #  26:     assign v2 <- t8
    movb    %al, -37(%ebp)         
    jmp     l_f1_3_while_cond       #  27:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

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
    movl    $58932, %eax            #   0:     if     58932 > 25160 goto 1_if_true
    movl    $25160, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $36009, %eax            #   3:     assign v1 <- 36009
    movl    %eax, -36(%ebp)        
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #   7:     if     99 # 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
    call    dummyProcedure          #  10:     call   dummyProcedure
l_f2_14_while_cond:
    movl    $44978, %eax            #  12:     if     44978 <= 74255 goto 15_while_body
    movl    $74255, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  13:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  15:     goto   14_while_cond
l_f2_13:
l_f2_18_while_cond:
    jmp     l_f2_18_while_cond      #  18:     goto   18_while_cond
    jmp     l_f2_9                  #  19:     goto   9
l_f2_9:
    jmp     l_f2_5                  #  21:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $51163, %eax            #  24:     div    t4 <- 51163, 49456
    movl    $49456, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     div    t5 <- t4, 50201
    movl    $50201, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     div    t6 <- t5, 67819
    movl    $67819, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t7 <- t6, 57093
    movl    $57093, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t8 <- t7, 48681
    movl    $48681, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     return t8
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $100, %eax              #   4:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
    jmp     l_test_exit            
    movl    $32986, %eax            #   9:     if     32986 = 60128 goto 11_if_true
    movl    $60128, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  10:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $97, %eax               #  15:     if     97 # 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_15              
    jmp     l_test_16               #  16:     goto   16
l_test_15:
    movl    $1, %eax                #  18:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_17               #  19:     goto   17
l_test_16:
    movl    $0, %eax                #  21:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_17:
    movzbl  -13(%ebp), %eax         #  23:     assign v0 <- t0
    movb    %al, v0                
    call    dummyBOOLfunc           #  24:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    movl    $0, %eax                #  26:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  27:     goto   1_while_cond
l_test_0:
l_test_26_while_cond:
    jmp     l_test_26_while_cond    #  30:     goto   26_while_cond
    jmp     l_test_exit            
    movl    $100, %eax              #  32:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_22               #  33:     goto   22
l_test_22:
    movl    $49767, %eax            #  35:     div    t2 <- 49767, 50767
    movl    $50767, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     sub    t3 <- t2, 3204
    movl    $3204, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     assign v2 <- t3
    movl    %eax, v2               
    movl    $99, %eax               #  38:     assign v1 <- 99
    movb    %al, v1                

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

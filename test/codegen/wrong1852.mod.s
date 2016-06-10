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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 15 of <array 40 of <array 80 of <array 26 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
    movl    $46406, %eax            #   2:     param  0 <- 46406
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
l_f0_3_while_cond:
    movl    $60136, %eax            #   5:     sub    t6 <- 60136, 28890
    movl    $28890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t7 <- t6, 31642
    movl    $31642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     add    t8 <- t7, 8698
    movl    $8698, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     add    t9 <- t8, 96303
    movl    $96303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     sub    t10 <- t9, 68098
    movl    $68098, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $98523, %eax            #  10:     if     98523 <= t10 goto 4_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_4_while_body      
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_while_body:
    movl    $52276, %eax            #  13:     if     52276 <= 4233 goto 7_if_true
    movl    $4233, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  14:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    movl    $99, %eax               #  20:     if     99 = 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  21:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  23:     goto   11_while_cond
l_f0_10:
    movl    $97, %eax               #  25:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  26:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -41(%ebp)   1  [ $v2       <char> %ebp-41 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #   1:     if     98 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movl    $63307, %eax            #   5:     if     63307 <= 23213 goto 7_if_true
    movl    $23213, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
    movl    $100, %eax              #   8:     assign v2 <- 100
    movb    %al, -41(%ebp)         
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_16_if_false        #  15:     goto   16_if_false
    jmp     l_f1_14                 #  16:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $36321, %eax            #  19:     add    t7 <- 36321, 17382
    movl    $17382, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t8 <- t7, 23655
    movl    $23655, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t9 <- t8, 52600
    movl    $52600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t10 <- t9, 5628
    movl    $5628, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     sub    t11 <- t10, 70003
    movl    $70003, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     sub    t12 <- t11, 63033
    movl    $63033, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     if     t12 >= 61250 goto 18_if_true
    movl    $61250, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  26:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  28:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_11                 #  31:     goto   11
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v1       <char> %ebp-30 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $58019, %eax            #   1:     div    t5 <- 58019, 83687
    movl    $83687, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t6 <- t5, 25753
    movl    $25753, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t7 <- t6, 18287
    movl    $18287, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t8 <- t7, 24309
    movl    $24309, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t8
    jmp     l_f2_exit              
    movl    $33711, %eax            #   6:     if     33711 < 13834 goto 3_if_true
    movl    $13834, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   7:     goto   4_if_false
l_f2_3_if_true:
    call    WriteLn                 #   9:     call   WriteLn
    movl    $100, %eax              #  10:     assign v1 <- 100
    movb    %al, -30(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_8                  #  12:     goto   8
    jmp     l_f2_9_while_cond       #  13:     goto   9_while_cond
l_f2_8:
l_f2_12_while_cond:
    jmp     l_f2_11                 #  16:     goto   11
    jmp     l_f2_12_while_cond      #  17:     goto   12_while_cond
l_f2_11:
    movl    $98467, %eax            #  19:     return 98467
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  20:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_2                  #  21:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    movl    $94097, %eax            #   0:     sub    t0 <- 94097, 96087
    movl    $96087, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 84720
    movl    $84720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   6:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
l_test_4_while_cond:
    movl    $97, %eax               #   8:     if     97 < 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   9:     goto   3
l_test_5_while_body:
    movl    $100, %eax              #  11:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_4_while_cond     #  12:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $1664, %eax             #  16:     if     1664 # 61078 goto 14_while_body
    movl    $61078, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
    movl    $23411, %eax            #  21:     if     23411 > 3073 goto 17_if_true
    movl    $3073, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_17_if_true      
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $5586, %eax             #  27:     if     5586 = 41014 goto 21_if_true
    movl    $41014, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  28:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  30:     goto   20
l_test_22_if_false:
l_test_20:
    call    dummyBOOLfunc           #  33:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_9                #  35:     goto   9
l_test_9:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
l_f0_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f0_6_if_true          #   5:     goto   6_if_true
    jmp     l_f0_6_if_true          #   6:     goto   6_if_true
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_5:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    movl    $76502, %eax            #  12:     add    t14 <- 76502, 65151
    movl    $65151, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     sub    t15 <- t14, 55385
    movl    $55385, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t16 <- t15, 9265
    movl    $9265, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     return t16
    jmp     l_f0_exit              
    call    ReadInt                 #  16:     call   t17 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 9 of <array 45 of <array 76 of <array 30 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $45520, %eax            #   0:     if     45520 < 52199 goto 1_if_true
    movl    $52199, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $1, %eax                #   4:     if     1 # 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    movl    $0, %eax                #   9:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    movl    $0, %eax                #  10:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_11_while_cond:
    jmp     l_f1_12_while_body      #  15:     goto   12_while_body
    jmp     l_f1_10                 #  16:     goto   10
l_f1_12_while_body:
    call    ReadInt                 #  18:     call   t14 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_11_while_cond      #  19:     goto   11_while_cond
l_f1_10:
l_f1_16_while_cond:
    call    dummyCHARfunc           #  22:     call   t15 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  23:     if     98 > t15 goto 17_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_17_while_body     
    jmp     l_f1_15                 #  24:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  26:     goto   16_while_cond
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 69 of <array 30 of <array 81 of <array 81 of <array 95 of <char>>>>>>> %ebp+8 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    movl    $28813, %eax            #   7:     if     28813 < 10326 goto 7_while_body
    movl    $10326, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_while_body:
    call    dummyBOOLfunc           #  10:     call   t14 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
    movl    $87148, %eax            #  13:     param  0 <- 87148
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t13      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t5       <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t7       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 50171
    movl    $50171, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 60709
    movl    $60709, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     div    t3 <- t2, 18151
    movl    $18151, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     mul    t4 <- t3, 16054
    movl    $16054, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_3_if_false       #   7:     goto   3_if_false
    jmp     l_test_3_if_false       #   8:     goto   3_if_false
    jmp     l_test_3_if_false       #   9:     goto   3_if_false
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    call    ReadInt                 #  12:     call   t6 <- ReadInt
    movl    %eax, -56(%ebp)        
    call    dummyBOOLfunc           #  13:     call   t7 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #  17:     call   t8 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  18:     div    t9 <- t8, 57339
    movl    $57339, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  19:     assign v0 <- t9
    movl    %eax, v0               
    movl    $94968, %eax            #  20:     if     94968 > 8799 goto 12_if_true
    movl    $8799, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_12_if_true      
    jmp     l_test_13_if_false      #  21:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_15               #  23:     goto   15
l_test_15:
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  26:     goto   19_while_cond
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
    jmp     l_test_11               #  29:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $19082, %eax            #  32:     mul    t10 <- 19082, 56844
    movl    $56844, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     div    t11 <- t10, 37859
    movl    $37859, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     add    t12 <- t11, 10064
    movl    $10064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $84794, %eax            #  35:     if     84794 <= t12 goto 25
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_25              
    jmp     l_test_26               #  36:     goto   26
l_test_25:
    movl    $1, %eax                #  38:     assign t13 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_27               #  39:     goto   27
l_test_26:
    movl    $0, %eax                #  41:     assign t13 <- 0
    movb    %al, -33(%ebp)         
l_test_27:
    movzbl  -33(%ebp), %eax         #  43:     assign v1 <- t13
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

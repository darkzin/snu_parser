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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 10 of <array 4 of <array 1 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    movl    $8107, %eax             #   0:     if     8107 > 45049 goto 1_if_true
    movl    $45049, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_6_if_false         #   3:     goto   6_if_false
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $99, %eax               #   7:     if     99 = 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  16:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  17:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 96733
    movl    $96733, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $62471, %eax            #   3:     if     62471 < t4 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $61020, %eax            #   8:     sub    t5 <- 61020, 96285
    movl    $96285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $22216, %eax            #   9:     mul    t6 <- 22216, 92935
    movl    $92935, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     div    t7 <- t6, 1056
    movl    $1056, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  11:     if     t5 <= t7 goto 5
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #  12:     goto   6
l_f1_5:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_7                  #  15:     goto   7
l_f1_6:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f1_7:
    movzbl  -33(%ebp), %eax         #  19:     assign v3 <- t8
    movb    %al, 12(%ebp)          
    movl    $30405, %eax            #  20:     assign v5 <- 30405
    movl    %eax, 20(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t3       <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 4 of <array 6 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 3 of <array 6 of <array 10 of <int>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v4       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $v5       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   3:     assign v4 <- 0
    movb    %al, -89(%ebp)         
    jmp     l_f2_5                  #   4:     goto   5
l_f2_5:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movl    $100, %eax              #   7:     if     100 # 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   8:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $18, %eax               #  16:     mul    t4 <- 18, 80001
    movl    $80001, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  17:     div    t5 <- t4, 95339
    movl    $95339, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  21:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  22:     add    t8 <- t7, 55408
    movl    $55408, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     add    t11 <- t10, 66969
    movl    $66969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  31:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t14 <- t13, 93668
    movl    $93668, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  35:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     add    t17 <- t16, 54200
    movl    $54200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  40:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  41:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  42:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $30493, %eax            #  43:     assign @t21 <- 30493
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_15_while_cond:
    jmp     l_f2_14                 #  45:     goto   14
    jmp     l_f2_14                 #  46:     goto   14
    call    dummyBOOLfunc           #  47:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  48:     if     t22 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16_while_body     
    jmp     l_f2_14                 #  49:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  51:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    movl    $99, %eax               #   1:     assign v1 <- 99
    movb    %al, v1                
l_test_3_while_cond:
    movl    $83220, %eax            #   3:     if     83220 # 31735 goto 4_while_body
    movl    $31735, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     assign v2 <- t0
    movl    %eax, v2               
    jmp     l_test_3_while_cond     #   8:     goto   3_while_cond
l_test_2:
l_test_8_while_cond:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  12:     if     98 <= t1 goto 9_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_9_while_body    
    jmp     l_test_7                #  13:     goto   7
l_test_9_while_body:
l_test_12_while_cond:
    movl    $98, %eax               #  16:     if     98 <= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  17:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
l_test_11:
    movl    $2153, %eax             #  21:     assign v2 <- 2153
    movl    %eax, v2               
    call    dummyCHARfunc           #  22:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_20_if_false      #  24:     goto   20_if_false
    jmp     l_test_18               #  25:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_8_while_cond     #  28:     goto   8_while_cond
l_test_7:
    movl    $0, %eax                #  30:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_21               #  31:     goto   21
l_test_21:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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

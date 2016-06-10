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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v0       <int> %ebp-36 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t2
    movl    %eax, -36(%ebp)        
    call    WriteLn                 #   2:     call   WriteLn
    movl    $90099, %eax            #   3:     div    t3 <- 90099, 21526
    movl    $21526, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t4 <- t3, 16304
    movl    $16304, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t5 <- t4, 23671
    movl    $23671, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     if     t5 < 32694 goto 3
    movl    $32694, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3                 
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_5                  #  10:     goto   5
l_f0_4:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f0_5:
    movzbl  -29(%ebp), %eax         #  14:     return t6
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 36 of <array 61 of <array 12 of <array 51 of <array 99 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $48718, %eax            #   3:     assign v3 <- 48718
    movl    %eax, 20(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $12860, %eax            #   7:     mul    t2 <- 12860, 32180
    movl    $32180, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $39578, %eax            #   8:     if     39578 # t2 goto 6_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   9:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_9                  #  11:     goto   9
l_f1_9:
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_13_while_cond:
    movl    $97, %eax               #  17:     if     97 > 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_14_while_body     
    jmp     l_f1_12                 #  18:     goto   12
l_f1_14_while_body:
    movl    $41107, %eax            #  20:     assign v3 <- 41107
    movl    %eax, 20(%ebp)         
    jmp     l_f1_13_while_cond      #  21:     goto   13_while_cond
l_f1_12:

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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 3 of <array 78 of <array 27 of <array 27 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -89(%ebp)   1  [ $v3       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $85451, %eax            #   0:     if     85451 >= 99092 goto 1_if_true
    movl    $99092, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    movl    $0, %eax                #   5:     assign v3 <- 0
    movb    %al, -89(%ebp)         
    call    dummyINTfunc            #   6:     call   t2 <- dummyINTfunc
    movl    %eax, -56(%ebp)        
l_f2_10_while_cond:
    movl    $46970, %eax            #   8:     if     46970 < 29729 goto 11_while_body
    movl    $29729, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #   9:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
l_f2_9:
l_f2_14_while_cond:
    movl    $63188, %eax            #  14:     if     63188 <= 27676 goto 15_while_body
    movl    $27676, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  15:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  17:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #  22:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  23:     call   WriteChar
    addl    $4, %esp               
l_f2_19_while_cond:
    jmp     l_f2_18                 #  25:     goto   18
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $63867, %eax            #  29:     mul    t4 <- 63867, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $81496, %eax            #  30:     sub    t5 <- 81496, 512
    movl    $512, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  31:     sub    t6 <- t5, 56529
    movl    $56529, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  32:     add    t7 <- t4, t6
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  36:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  37:     add    t10 <- t9, 26692
    movl    $26692, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  41:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     add    t13 <- t12, 80055
    movl    $80055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  46:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  47:     add    t16 <- t15, 78627
    movl    $78627, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  48:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  50:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  51:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  52:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $82492, %eax            #  53:     assign @t20 <- 82492
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_19_while_cond      #  54:     goto   19_while_cond
l_f2_18:

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $85787, %eax            #   2:     add    t1 <- 85787, 28457
    movl    $28457, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $25121, %eax            #   3:     if     25121 < t1 goto 3_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    movl    $98, %eax               #   6:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

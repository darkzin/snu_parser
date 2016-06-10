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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 4 of <array 8 of <array 3 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -14(%ebp)   1  [ $v5       <bool> %ebp-14 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $81415, %eax            #   1:     assign v1 <- 81415
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #   2:     if     100 < 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   6:     goto   6
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_9                  #   9:     goto   9
l_f0_9:
    movl    $100, %eax              #  11:     if     100 >= 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13                
    jmp     l_f0_14                 #  12:     goto   14
l_f0_13:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_15                 #  15:     goto   15
l_f0_14:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_15:
    movzbl  -13(%ebp), %eax         #  19:     assign v5 <- t3
    movb    %al, -14(%ebp)         
    jmp     l_f0_2                  #  20:     goto   2
l_f0_4_if_false:
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]

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
    movl    $86901, %eax            #   1:     sub    t3 <- 86901, 40725
    movl    $40725, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t4 <- t3, 42966
    movl    $42966, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $30556, %eax            #   3:     add    t5 <- 30556, 69752
    movl    $69752, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t4 < t5 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $38636, %eax            #   9:     div    t6 <- 38636, 30312
    movl    $30312, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     div    t7 <- t6, 74824
    movl    $74824, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     return t7
    jmp     l_f1_exit              
    movl    $18202, %eax            #  12:     sub    t8 <- 18202, 62682
    movl    $62682, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $20577, %eax            #  13:     if     20577 # t8 goto 6_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  14:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  16:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -52(%ebp)   4  [ $t3       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t4       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t5       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t6       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t7       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t8       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t9       <int> %ebp-76 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 6 of <array 7 of <array 10 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 3 of <array 8 of <array 2 of <array 3 of <char>>>>>>> %ebp+20 ]
    #    -80(%ebp)   4  [ $v5       <int> %ebp-80 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_2_while_body       #   3:     goto   2_while_body
    jmp     l_f2_2_while_body       #   4:     goto   2_while_body
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
l_f2_9_while_cond:
    movl    $61070, %eax            #   8:     if     61070 # 16791 goto 10_while_body
    movl    $16791, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_10_while_body     
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_13_if_true         #  15:     goto   13_if_true
    jmp     l_f2_13_if_true         #  16:     goto   13_if_true
l_f2_13_if_true:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $97292, %eax            #  21:     mul    t4 <- 97292, t3
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t5 <- t4, 27652
    movl    $27652, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     mul    t7 <- t5, t6
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     add    t8 <- t7, 18482
    movl    $18482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  31:     mul    t10 <- t8, t9
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  32:     add    t11 <- t10, 2955
    movl    $2955, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  35:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  36:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  37:     add    t14 <- t13, 80439
    movl    $80439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  40:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  41:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  42:     add    t18 <- v3, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $93361, %eax            #  43:     assign @t18 <- 93361
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_exit              
    movl    $97, %eax               #  45:     if     97 >= 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  46:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  48:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_23                 #  51:     goto   23
l_f2_23:
    jmp     l_f2_12                 #  53:     goto   12
l_f2_12:
l_f2_27_while_cond:
    movl    $41405, %eax            #  56:     if     41405 = 6925 goto 28_while_body
    movl    $6925, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_28_while_body     
    jmp     l_f2_26                 #  57:     goto   26
l_f2_28_while_body:
l_f2_31_while_cond:
    jmp     l_f2_30                 #  60:     goto   30
    jmp     l_f2_31_while_cond      #  61:     goto   31_while_cond
l_f2_30:
    call    WriteLn                 #  63:     call   WriteLn
    movl    $100, %eax              #  64:     assign v2 <- 100
    movb    %al, 12(%ebp)          
l_f2_36_while_cond:
    jmp     l_f2_35                 #  66:     goto   35
    jmp     l_f2_36_while_cond      #  67:     goto   36_while_cond
l_f2_35:
    jmp     l_f2_27_while_cond      #  69:     goto   27_while_cond
l_f2_26:

l_f2_exit:
    # epilogue
    addl    $68, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_exit            
    movl    $98, %eax               #   1:     if     98 < 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    movl    $30184, %eax            #  10:     add    t1 <- 30184, 54583
    movl    $54583, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     assign v1 <- t1
    movl    %eax, v1               
l_test_8_while_cond:
    movl    $71132, %eax            #  13:     if     71132 # 23300 goto 9_while_body
    movl    $23300, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  14:     goto   7
l_test_9_while_body:
    call    dummyCHARfunc           #  16:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  17:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  18:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_8_while_cond     #  19:     goto   8_while_cond
l_test_7:
    movl    $100, %eax              #  21:     assign v2 <- 100
    movb    %al, v2                

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

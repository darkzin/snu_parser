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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 35 of <array 84 of <array 66 of <array 56 of <array 78 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 89 of <array 3 of <array 27 of <array 69 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #    -40(%ebp)   4  [ $v5       <int> %ebp-40 ]

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
l_f0_1_while_cond:
    movl    $33846, %eax            #   1:     if     33846 >= 6826 goto 2_while_body
    movl    $6826, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $40700, %eax            #   4:     add    t10 <- 40700, 89720
    movl    $89720, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t11 <- t10, 48037
    movl    $48037, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    movl    $18074, %eax            #   9:     sub    t12 <- 18074, 12624
    movl    $12624, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $92896, %eax            #  10:     div    t13 <- 92896, 8579
    movl    $8579, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     return t14
    jmp     l_f0_exit              
    movl    $20028, %eax            #  13:     mul    t15 <- 20028, 36045
    movl    $36045, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     assign v5 <- t15
    movl    %eax, -40(%ebp)        

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 45 of <array 70 of <array 96 of <array 4 of <array 11 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #    -14(%ebp)   1  [ $v5       <char> %ebp-14 ]

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
    movl    $85341, %eax            #   0:     assign v4 <- 85341
    movl    %eax, 16(%ebp)         
l_f1_2_while_cond:
    movl    $100, %eax              #   2:     if     100 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $99, %eax               #   5:     if     99 >= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    movl    $97, %eax               #   8:     assign v5 <- 97
    movb    %al, -14(%ebp)         
    movl    $41458, %eax            #   9:     if     41458 # 36087 goto 11_if_true
    movl    $36087, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  10:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  12:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_5                  #  15:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_2_while_cond       #  18:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_16_if_false        #  20:     goto   16_if_false
    movl    $58685, %eax            #  21:     assign v2 <- 58685
    movl    %eax, 8(%ebp)          
    movl    $43136, %eax            #  22:     if     43136 >= 57090 goto 19_if_true
    movl    $57090, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  23:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  25:     goto   18
l_f1_20_if_false:
l_f1_18:
    movl    $1, %eax                #  28:     return 1
    jmp     l_f1_exit              
    movl    $48944, %eax            #  29:     if     48944 > 51702 goto 24
    movl    $51702, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_24                
    jmp     l_f1_25                 #  30:     goto   25
l_f1_24:
    movl    $1, %eax                #  32:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_26                 #  33:     goto   26
l_f1_25:
    movl    $0, %eax                #  35:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_26:
    movzbl  -13(%ebp), %eax         #  37:     return t10
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  38:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 93 of <array 99 of <array 13 of <array 96 of <int>>>>>>> %ebp+12 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    movl    $8890, %eax             #   1:     mul    t10 <- 8890, 49894
    movl    $49894, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   5:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t13 <- t12, 20296
    movl    $20296, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    call    dummyINTfunc            #  11:     call   t16 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  12:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  16:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     add    t20 <- t19, 93696
    movl    $93696, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  21:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  22:     add    t23 <- t22, 27287
    movl    $27287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  23:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  26:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t27 <- v3, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $53564, %eax            #  28:     assign @t27 <- 53564
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $97, %eax               #  29:     if     97 >= 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #  30:     goto   4
l_f2_3:
    movl    $1, %eax                #  32:     assign t28 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_5                  #  33:     goto   5
l_f2_4:
    movl    $0, %eax                #  35:     assign t28 <- 0
    movb    %al, -85(%ebp)         
l_f2_5:
    movzbl  -85(%ebp), %eax         #  37:     assign v2 <- t28
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 45 of <array 70 of <array 96 of <array 4 of <array 11 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $48866, %eax            #   0:     if     48866 >= 17595 goto 1_if_true
    movl    $17595, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   3:     if     97 = 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
l_test_9_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
l_test_12_while_cond:
    jmp     l_test_11               #  14:     goto   11
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    movl    $98, %eax               #  17:     if     98 < 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  18:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  20:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $100, %eax              #  23:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_0                #  24:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #  27:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_21_while_cond:
    movl    $57862, %eax            #  29:     add    t1 <- 57862, 31893
    movl    $31893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     sub    t2 <- t1, 75023
    movl    $75023, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     if     t2 <= 73823 goto 22_while_body
    movl    $73823, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_22_while_body   
    jmp     l_test_20               #  32:     goto   20
l_test_22_while_body:
    movl    $1, %eax                #  34:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_21_while_cond    #  35:     goto   21_while_cond
l_test_20:
    movl    $86358, %eax            #  37:     param  2 <- 86358
    pushl   %eax                   
    leal    v2, %eax                #  38:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     param  1 <- t3
    pushl   %eax                   
    movl    $97189, %eax            #  40:     add    t4 <- 97189, 90166
    movl    $90166, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     add    t5 <- t4, 74146
    movl    $74146, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     add    t6 <- t5, 76244
    movl    $76244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  43:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  44:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    movl    $97, %eax               #  45:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  46:     call   WriteChar
    addl    $4, %esp               
l_test_28_while_cond:
    movl    $1642, %eax             #  48:     add    t8 <- 1642, 48228
    movl    $48228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  49:     sub    t9 <- t8, 59183
    movl    $59183, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  50:     if     t9 < 68874 goto 29_while_body
    movl    $68874, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_29_while_body   
    jmp     l_test_27               #  51:     goto   27
l_test_29_while_body:
    jmp     l_test_exit            
    call    WriteLn                 #  54:     call   WriteLn
    movl    $97, %eax               #  55:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_28_while_cond    #  56:     goto   28_while_cond
l_test_27:

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 45 of <array 70 of <array 96 of <array 4 of <array 11 of <bool>>>>>>
    .long    5
    .long   45
    .long   70
    .long   96
    .long    4
    .long   11
    .skip 13305600








    # end of global data section
    #-----------------------------------------

    .end
##################################################

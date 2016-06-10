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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 1 of <array 8 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 2 of <array 8 of <array 9 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 6 of <array 10 of <array 6 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 4 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $66547, %eax            #   6:     mul    t2 <- 66547, 54157
    movl    $54157, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     if     t2 <= 71135 goto 5
    movl    $71135, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   8:     goto   6
l_f1_5:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  15:     return t3
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $0, %eax                #  17:     assign v3 <- 0
    movb    %al, -18(%ebp)         
    movl    $0, %eax                #  18:     return 0
    jmp     l_f1_exit              
l_f1_15_while_cond:
    movl    $98, %eax               #  20:     if     98 < 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_16_while_body     
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  23:     goto   15_while_cond
l_f1_14:
l_f1_19_while_cond:
    jmp     l_f1_19_while_cond      #  26:     goto   19_while_cond
    movl    $96358, %eax            #  27:     if     96358 < 52270 goto 22_if_true
    movl    $52270, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  28:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  30:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_10_while_cond      #  33:     goto   10_while_cond

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
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t23      <char> %ebp-69 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 4 of <array 1 of <int>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 7 of <array 5 of <array 3 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 2 of <array 2 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -1404(%ebp)  1304  [ $v4       <array 8 of <array 10 of <array 1 of <array 4 of <array 1 of <int>>>>>> %ebp-1404 ]
    #   -1405(%ebp)   1  [ $v5       <char> %ebp-1405 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1396, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $349, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1404(%ebp)          # local array 'v4': 5 dimensions
    movl    $8,-1400(%ebp)          #   dimension 1: 8 elements
    movl    $10,-1396(%ebp)         #   dimension 2: 10 elements
    movl    $1,-1392(%ebp)          #   dimension 3: 1 elements
    movl    $4,-1388(%ebp)          #   dimension 4: 4 elements
    movl    $1,-1384(%ebp)          #   dimension 5: 1 elements

    # function body
    movl    $83504, %eax            #   0:     mul    t2 <- 83504, 58113
    movl    $58113, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     sub    t3 <- t2, 47585
    movl    $47585, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   2:     if     t3 > 30632 goto 1
    movl    $30632, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -77(%ebp)         
l_f2_3:
    movzbl  -77(%ebp), %eax         #  10:     assign v3 <- t4
    movb    %al, 20(%ebp)          
    movl    $91421, %eax            #  11:     if     91421 > 92473 goto 6_if_true
    movl    $92473, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    movl    $99, %eax               #  14:     param  2 <- 99
    pushl   %eax                   
    leal    -1404(%ebp), %eax       #  15:     &()    t5 <- v4
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  16:     param  1 <- t5
    pushl   %eax                   
    movl    $97, %eax               #  17:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  18:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -85(%ebp)         
    jmp     l_f2_5                  #  19:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $97, %eax               #  22:     if     97 # 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  23:     goto   12_if_false
l_f2_11_if_true:
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $48294, %eax            #  28:     mul    t8 <- 48294, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  29:     add    t9 <- t8, 75132
    movl    $75132, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -100(%ebp), %eax        #  33:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     add    t12 <- t11, 50439
    movl    $50439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  38:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     add    t15 <- t14, 71170
    movl    $71170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  41:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  42:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  43:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     add    t18 <- t17, 15761
    movl    $15761, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  46:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  47:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  48:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  49:     add    t22 <- v1, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97, %eax               #  50:     assign @t22 <- 97
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  51:     call   t23 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #  52:     return t23
    jmp     l_f2_exit              
    jmp     l_f2_10                 #  53:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $1396, %esp             # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    movl    $84599, %eax            #   6:     if     84599 > 91125 goto 8
    movl    $91125, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8               
    jmp     l_test_9                #   7:     goto   9
l_test_8:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t0
    movb    %al, v0                
l_test_13_while_cond:
    movl    $100, %eax              #  16:     if     100 <= 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    movl    $29179, %eax            #  19:     assign v1 <- 29179
    movl    %eax, v1               
    movl    $31247, %eax            #  20:     if     31247 < 70361 goto 18
    movl    $70361, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18              
    jmp     l_test_19               #  21:     goto   19
l_test_18:
    movl    $1, %eax                #  23:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_20               #  24:     goto   20
l_test_19:
    movl    $0, %eax                #  26:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_20:
    movzbl  -14(%ebp), %eax         #  28:     assign v0 <- t1
    movb    %al, v0                
    movl    $100, %eax              #  29:     assign v2 <- 100
    movb    %al, v2                
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  31:     goto   24_while_cond
    jmp     l_test_13_while_cond    #  32:     goto   13_while_cond
l_test_12:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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

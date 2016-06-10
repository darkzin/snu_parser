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
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -50(%ebp)   1  [ $t20      <bool> %ebp-50 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 2 of <array 7 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 3 of <array 7 of <array 8 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -84(%ebp)   4  [ $v3       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $72439, %eax            #   0:     if     72439 >= 79019 goto 1_if_true
    movl    $79019, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99, %eax               #   3:     if     99 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $81431, %eax            #  12:     mul    t4 <- 81431, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  13:     add    t5 <- t4, 24875
    movl    $24875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  17:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  18:     add    t8 <- t7, 25901
    movl    $25901, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  22:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 8221
    movl    $8221, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 51389
    movl    $51389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  31:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  33:     add    t18 <- v2, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $69978, %eax            #  34:     assign @t18 <- 69978
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  35:     assign v4 <- 100
    movb    %al, -85(%ebp)         
    jmp     l_f0_0                  #  36:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  39:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  40:     if     t19 >= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  41:     goto   12_if_false
l_f0_11_if_true:
    call    dummyBOOLfunc           #  43:     call   t20 <- dummyBOOLfunc
    movb    %al, -50(%ebp)         
    jmp     l_f0_10                 #  44:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $12330, %eax            #  47:     assign v3 <- 12330
    movl    %eax, -84(%ebp)        

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 3 of <array 7 of <array 8 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 3 of <array 2 of <array 7 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 3 of <array 7 of <array 8 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 3 of <array 3 of <array 2 of <array 7 of <array 3 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <bool> %ebp-34 ]
    #   -1572(%ebp)  1536  [ $v1       <array 3 of <array 3 of <array 2 of <array 7 of <array 3 of <int>>>>>> %ebp-1572 ]
    #   -49980(%ebp)  48408  [ $v2       <array 8 of <array 3 of <array 7 of <array 8 of <array 9 of <int>>>>>> %ebp-49980 ]
    #   -49984(%ebp)   4  [ $v3       <int> %ebp-49984 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $49972, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12493, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1572(%ebp)          # local array 'v1': 5 dimensions
    movl    $3,-1568(%ebp)          #   dimension 1: 3 elements
    movl    $3,-1564(%ebp)          #   dimension 2: 3 elements
    movl    $2,-1560(%ebp)          #   dimension 3: 2 elements
    movl    $7,-1556(%ebp)          #   dimension 4: 7 elements
    movl    $3,-1552(%ebp)          #   dimension 5: 3 elements
    movl    $5,-49980(%ebp)         # local array 'v2': 5 dimensions
    movl    $8,-49976(%ebp)         #   dimension 1: 8 elements
    movl    $3,-49972(%ebp)         #   dimension 2: 3 elements
    movl    $7,-49968(%ebp)         #   dimension 3: 7 elements
    movl    $8,-49964(%ebp)         #   dimension 4: 8 elements
    movl    $9,-49960(%ebp)         #   dimension 5: 9 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    leal    -49980(%ebp), %eax      #   3:     &()    t3 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t3
    pushl   %eax                   
    leal    -1572(%ebp), %eax       #   5:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    leal    -49980(%ebp), %eax      #  10:     &()    t6 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  1 <- t6
    pushl   %eax                   
    leal    -1572(%ebp), %eax       #  12:     &()    t7 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  14:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  15:     return t8
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  16:     call   t9 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  17:     if     t9 = 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  18:     goto   10_if_false
l_f1_9_if_true:
l_f1_12_while_cond:
    movl    $99, %eax               #  21:     if     99 < 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  22:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  24:     goto   12_while_cond
l_f1_11:
    movl    $28079, %eax            #  26:     assign v3 <- 28079
    movl    %eax, -49984(%ebp)     
    jmp     l_f1_8                  #  27:     goto   8
l_f1_10_if_false:
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $49972, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 3 of <array 7 of <array 8 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 3 of <array 2 of <array 7 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 3 of <array 7 of <array 5 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #   -1560(%ebp)  1536  [ $v5       <array 3 of <array 3 of <array 2 of <array 7 of <array 3 of <int>>>>>> %ebp-1560 ]
    #   -49968(%ebp)  48408  [ $v6       <array 8 of <array 3 of <array 7 of <array 8 of <array 9 of <int>>>>>> %ebp-49968 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $49956, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12489, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1560(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-1556(%ebp)          #   dimension 1: 3 elements
    movl    $3,-1552(%ebp)          #   dimension 2: 3 elements
    movl    $2,-1548(%ebp)          #   dimension 3: 2 elements
    movl    $7,-1544(%ebp)          #   dimension 4: 7 elements
    movl    $3,-1540(%ebp)          #   dimension 5: 3 elements
    movl    $5,-49968(%ebp)         # local array 'v6': 5 dimensions
    movl    $8,-49964(%ebp)         #   dimension 1: 8 elements
    movl    $3,-49960(%ebp)         #   dimension 2: 3 elements
    movl    $7,-49956(%ebp)         #   dimension 3: 7 elements
    movl    $8,-49952(%ebp)         #   dimension 4: 8 elements
    movl    $9,-49948(%ebp)         #   dimension 5: 9 elements

    # function body
    movl    $88039, %eax            #   0:     if     88039 >= 38991 goto 1_if_true
    movl    $38991, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   4:     goto   4
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    leal    -49968(%ebp), %eax      #   7:     &()    t3 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  1 <- t3
    pushl   %eax                   
    leal    -1560(%ebp), %eax       #   9:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  11:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_8                  #  13:     goto   8
    jmp     l_f2_9_while_cond       #  14:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  19:     call   t6 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $49956, %esp            # remove locals
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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $23776, %eax            #   2:     mul    t1 <- 23776, 64420
    movl    $64420, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t1
    movl    %eax, v1               
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     assign v0 <- t2
    movb    %al, v0                
l_test_5_while_cond:
    movl    $91072, %eax            #   7:     if     91072 > 14789 goto 6_while_body
    movl    $14789, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   8:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    jmp     l_test_5_while_cond     #  11:     goto   5_while_cond
l_test_4:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

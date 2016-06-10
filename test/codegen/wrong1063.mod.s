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
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 27 of <array 41 of <array 30 of <array 94 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 68 of <array 8 of <array 67 of <array 60 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 28 of <array 35 of <array 89 of <array 13 of <array 83 of <int>>>>>>> %ebp+16 ]
    #    -19(%ebp)   1  [ $v4       <char> %ebp-19 ]

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
l_f0_1_while_cond:
    movl    $47508, %eax            #   1:     sub    t2 <- 47508, 67943
    movl    $67943, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 >= 44232 goto 2_while_body
    movl    $44232, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  10:     assign v4 <- t4
    movb    %al, -19(%ebp)         

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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 71 of <array 32 of <array 25 of <array 27 of <array 84 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $27906, %eax            #   2:     mul    t4 <- 27906, 4464
    movl    $4464, %ebx            
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     mul    t5 <- t4, 84207
    movl    $84207, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   4:     mul    t6 <- t5, 66680
    movl    $66680, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #   8:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   9:     add    t9 <- t8, 3117
    movl    $3117, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  13:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t12 <- t11, 67544
    movl    $67544, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t15 <- t14, 59000
    movl    $59000, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t18 <- t17, 33129
    movl    $33129, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  27:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  29:     add    t22 <- v3, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -72(%ebp), %eax         #  30:     assign @t22 <- t3
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
l_f1_6_while_cond:
    movl    $99, %eax               #  32:     if     99 >= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #  33:     goto   5
l_f1_7_while_body:
    movl    $26418, %eax            #  35:     if     26418 >= 22327 goto 10_if_true
    movl    $22327, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  36:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  38:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_6_while_cond       #  41:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2                  #  43:     goto   2
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 28 of <array 35 of <array 89 of <array 13 of <array 83 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 67 of <array 68 of <array 8 of <array 67 of <array 60 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 27 of <array 41 of <array 30 of <array 94 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #   -6243540(%ebp)  6243504  [ $v1       <array 2 of <array 27 of <array 41 of <array 30 of <array 94 of <bool>>>>>> %ebp-6243540 ]
    #   -592327404(%ebp)  586083864  [ $v2       <array 67 of <array 68 of <array 8 of <array 67 of <array 60 of <int>>>>>> %ebp-592327404 ]
    #   -968768948(%ebp)  376441544  [ $v3       <array 28 of <array 35 of <array 89 of <array 13 of <array 83 of <int>>>>>> %ebp-968768948 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $968768936, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $242192234, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6243540(%ebp)       # local array 'v1': 5 dimensions
    movl    $2,-6243536(%ebp)       #   dimension 1: 2 elements
    movl    $27,-6243532(%ebp)      #   dimension 2: 27 elements
    movl    $41,-6243528(%ebp)      #   dimension 3: 41 elements
    movl    $30,-6243524(%ebp)      #   dimension 4: 30 elements
    movl    $94,-6243520(%ebp)      #   dimension 5: 94 elements
    movl    $5,-592327404(%ebp)     # local array 'v2': 5 dimensions
    movl    $67,-592327400(%ebp)    #   dimension 1: 67 elements
    movl    $68,-592327396(%ebp)    #   dimension 2: 68 elements
    movl    $8,-592327392(%ebp)     #   dimension 3: 8 elements
    movl    $67,-592327388(%ebp)    #   dimension 4: 67 elements
    movl    $60,-592327384(%ebp)    #   dimension 5: 60 elements
    movl    $5,-968768948(%ebp)     # local array 'v3': 5 dimensions
    movl    $28,-968768944(%ebp)    #   dimension 1: 28 elements
    movl    $35,-968768940(%ebp)    #   dimension 2: 35 elements
    movl    $89,-968768936(%ebp)    #   dimension 3: 89 elements
    movl    $13,-968768932(%ebp)    #   dimension 4: 13 elements
    movl    $83,-968768928(%ebp)    #   dimension 5: 83 elements

    # function body
    leal    -968768948(%ebp), %eax  #   0:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t2
    pushl   %eax                   
    leal    -592327404(%ebp), %eax  #   2:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t3
    pushl   %eax                   
    leal    -6243540(%ebp), %eax    #   4:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   6:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #   7:     if     100 >= t5 goto 1_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   8:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #  11:     goto   5_while_cond
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_8_while_cond:
    movl    $45837, %eax            #  16:     if     45837 > 19552 goto 9_while_body
    movl    $19552, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9_while_body      
    jmp     l_f2_7                  #  17:     goto   7
l_f2_9_while_body:
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  20:     goto   12_while_cond
    call    dummyINTfunc            #  21:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_f2_8_while_cond       #  22:     goto   8_while_cond
l_f2_7:
    call    dummyCHARfunc           #  24:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
l_f2_20_while_cond:
    jmp     l_f2_19                 #  26:     goto   19
    jmp     l_f2_20_while_cond      #  27:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_15                 #  29:     goto   15
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $968768936, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
l_test_4_while_cond:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_while_cond     #   7:     goto   4_while_cond
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

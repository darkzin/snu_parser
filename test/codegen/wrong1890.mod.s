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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t7       <char> %ebp-89 ]
    #    -90(%ebp)   1  [ $t8       <bool> %ebp-90 ]
    #    -91(%ebp)   1  [ $t9       <char> %ebp-91 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 29 of <array 13 of <array 65 of <array 17 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]
    #    -92(%ebp)   1  [ $v6       <char> %ebp-92 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #   1:     if     t7 = 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $92307, %eax            #   4:     if     92307 <= 82064 goto 5_if_true
    movl    $82064, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    dummyBOOLfunc           #  10:     call   t8 <- dummyBOOLfunc
    movb    %al, -90(%ebp)         
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  14:     call   t9 <- dummyCHARfunc
    movb    %al, -91(%ebp)         
    movzbl  -91(%ebp), %eax         #  15:     assign v6 <- t9
    movb    %al, -92(%ebp)         
    movl    $57070, %eax            #  16:     div    t10 <- 57070, 76377
    movl    $76377, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     div    t11 <- t10, 88944
    movl    $88944, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t12 <- t11, 85262
    movl    $85262, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $89526, %eax            #  22:     mul    t14 <- 89526, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 40088
    movl    $40088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     add    t18 <- t17, 2833
    movl    $2833, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t21 <- t20, 68670
    movl    $68670, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  37:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  38:     add    t24 <- t23, 32173
    movl    $32173, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  40:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  41:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  42:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  43:     add    t28 <- v2, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -24(%ebp), %eax         #  44:     assign @t28 <- t12
    movl    -88(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 61 of <array 29 of <array 13 of <array 65 of <array 17 of <int>>>>>>> %ebp-28 ]
    #   -101646792(%ebp)  101646764  [ $v2       <array 61 of <array 29 of <array 13 of <array 65 of <array 17 of <int>>>>>> %ebp-101646792 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $101646780, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25411695, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-101646792(%ebp)     # local array 'v2': 5 dimensions
    movl    $61,-101646788(%ebp)    #   dimension 1: 61 elements
    movl    $29,-101646784(%ebp)    #   dimension 2: 29 elements
    movl    $13,-101646780(%ebp)    #   dimension 3: 13 elements
    movl    $65,-101646776(%ebp)    #   dimension 4: 65 elements
    movl    $17,-101646772(%ebp)    #   dimension 5: 17 elements

    # function body
    movl    $64494, %eax            #   0:     param  3 <- 64494
    pushl   %eax                   
    movl    $1, %eax                #   1:     if     1 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f1_3:
    movzbl  -22(%ebp), %eax         #   9:     param  2 <- t7
    pushl   %eax                   
    jmp     l_f1_5                  #  10:     goto   5
    jmp     l_f1_5                  #  11:     goto   5
l_f1_5:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_7                  #  14:     goto   7
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -23(%ebp)         
l_f1_7:
    movzbl  -23(%ebp), %eax         #  17:     param  1 <- t8
    pushl   %eax                   
    leal    -101646792(%ebp), %eax  #  18:     &()    t9 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  20:     call   t10 <- f0
    addl    $16, %esp              
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #  21:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_13_if_true         #  22:     goto   13_if_true
l_f1_13_if_true:
    call    dummyBOOLfunc           #  24:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_12                 #  25:     goto   12
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $101646780, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #    -29(%ebp)   1  [ $v3       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $v4       <bool> %ebp-30 ]

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
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, -29(%ebp)         
    movl    $15445, %eax            #   1:     sub    t7 <- 15445, 99033
    movl    $99033, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   2:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t9 <- t7, t8
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t9 = 67163 goto 2
    movl    $67163, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   8:     goto   4
l_f2_3:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #  12:     assign v4 <- t10
    movb    %al, -30(%ebp)         
    movl    $55480, %eax            #  13:     if     55480 = 80181 goto 10_if_true
    movl    $80181, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  14:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $40516, %eax            #  19:     assign v2 <- 40516
    movl    %eax, 8(%ebp)          
    movl    $99, %eax               #  20:     if     99 <= 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  21:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  23:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $30128, %eax            #  26:     if     30128 >= 67819 goto 19_if_true
    movl    $67819, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  27:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  29:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $97, %eax               #  32:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  33:     goto   6
l_f2_6:

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]

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
    movl    $14172, %eax            #   0:     mul    t0 <- 14172, 72124
    movl    $72124, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $38537, %eax            #   1:     if     38537 > t0 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    call    ReadInt                 #   4:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    call    ReadInt                 #  13:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $47458, %eax            #  14:     assign v0 <- 47458
    movl    %eax, v0               
    call    dummyBOOLfunc           #  15:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #  16:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_5                #  17:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $16563, %eax            #  20:     param  0 <- 16563
    pushl   %eax                   
    call    WriteInt                #  21:     call   WriteInt
    addl    $4, %esp               
    movl    $74747, %eax            #  22:     if     74747 < 48394 goto 17_if_true
    movl    $48394, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  23:     goto   18_if_false
l_test_17_if_true:
l_test_21_while_cond:
    jmp     l_test_20               #  26:     goto   20
    jmp     l_test_21_while_cond    #  27:     goto   21_while_cond
l_test_20:
    movl    $62770, %eax            #  29:     assign v0 <- 62770
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_25               #  31:     goto   25
l_test_25:
    leal    _str_1, %eax            #  33:     &()    t4 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  35:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_29               #  36:     goto   29
l_test_29:
    movl    $99926, %eax            #  38:     if     99926 <= 65770 goto 33
    movl    $65770, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_33              
    jmp     l_test_34               #  39:     goto   34
l_test_33:
    movl    $1, %eax                #  41:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_35               #  42:     goto   35
l_test_34:
    movl    $0, %eax                #  44:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_35:
    movzbl  -33(%ebp), %eax         #  46:     assign v2 <- t5
    movb    %al, v2                
    jmp     l_test_37               #  47:     goto   37
l_test_37:
    jmp     l_test_16               #  49:     goto   16
l_test_18_if_false:
l_test_16:
l_test_41_while_cond:
    movl    $100, %eax              #  53:     assign v1 <- 100
    movb    %al, v1                
    movl    $99, %eax               #  54:     if     99 = 97 goto 45_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_45_if_true      
    jmp     l_test_46_if_false      #  55:     goto   46_if_false
l_test_45_if_true:
    jmp     l_test_44               #  57:     goto   44
l_test_46_if_false:
l_test_44:
    movl    $65375, %eax            #  60:     assign v0 <- 65375
    movl    %eax, v0               
    jmp     l_test_41_while_cond    #  61:     goto   41_while_cond
    call    dummyBOOLfunc           #  62:     call   t6 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  63:     assign v2 <- t6
    movb    %al, v2                

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

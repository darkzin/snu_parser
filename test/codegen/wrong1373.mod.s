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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 79 of <array 96 of <array 57 of <array 8 of <array 88 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 18 of <array 69 of <array 65 of <array 75 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 > t7 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyProcedure          #   7:     call   dummyProcedure
    movl    $99, %eax               #   8:     assign v3 <- 99
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t7       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 93 of <array 24 of <array 38 of <array 88 of <array 70 of <bool>>>>>>> %ebp+20 ]
    #   -101(%ebp)   1  [ $v4       <char> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t7 <- dummyBOOLfunc
    movb    %al, -89(%ebp)         
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    movl    $45632, %eax            #   5:     add    t8 <- 45632, 38803
    movl    $38803, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   6:     sub    t9 <- t8, 13474
    movl    $13474, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   7:     add    t10 <- t9, 30803
    movl    $30803, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t11 <- t10, 5765
    movl    $5765, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     if     t11 = 8147 goto 5_if_true
    movl    $8147, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  10:     goto   6_if_false
l_f1_5_if_true:
    movl    $97, %eax               #  12:     return 97
    jmp     l_f1_exit              
    movl    $100, %eax              #  13:     assign v4 <- 100
    movb    %al, -101(%ebp)        
    call    dummyBOOLfunc           #  14:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_11                 #  15:     goto   11
l_f1_11:
    movl    $97, %eax               #  17:     return 97
    jmp     l_f1_exit              
    movl    $94342, %eax            #  18:     assign v1 <- 94342
    movl    %eax, 12(%ebp)         
    jmp     l_f1_4                  #  19:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyBOOLfunc           #  22:     call   t13 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  23:     if     t13 = 1 goto 17
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_17                
    jmp     l_f1_18                 #  24:     goto   18
l_f1_17:
    movl    $1, %eax                #  26:     assign t14 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_19                 #  27:     goto   19
l_f1_18:
    movl    $0, %eax                #  29:     assign t14 <- 0
    movb    %al, -23(%ebp)         
l_f1_19:
    movl    $2, %eax                #  31:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $33701, %eax            #  34:     mul    t16 <- 33701, t15
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     add    t17 <- t16, 74597
    movl    $74597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  36:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  37:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  38:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  39:     mul    t19 <- t17, t18
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  40:     add    t20 <- t19, 46596
    movl    $46596, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  42:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  43:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  44:     mul    t22 <- t20, t21
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  45:     add    t23 <- t22, 42413
    movl    $42413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  47:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  48:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  49:     mul    t25 <- t23, t24
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  50:     add    t26 <- t25, 72147
    movl    $72147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  51:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  52:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  53:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  54:     add    t29 <- t27, t28
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  55:     add    t30 <- v3, t29
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -23(%ebp), %eax         #  56:     assign @t30 <- t14
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 97 of <array 24 of <array 2 of <array 98 of <array 26 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t7 # 61800 goto 1_if_true
    movl    $61800, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   4:     if     0 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  12:     return t8
    jmp     l_f2_exit              
l_f2_10_while_cond:
    jmp     l_f2_9                  #  14:     goto   9
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_13_if_true         #  20:     goto   13_if_true
l_f2_13_if_true:
    movl    $99, %eax               #  22:     assign v1 <- 99
    movb    %al, -19(%ebp)         
    call    WriteLn                 #  23:     call   WriteLn
    movl    $88440, %eax            #  24:     assign v2 <- 88440
    movl    %eax, -24(%ebp)        
l_f2_20_while_cond:
    jmp     l_f2_19                 #  26:     goto   19
    jmp     l_f2_20_while_cond      #  27:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_12                 #  29:     goto   12
l_f2_12:
    movl    $55932, %eax            #  31:     if     55932 <= 42910 goto 23_if_true
    movl    $42910, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  32:     goto   24_if_false
l_f2_23_if_true:
    movl    $99, %eax               #  34:     if     99 # 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  35:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  37:     goto   26
l_f2_28_if_false:
l_f2_26:
    movl    $1, %eax                #  40:     return 1
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  41:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
l_f2_33_while_cond:
    jmp     l_f2_32                 #  43:     goto   32
    jmp     l_f2_33_while_cond      #  44:     goto   33_while_cond
l_f2_32:
    jmp     l_f2_22                 #  46:     goto   22
l_f2_24_if_false:
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    jmp     l_test_exit            
    movl    $73641, %eax            #   1:     sub    t0 <- 73641, 85955
    movl    $85955, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 >= 98627 goto 2_if_true
    movl    $98627, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    call    WriteLn                 #  10:     call   WriteLn
    movl    $40502, %eax            #  11:     assign v0 <- 40502
    movl    %eax, v0               
    jmp     l_test_8                #  12:     goto   8
l_test_8:
    movl    $84069, %eax            #  14:     div    t1 <- 84069, 47408
    movl    $47408, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t2 <- t1, 97264
    movl    $97264, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t3 <- t2, 83814
    movl    $83814, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     sub    t4 <- t3, 86992
    movl    $86992, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     sub    t5 <- t4, 51730
    movl    $51730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     if     t5 <= 62422 goto 14
    movl    $62422, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14              
    jmp     l_test_15               #  20:     goto   15
l_test_14:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_16               #  23:     goto   16
l_test_15:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_16:
    movzbl  -37(%ebp), %eax         #  27:     assign v1 <- t6
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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

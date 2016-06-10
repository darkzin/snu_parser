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
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t7       <bool> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 2 of <array 7 of <array 8 of <array 4 of <bool>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $51296, %eax            #   1:     add    t2 <- 51296, 36915
    movl    $36915, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t2, 84203
    movl    $84203, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $84439, %eax            #   3:     if     84439 > t3 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    movl    $7682, %eax             #   6:     assign v0 <- 7682
    movl    %eax, 8(%ebp)          
    movl    $0, %eax                #   7:     return 0
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   8:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movl    $1, %eax                #  12:     if     1 # t5 goto 8
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #  13:     goto   9
l_f0_8:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_10                 #  16:     goto   10
l_f0_9:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -23(%ebp)         
l_f0_10:
    movzbl  -23(%ebp), %eax         #  20:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_13                 #  21:     goto   13
    jmp     l_f0_13                 #  22:     goto   13
    jmp     l_f0_14                 #  23:     goto   14
l_f0_13:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f0_15                 #  26:     goto   15
l_f0_14:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -24(%ebp)         
l_f0_15:
    movzbl  -24(%ebp), %eax         #  30:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 9 of <array 10 of <array 7 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 9 of <array 5 of <array 5 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 6 of <array 2 of <array 1 of <array 6 of <int>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v4       <bool> %ebp-16 ]

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
    movl    $98, %eax               #   0:     if     98 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v4 <- t2
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t3 # 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_8                  #  14:     goto   8
l_f1_7:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_8:
    movzbl  -15(%ebp), %eax         #  18:     return t4
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_12_while_body      #  20:     goto   12_while_body
    jmp     l_f1_12_while_body      #  21:     goto   12_while_body
    movl    $97, %eax               #  22:     if     97 <= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  23:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  25:     goto   11_while_cond
l_f1_10:

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
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t5       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 4 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 9 of <array 7 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 8 of <array 8 of <array 3 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $12064, %eax            #   0:     param  0 <- 12064
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    movl    $27807, %eax            #   2:     div    t2 <- 27807, 1868
    movl    $1868, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   3:     div    t3 <- t2, 95246
    movl    $95246, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   4:     mul    t4 <- t3, 44883
    movl    $44883, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $35620, %eax            #   5:     if     35620 # t4 goto 2
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_4                  #   9:     goto   4
l_f2_3:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -77(%ebp)         
l_f2_4:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $60107, %eax            #  16:     mul    t7 <- 60107, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  17:     add    t8 <- t7, 77887
    movl    $77887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  21:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 62350
    movl    $62350, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 7082
    movl    $7082, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t16, 93959
    movl    $93959, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  35:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t21 <- v0, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -77(%ebp), %eax         #  38:     assign @t21 <- t5
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_7_while_cond:
    jmp     l_f2_8_while_body       #  40:     goto   8_while_body
    jmp     l_f2_8_while_body       #  41:     goto   8_while_body
l_f2_8_while_body:
    jmp     l_f2_16_if_false        #  43:     goto   16_if_false
    jmp     l_f2_14                 #  44:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_19_if_false        #  47:     goto   19_if_false
    jmp     l_f2_17                 #  48:     goto   17
l_f2_19_if_false:
l_f2_17:
    call    dummyCHARfunc           #  51:     call   t22 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    jmp     l_f2_7_while_cond       #  52:     goto   7_while_cond

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $11746, %eax            #   1:     assign v0 <- 11746
    movl    %eax, v0               
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $29423, %eax            #   3:     param  0 <- 29423
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   6:     goto   8_while_cond
    jmp     l_test_1                #   7:     goto   1
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_13_if_false      #  10:     goto   13_if_false
    movl    $12060, %eax            #  11:     param  0 <- 12060
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    movl    $76678, %eax            #  13:     assign v0 <- 76678
    movl    %eax, v0               
    movl    $97, %eax               #  14:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $100, %eax              #  17:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  18:     call   WriteChar
    addl    $4, %esp               
l_test_21_while_cond:
    movl    $98, %eax               #  20:     if     98 >= 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_22_while_body   
    jmp     l_test_20               #  21:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  23:     goto   21_while_cond
l_test_20:
    movl    $44867, %eax            #  25:     if     44867 > 39105 goto 25_if_true
    movl    $39105, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_25_if_true      
    jmp     l_test_26_if_false      #  26:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  28:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_11               #  31:     goto   11
l_test_13_if_false:
l_test_11:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

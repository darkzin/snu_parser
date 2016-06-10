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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 92167
    movl    $92167, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t2
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   4:     if     100 > t3 goto 2
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2                 
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
l_f0_3:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f0_4:
    movzbl  -22(%ebp), %eax         #  12:     return t4
    jmp     l_f0_exit              
    movl    $68700, %eax            #  13:     if     68700 # 28996 goto 7_if_true
    movl    $28996, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  14:     goto   8_if_false
l_f0_7_if_true:
    movl    $99, %eax               #  16:     if     99 > 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_11                
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_13                 #  20:     goto   13
l_f0_12:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -23(%ebp)         
l_f0_13:
    movzbl  -23(%ebp), %eax         #  24:     return t5
    jmp     l_f0_exit              
    movl    $22464, %eax            #  25:     assign v2 <- 22464
    movl    %eax, -28(%ebp)        
    jmp     l_f0_6                  #  26:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 26 of <array 62 of <array 80 of <array 72 of <array 64 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 65 of <array 69 of <array 100 of <array 74 of <array 70 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 94 of <array 94 of <array 81 of <array 91 of <array 86 of <char>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #   6:     assign v4 <- 99
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t5       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 87 of <array 11 of <array 86 of <array 47 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 58 of <array 29 of <array 63 of <array 76 of <array 53 of <bool>>>>>>> %ebp+20 ]
    #    -97(%ebp)   1  [ $v6       <bool> %ebp-97 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $29563, %eax            #   2:     return 29563
    jmp     l_f2_exit              
    movl    $10131, %eax            #   3:     if     10131 < 72581 goto 6
    movl    $72581, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6                 
    jmp     l_f2_7                  #   4:     goto   7
l_f2_6:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  11:     assign v6 <- t1
    movb    %al, -97(%ebp)         
    call    WriteLn                 #  12:     call   WriteLn
    jmp     l_f2_1                  #  13:     goto   1
l_f2_1:
    movl    $25396, %eax            #  15:     mul    t2 <- 25396, 35385
    movl    $35385, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  16:     add    t3 <- t2, 84567
    movl    $84567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  17:     sub    t4 <- t3, 5972
    movl    $5972, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $30927, %eax            #  18:     if     30927 >= t4 goto 12
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_12                
    jmp     l_f2_13                 #  19:     goto   13
l_f2_12:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_14                 #  22:     goto   14
l_f2_13:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -77(%ebp)         
l_f2_14:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  28:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $69726, %eax            #  29:     mul    t7 <- 69726, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  30:     add    t8 <- t7, 25413
    movl    $25413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  32:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  33:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  34:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     add    t11 <- t10, 1670
    movl    $1670, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  37:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  38:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  39:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  40:     add    t14 <- t13, 42598
    movl    $42598, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  42:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  43:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  44:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  45:     add    t17 <- t16, 12339
    movl    $12339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  46:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  47:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  48:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  49:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  50:     add    t21 <- v5, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -77(%ebp), %eax         #  51:     assign @t21 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $31467, %eax            #   9:     if     31467 <= 51459 goto 8_if_true
    movl    $51459, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #  10:     goto   9_if_false
l_test_8_if_true:
    movl    $0, %eax                #  12:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  14:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  15:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_7                #  16:     goto   7
l_test_9_if_false:
l_test_7:
l_test_15_while_cond:
    movl    $100, %eax              #  20:     if     100 < 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  21:     goto   14
l_test_16_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
l_test_14:
    jmp     l_test_21_if_true       #  27:     goto   21_if_true
    jmp     l_test_21_if_true       #  28:     goto   21_if_true
    jmp     l_test_21_if_true       #  29:     goto   21_if_true
    jmp     l_test_21_if_true       #  30:     goto   21_if_true
l_test_21_if_true:
    jmp     l_test_20               #  32:     goto   20
l_test_20:
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 10 of <array 7 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 7 of <array 2 of <array 5 of <array 1 of <char>>>>>>> %ebp+16 ]
    #    -26(%ebp)   1  [ $v3       <bool> %ebp-26 ]

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
l_f0_1_while_cond:
    movl    $89096, %eax            #   1:     sub    t0 <- 89096, 52304
    movl    $52304, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $50227, %eax            #   2:     if     50227 >= t0 goto 4
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_4                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_4:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f0_6:
    movzbl  -17(%ebp), %eax         #  10:     assign v3 <- t1
    movb    %al, -26(%ebp)         
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
    movl    $63105, %eax            #  12:     mul    t2 <- 63105, 35604
    movl    $35604, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     assign v0 <- t2
    movl    %eax, 8(%ebp)          
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 4 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 9 of <array 8 of <array 4 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v3       <char> %ebp-23 ]

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
    movl    $98, %eax               #   0:     if     98 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
l_f1_1:
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v2 <- t0
    movb    %al, -22(%ebp)         
l_f1_7_while_cond:
    movl    $99, %eax               #   8:     assign v3 <- 99
    movb    %al, -23(%ebp)         
    jmp     l_f1_12_if_false        #   9:     goto   12_if_false
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_if_false:
l_f1_10:
l_f1_14_while_cond:
    movl    $83278, %eax            #  14:     if     83278 < 72163 goto 15_while_body
    movl    $72163, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  15:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  17:     goto   14_while_cond
l_f1_13:
    leal    _str_1, %eax            #  19:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 3 of <array 7 of <array 2 of <array 5 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 4 of <array 10 of <array 7 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t20      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 3 of <array 7 of <array 2 of <array 5 of <array 1 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <ptr(4) to <array 7 of <array 4 of <array 10 of <array 7 of <array 4 of <bool>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t23      <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t25      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t3       <char> %ebp-86 ]
    #    -92(%ebp)   4  [ $t4       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 8 of <array 2 of <array 1 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 7 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 9 of <array 7 of <array 2 of <array 6 of <char>>>>>>> %ebp+20 ]
    #   -7976(%ebp)  7864  [ $v4       <array 7 of <array 4 of <array 10 of <array 7 of <array 4 of <bool>>>>>> %ebp-7976 ]
    #   -8212(%ebp)  234  [ $v5       <array 3 of <array 7 of <array 2 of <array 5 of <array 1 of <char>>>>>> %ebp-8212 ]
    #   -8216(%ebp)   4  [ $v6       <int> %ebp-8216 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8204, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2051, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-7976(%ebp)          # local array 'v4': 5 dimensions
    movl    $7,-7972(%ebp)          #   dimension 1: 7 elements
    movl    $4,-7968(%ebp)          #   dimension 2: 4 elements
    movl    $10,-7964(%ebp)         #   dimension 3: 10 elements
    movl    $7,-7960(%ebp)          #   dimension 4: 7 elements
    movl    $4,-7956(%ebp)          #   dimension 5: 4 elements
    movl    $5,-8212(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-8208(%ebp)          #   dimension 1: 3 elements
    movl    $7,-8204(%ebp)          #   dimension 2: 7 elements
    movl    $2,-8200(%ebp)          #   dimension 3: 2 elements
    movl    $5,-8196(%ebp)          #   dimension 4: 5 elements
    movl    $1,-8192(%ebp)          #   dimension 5: 1 elements

    # function body
    leal    -8212(%ebp), %eax       #   0:     &()    t0 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    leal    -7976(%ebp), %eax       #   2:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    call    ReadInt                 #   4:     call   t2 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   6:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -86(%ebp)         
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $94638, %eax            #  10:     mul    t5 <- 94638, t4
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  11:     add    t6 <- t5, 5902
    movl    $5902, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  15:     mul    t8 <- t6, t7
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  16:     add    t9 <- t8, 72316
    movl    $72316, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -112(%ebp), %eax        #  20:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t12 <- t11, 79893
    movl    $79893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t15 <- t14, 78286
    movl    $78286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  29:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  30:     add    t18 <- t16, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    20(%ebp), %eax          #  31:     add    t19 <- v3, t18
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -86(%ebp), %eax         #  32:     assign @t19 <- t3
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_2                  #  33:     goto   2
l_f2_2:
    movl    $1, %eax                #  35:     assign t20 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_4                  #  36:     goto   4
    movl    $0, %eax                #  37:     assign t20 <- 0
    movb    %al, -65(%ebp)         
l_f2_4:
    movzbl  -65(%ebp), %eax         #  39:     return t20
    jmp     l_f2_exit              
    jmp     l_f2_8_if_false         #  40:     goto   8_if_false
    leal    -8212(%ebp), %eax       #  41:     &()    t21 <- v5
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     param  2 <- t21
    pushl   %eax                   
    leal    -7976(%ebp), %eax       #  43:     &()    t22 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  44:     param  1 <- t22
    pushl   %eax                   
    movl    $5422, %eax             #  45:     param  0 <- 5422
    pushl   %eax                   
    call    f0                      #  46:     call   t23 <- f0
    addl    $12, %esp              
    movb    %al, -77(%ebp)         
    movl    $48370, %eax            #  47:     if     48370 > 25488 goto 11_if_true
    movl    $25488, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  48:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  50:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    ReadInt                 #  53:     call   t24 <- ReadInt
    movl    %eax, -84(%ebp)        
    movl    $92633, %eax            #  54:     assign v6 <- 92633
    movl    %eax, -8216(%ebp)      
    movl    $98, %eax               #  55:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  56:     call   WriteChar
    addl    $4, %esp               
    movl    $24513, %eax            #  57:     if     24513 > 25933 goto 18
    movl    $25933, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_18                
    jmp     l_f2_19                 #  58:     goto   19
l_f2_18:
    movl    $1, %eax                #  60:     assign t25 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_20                 #  61:     goto   20
l_f2_19:
    movl    $0, %eax                #  63:     assign t25 <- 0
    movb    %al, -85(%ebp)         
l_f2_20:
    movzbl  -85(%ebp), %eax         #  65:     return t25
    jmp     l_f2_exit              
    jmp     l_f2_22                 #  66:     goto   22
l_f2_22:
    jmp     l_f2_6                  #  68:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $8204, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $23468, %eax            #   1:     if     23468 > 58362 goto 4_if_true
    movl    $58362, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    call    WriteLn                 #  11:     call   WriteLn
l_test_10_while_cond:
    movl    $98, %eax               #  13:     if     98 > 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
    movl    $18103, %eax            #  19:     assign v0 <- 18103
    movl    %eax, v0               
    jmp     l_test_17               #  20:     goto   17
l_test_17:
    movl    $94633, %eax            #  22:     assign v0 <- 94633
    movl    %eax, v0               
    jmp     l_test_21               #  23:     goto   21
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_13               #  26:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

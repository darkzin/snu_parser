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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t4
    jmp     l_f0_exit              
    call    WriteLn                 #   4:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t9       <bool> %ebp-31 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 2 of <array 6 of <array 9 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 9 of <array 8 of <array 3 of <array 10 of <char>>>>>>> %ebp+16 ]
    #   -17336(%ebp)  17304  [ $v3       <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>> %ebp-17336 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17324, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4331, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17336(%ebp)         # local array 'v3': 5 dimensions
    movl    $5,-17332(%ebp)         #   dimension 1: 5 elements
    movl    $9,-17328(%ebp)         #   dimension 2: 9 elements
    movl    $8,-17324(%ebp)         #   dimension 3: 8 elements
    movl    $8,-17320(%ebp)         #   dimension 4: 8 elements
    movl    $6,-17316(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $97, %eax               #   0:     param  2 <- 97
    pushl   %eax                   
    leal    -17336(%ebp), %eax      #   1:     &()    t3 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t3
    pushl   %eax                   
    movl    $78512, %eax            #   3:     mul    t4 <- 78512, 3292
    movl    $3292, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t5 <- t4, 48147
    movl    $48147, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $65254, %eax            #   5:     add    t6 <- 65254, t5
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   7:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
l_f1_2_while_cond:
    call    dummyCHARfunc           #   9:     call   t8 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $97, %eax               #  10:     if     97 < t8 goto 3_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
l_f1_7_while_cond:
    movl    $100, %eax              #  17:     if     100 > 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  18:     goto   6
l_f1_8_while_body:
l_f1_11_while_cond:
    call    dummyBOOLfunc           #  21:     call   t9 <- dummyBOOLfunc
    movb    %al, -31(%ebp)         
    movl    $1, %eax                #  22:     if     1 = t9 goto 12_while_body
    movzbl  -31(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  23:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  25:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_7_while_cond       #  27:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $17324, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t5       <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t6       <char> %ebp-125 ]
    #   -126(%ebp)   1  [ $t7       <bool> %ebp-126 ]
    #   -132(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>>> %ebp-132 ]
    #   -133(%ebp)   1  [ $t9       <char> %ebp-133 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -17440(%ebp)  17304  [ $v1       <array 5 of <array 9 of <array 8 of <array 8 of <array 6 of <char>>>>>> %ebp-17440 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17428, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4357, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17440(%ebp)         # local array 'v1': 5 dimensions
    movl    $5,-17436(%ebp)         #   dimension 1: 5 elements
    movl    $9,-17432(%ebp)         #   dimension 2: 9 elements
    movl    $8,-17428(%ebp)         #   dimension 3: 8 elements
    movl    $8,-17424(%ebp)         #   dimension 4: 8 elements
    movl    $6,-17420(%ebp)         #   dimension 5: 6 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #   1:     param  2 <- t3
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #   2:     &()    t4 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   3:     param  1 <- t4
    pushl   %eax                   
    movl    $87857, %eax            #   4:     mul    t5 <- 87857, 45614
    movl    $45614, %ebx           
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #   5:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   6:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -125(%ebp)        
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   8:     call   t7 <- dummyBOOLfunc
    movb    %al, -126(%ebp)        
    movl    $99, %eax               #   9:     param  2 <- 99
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #  10:     &()    t8 <- v1
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  11:     param  1 <- t8
    pushl   %eax                   
    movl    $27844, %eax            #  12:     param  0 <- 27844
    pushl   %eax                   
    call    f0                      #  13:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -133(%ebp)        
    jmp     l_f2_2_while_cond       #  14:     goto   2_while_cond
    movl    $99, %eax               #  15:     param  2 <- 99
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #  16:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  1 <- t10
    pushl   %eax                   
    movl    $7204, %eax             #  18:     param  0 <- 7204
    pushl   %eax                   
    call    f0                      #  19:     call   t11 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    leal    -17440(%ebp), %eax      #  20:     &()    t12 <- v1
    movl    %eax, -24(%ebp)        
    movl    $92741, %eax            #  21:     sub    t13 <- 92741, 35844
    movl    $35844, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #  23:     &()    t14 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t17 <- t16, 23094
    movl    $23094, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #  29:     &()    t18 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t21 <- t20, 86656
    movl    $86656, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #  35:     &()    t22 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  36:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  37:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  38:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t25 <- t24, 14206
    movl    $14206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    leal    -17440(%ebp), %eax      #  41:     &()    t26 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  42:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  43:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  44:     mul    t28 <- t25, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  45:     add    t29 <- t28, 78322
    movl    $78322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  46:     mul    t30 <- t29, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    leal    -17440(%ebp), %eax      #  47:     &()    t31 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  48:     param  0 <- t31
    pushl   %eax                   
    call    DOFS                    #  49:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  50:     add    t33 <- t30, t32
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -24(%ebp), %eax         #  51:     add    t34 <- t12, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movzbl  -17(%ebp), %eax         #  52:     assign @t34 <- t11
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $17428, %esp            # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    jmp     l_test_1                #   8:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $51951, %eax            #  11:     if     51951 > 77794 goto 10_if_true
    movl    $77794, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    movl    $100, %eax              #  14:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_9                #  15:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     if     t1 >= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
    leal    _str_1, %eax            #  22:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  24:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_14               #  26:     goto   14
l_test_16_if_false:
l_test_14:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

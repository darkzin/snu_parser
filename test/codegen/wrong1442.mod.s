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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]

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
    movl    $23014, %eax            #   1:     sub    t3 <- 23014, 29893
    movl    $29893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 87677
    movl    $87677, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
    movl    $9179, %eax             #   5:     add    t5 <- 9179, 74881
    movl    $74881, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    movl    $97, %eax               #   8:     assign v0 <- 97
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 95 of <array 10 of <array 10 of <array 78 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t3 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
l_f1_6_while_cond:
    movl    $5003, %eax             #  10:     if     5003 > 15246 goto 7_while_body
    movl    $15246, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  11:     goto   5
l_f1_7_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  14:     goto   6_while_cond
l_f1_5:

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
    #    -81(%ebp)   1  [ $t3       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t4       <bool> %ebp-82 ]
    #    -83(%ebp)   1  [ $t5       <char> %ebp-83 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 44 of <array 14 of <array 27 of <array 98 of <array 82 of <int>>>>>>> %ebp+16 ]
    #   -104(%ebp)   4  [ $v3       <int> %ebp-104 ]

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
    jmp     l_f2_5                  #   0:     goto   5
    movl    $97, %eax               #   1:     if     97 = 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   2:     goto   6
l_f2_5:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -81(%ebp)         
l_f2_7:
    movl    $1, %eax                #   9:     if     1 # t3 goto 1
    movzbl  -81(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #  10:     goto   2
l_f2_1:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f2_3                  #  13:     goto   3
l_f2_2:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -82(%ebp)         
l_f2_3:
    movzbl  -82(%ebp), %eax         #  17:     return t4
    jmp     l_f2_exit              
l_f2_11_while_cond:
    movl    $100, %eax              #  19:     if     100 >= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_12_while_body     
    jmp     l_f2_10                 #  20:     goto   10
l_f2_12_while_body:
    movl    $0, %eax                #  22:     return 0
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  23:     call   t5 <- dummyCHARfunc
    movb    %al, -83(%ebp)         
    movl    $12794, %eax            #  24:     param  0 <- 12794
    pushl   %eax                   
    call    WriteInt                #  25:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  26:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_11_while_cond      #  27:     goto   11_while_cond
l_f2_10:
    movl    $26403, %eax            #  29:     sub    t6 <- 26403, 36488
    movl    $36488, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  30:     add    t7 <- t6, 92955
    movl    $92955, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  31:     sub    t8 <- t7, 66738
    movl    $66738, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $12456, %eax            #  35:     mul    t10 <- 12456, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  36:     add    t11 <- t10, 55452
    movl    $55452, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  40:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  41:     add    t14 <- t13, 75244
    movl    $75244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  43:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  44:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  45:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $16651, %eax            #  46:     add    t17 <- 16651, 80857
    movl    $80857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  47:     add    t18 <- t17, 13613
    movl    $13613, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  48:     add    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  52:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  53:     add    t22 <- t21, 11315
    movl    $11315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  54:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  56:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  57:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  58:     add    t26 <- v2, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -96(%ebp), %eax         #  59:     assign @t26 <- t8
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 71 of <array 95 of <array 10 of <array 10 of <array 78 of <bool>>>>>>> %ebp-16 ]
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
    jmp     l_test_exit            
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   3:     call   f1
    addl    $4, %esp               
    movl    $0, %eax                #   4:     if     0 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $73195, %eax            #  10:     if     73195 > 11291 goto 10_if_true
    movl    $11291, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $8776, %eax             #  16:     if     8776 = 38743 goto 14_if_true
    movl    $38743, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  19:     goto   13
l_test_15_if_false:
l_test_13:
    call    ReadInt                 #  22:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_2                #  24:     goto   2
l_test_2:
    jmp     l_test_21_if_false      #  26:     goto   21_if_false
    jmp     l_test_21_if_false      #  27:     goto   21_if_false
    jmp     l_test_21_if_false      #  28:     goto   21_if_false
    call    dummyCHARfunc           #  29:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_19               #  30:     goto   19
l_test_21_if_false:
l_test_19:

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
v0:                                 # <array 71 of <array 95 of <array 10 of <array 10 of <array 78 of <bool>>>>>>
    .long    5
    .long   71
    .long   95
    .long   10
    .long   10
    .long   78
    .skip 52611000








    # end of global data section
    #-----------------------------------------

    .end
##################################################

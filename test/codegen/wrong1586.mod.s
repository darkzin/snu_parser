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
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 73 of <array 95 of <array 41 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 48 of <array 24 of <array 97 of <array 22 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 23 of <array 74 of <array 33 of <array 7 of <array 84 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 39 of <array 3 of <array 24 of <array 34 of <int>>>>>>> %ebp+20 ]
    #   -108(%ebp)   4  [ $v4       <int> %ebp-108 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_exit              
    movl    $23036, %eax            #   1:     sub    t8 <- 23036, 14173
    movl    $14173, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     add    t9 <- t8, 38884
    movl    $38884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   3:     add    t10 <- t9, 9153
    movl    $9153, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     assign v4 <- t10
    movl    %eax, -108(%ebp)       
    movl    $4598, %eax             #   5:     add    t11 <- 4598, 24602
    movl    $24602, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t12 <- t11, 84893
    movl    $84893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $23972, %eax            #  10:     mul    t14 <- 23972, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $88746, %eax            #  11:     add    t15 <- 88746, 96406
    movl    $96406, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     sub    t16 <- t15, 79964
    movl    $79964, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  17:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  18:     add    t20 <- t19, 86920
    movl    $86920, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  22:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  23:     add    t23 <- t22, 29624
    movl    $29624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  27:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  28:     add    t26 <- t25, 46060
    movl    $46060, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  29:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  31:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  32:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    20(%ebp), %eax          #  33:     add    t30 <- v3, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -24(%ebp), %eax         #  34:     assign @t30 <- t12
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 88 of <array 88 of <array 37 of <array 50 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   1:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #   2:     goto   4
    movl    $0, %eax                #   3:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #   5:     assign v0 <- t9
    movb    %al, 8(%ebp)           
l_f1_7_while_cond:
    jmp     l_f1_6                  #   7:     goto   6
    movl    $0, %eax                #   8:     if     0 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #   9:     goto   11
l_f1_10:
    movl    $1, %eax                #  11:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  12:     goto   12
l_f1_11:
    movl    $0, %eax                #  14:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  16:     return t10
    jmp     l_f1_exit              
l_f1_15_while_cond:
    movl    $100, %eax              #  18:     if     100 >= 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_16_while_body     
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_20_if_false        #  23:     goto   20_if_false
    jmp     l_f1_18                 #  24:     goto   18
l_f1_20_if_false:
l_f1_18:
l_f1_22_while_cond:
    movl    $47464, %eax            #  28:     if     47464 <= 73814 goto 23_while_body
    movl    $73814, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_23_while_body     
    jmp     l_f1_21                 #  29:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  31:     goto   22_while_cond
l_f1_21:
    jmp     l_f1_7_while_cond       #  33:     goto   7_while_cond
l_f1_6:

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 89 of <array 37 of <array 28 of <array 88 of <array 28 of <int>>>>>>> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_6_while_cond:
    movl    $63399, %eax            #   8:     add    t8 <- 63399, 88835
    movl    $88835, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   9:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t8 # t9 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_11_if_false        #  15:     goto   11_if_false
    jmp     l_f2_11_if_false        #  16:     goto   11_if_false
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 44 of <array 88 of <array 88 of <array 37 of <array 50 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 44 of <array 88 of <array 88 of <array 37 of <array 50 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <char> %ebp-27 ]

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
l_test_1_while_cond:
    movl    $36945, %eax            #   1:     param  2 <- 36945
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  1 <- t0
    pushl   %eax                   
    jmp     l_test_9                #   4:     goto   9
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_10               #   6:     goto   10
l_test_9:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_10:
    movzbl  -17(%ebp), %eax         #  10:     if     t1 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4               
    jmp     l_test_5                #  11:     goto   5
l_test_4:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_6                #  14:     goto   6
l_test_5:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_6:
    movzbl  -18(%ebp), %eax         #  18:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  19:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  20:     if     t3 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3               
    jmp     l_test_0                #  21:     goto   0
l_test_3:
    jmp     l_test_1_while_cond     #  23:     goto   1_while_cond
l_test_0:
l_test_13_while_cond:
    movl    $29884, %eax            #  26:     param  2 <- 29884
    pushl   %eax                   
    leal    v0, %eax                #  27:     &()    t4 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  1 <- t4
    pushl   %eax                   
    jmp     l_test_16               #  29:     goto   16
    jmp     l_test_17               #  30:     goto   17
l_test_16:
    movl    $1, %eax                #  32:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_18               #  33:     goto   18
l_test_17:
    movl    $0, %eax                #  35:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_test_18:
    movzbl  -25(%ebp), %eax         #  37:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  38:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  39:     if     t6 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_12               #  40:     goto   12
l_test_15:
    jmp     l_test_12               #  42:     goto   12
    jmp     l_test_13_while_cond    #  43:     goto   13_while_cond
l_test_12:
l_test_23_while_cond:
    call    dummyCHARfunc           #  46:     call   t7 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  47:     if     t7 = 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  48:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  50:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 44 of <array 88 of <array 88 of <array 37 of <array 50 of <int>>>>>>
    .long    5
    .long   44
    .long   88
    .long   88
    .long   37
    .long   50
    .skip -1773520896








    # end of global data section
    #-----------------------------------------

    .end
##################################################

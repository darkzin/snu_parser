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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 70 of <array 9 of <array 28 of <array 19 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 35 of <array 92 of <array 48 of <array 89 of <array 22 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 94 of <array 96 of <array 52 of <array 37 of <array 25 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 92 of <array 64 of <array 34 of <array 18 of <array 15 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_8_while_cond:
    movl    $0, %eax                #   5:     if     0 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #   6:     goto   7
l_f0_9_while_body:
    movl    $0, %eax                #   8:     return 0
    jmp     l_f0_exit              
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  10:     goto   13_while_cond
    jmp     l_f0_8_while_cond       #  11:     goto   8_while_cond
l_f0_7:
l_f0_16_while_cond:
    movl    $84672, %eax            #  14:     if     84672 > 43346 goto 17_while_body
    movl    $43346, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_17_while_body     
    jmp     l_f0_15                 #  15:     goto   15
l_f0_17_while_body:
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_16_while_cond      #  18:     goto   16_while_cond
l_f0_15:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_1                  #   1:     goto   1
l_f1_4:
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  10:     return t7
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     assign v2 <- t8
    movb    %al, -15(%ebp)         
l_f1_10_while_cond:
    movl    $100, %eax              #  14:     if     100 > 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_11_while_body     
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_while_body:
l_f1_14_while_cond:
    movl    $98, %eax               #  18:     if     98 # 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  21:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_17                 #  23:     goto   17
l_f1_17:
    movl    $0, %eax                #  25:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  26:     goto   10_while_cond
l_f1_9:

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
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 23 of <array 8 of <array 10 of <array 89 of <array 21 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 91 of <array 27 of <array 17 of <array 32 of <array 27 of <int>>>>>>> %ebp+20 ]

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
    movl    $31985, %eax            #   0:     sub    t7 <- 31985, 55654
    movl    $55654, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     add    t8 <- t7, 80124
    movl    $80124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   3:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #   4:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #   5:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t11 <- t10, 87205
    movl    $87205, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #   9:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t14 <- t13, 50287
    movl    $50287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  14:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t17 <- t16, 5725
    movl    $5725, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  19:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  20:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t20 <- t19, 47232
    movl    $47232, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  23:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  24:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  25:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  26:     add    t24 <- v5, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $66904, %eax            #  27:     assign @t24 <- 66904
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  28:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #  29:     return t25
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_9                  #  31:     goto   9
l_f2_9:
    jmp     l_f2_4_while_body       #  33:     goto   4_while_body
    jmp     l_f2_2                  #  34:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  36:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
    movl    $15805, %eax            #   8:     sub    t1 <- 15805, 16798
    movl    $16798, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t2 <- t1, 46778
    movl    $46778, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t3 <- t2, 91839
    movl    $91839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     sub    t4 <- t3, 10983
    movl    $10983, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     assign v1 <- t4
    movl    %eax, v1               
    call    WriteLn                 #  13:     call   WriteLn
l_test_10_while_cond:
    movl    $70227, %eax            #  15:     if     70227 = 25484 goto 11_while_body
    movl    $25484, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
l_test_14_while_cond:
    call    ReadInt                 #  19:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_14_while_cond    #  20:     goto   14_while_cond
    jmp     l_test_10_while_cond    #  21:     goto   10_while_cond
l_test_9:
    movl    $20587, %eax            #  23:     sub    t6 <- 20587, 25379
    movl    $25379, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     assign v1 <- t6
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

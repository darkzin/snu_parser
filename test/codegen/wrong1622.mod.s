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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t3       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 60 of <array 27 of <array 8 of <array 19 of <array 28 of <int>>>>>>> %ebp+8 ]
    #   -104(%ebp)   4  [ $v1       <int> %ebp-104 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #   4:     return t3
    jmp     l_f0_exit              
    movl    $95639, %eax            #   5:     add    t4 <- 95639, 61128
    movl    $61128, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     sub    t5 <- t4, 30107
    movl    $30107, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $51751, %eax            #  10:     mul    t7 <- 51751, t6
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  11:     add    t8 <- t7, 26564
    movl    $26564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  15:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $9331, %eax             #  16:     add    t11 <- 9331, 61920
    movl    $61920, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t12 <- t11, 19810
    movl    $19810, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t16 <- t15, 97501
    movl    $97501, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  27:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t19 <- t18, 18439
    movl    $18439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  31:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  32:     add    t22 <- t20, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t23 <- v0, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -84(%ebp), %eax         #  34:     assign @t23 <- t5
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t7       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t8       <char> %ebp-31 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 43 of <array 20 of <array 95 of <array 8 of <array 65 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -32(%ebp)   1  [ $v4       <bool> %ebp-32 ]

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
    movl    $62115, %eax            #   0:     sub    t2 <- 62115, 79580
    movl    $79580, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 90464
    movl    $90464, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 17315
    movl    $17315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t5 <- t4, 14989
    movl    $14989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #   6:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   7:     if     t6 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_3                  #   8:     goto   3
l_f1_6:
    jmp     l_f1_3                  #  10:     goto   3
    jmp     l_f1_3                  #  11:     goto   3
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_4                  #  13:     goto   4
l_f1_3:
    movl    $0, %eax                #  15:     assign t7 <- 0
    movb    %al, -30(%ebp)         
l_f1_4:
    movzbl  -30(%ebp), %eax         #  17:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_9_if_false         #  18:     goto   9_if_false
    call    dummyCHARfunc           #  19:     call   t8 <- dummyCHARfunc
    movb    %al, -31(%ebp)         
    movl    $0, %eax                #  20:     assign v4 <- 0
    movb    %al, -32(%ebp)         
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  22:     goto   13_while_cond
    jmp     l_f1_7                  #  23:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $53206, %eax            #   0:     if     53206 # 60099 goto 1_if_true
    movl    $60099, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     return 98
    jmp     l_f2_exit              
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #   8:     return 99
    jmp     l_f2_exit              
    call    WriteLn                 #   9:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
    jmp     l_test_5                #   4:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_2                #  11:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $64643, %eax            #  14:     if     64643 <= 80503 goto 12_if_true
    movl    $80503, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  15:     goto   13_if_false
l_test_12_if_true:
    call    ReadInt                 #  17:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $67271, %eax            #  18:     assign v0 <- 67271
    movl    %eax, v0               
    jmp     l_test_11               #  19:     goto   11
l_test_13_if_false:
l_test_11:
    call    dummyINTfunc            #  22:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  23:     if     99 >= 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_19_if_true      
    jmp     l_test_20_if_false      #  24:     goto   20_if_false
l_test_19_if_true:
l_test_23_while_cond:
    movl    $23167, %eax            #  27:     if     23167 >= 72716 goto 24_while_body
    movl    $72716, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_while_body   
    jmp     l_test_22               #  28:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  30:     goto   23_while_cond
l_test_22:
    movl    $97, %eax               #  32:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_18               #  33:     goto   18
l_test_20_if_false:
l_test_18:

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

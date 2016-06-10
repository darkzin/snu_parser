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
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 39 of <array 84 of <array 44 of <array 87 of <array 98 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    movl    $1422, %eax             #   3:     if     1422 = 72053 goto 5_while_body
    movl    $72053, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_5_while_body      
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   6:     goto   4_while_cond
l_f0_3:
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    movl    $98373, %eax            #  11:     mul    t9 <- 98373, 11250
    movl    $11250, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     mul    t10 <- t9, 38175
    movl    $38175, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 19689
    movl    $19689, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t12 <- t11, 57096
    movl    $57096, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t12 >= 34623 goto 9_if_true
    movl    $34623, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  16:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  18:     goto   8
l_f0_10_if_false:
l_f0_8:
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  22:     goto   13_while_cond

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
    #    -85(%ebp)   1  [ $t28      <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 37 of <array 14 of <array 13 of <array 23 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 51 of <array 97 of <array 45 of <array 72 of <bool>>>>>>> %ebp+16 ]
    #    -97(%ebp)   1  [ $v3       <char> %ebp-97 ]

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
    movl    $18262, %eax            #   0:     sub    t9 <- 18262, 2886
    movl    $2886, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   1:     add    t10 <- t9, 26265
    movl    $26265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t11 <- t10, 69075
    movl    $69075, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t11 > 92077 goto 1_if_true
    movl    $92077, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $52920, %eax            #   9:     mul    t13 <- 52920, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     add    t14 <- t13, 63445
    movl    $63445, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     add    t17 <- t16, 86983
    movl    $86983, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  19:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  20:     add    t20 <- t19, 43596
    movl    $43596, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  24:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  25:     add    t23 <- t22, 40538
    movl    $40538, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  26:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  29:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t27 <- v1, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $100, %eax              #  31:     assign @t27 <- 100
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  32:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  35:     call   t28 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    call    dummyINTfunc            #  36:     call   t29 <- dummyINTfunc
    movl    %eax, -92(%ebp)        

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <ptr(4) to <array 39 of <array 84 of <array 44 of <array 87 of <array 98 of <int>>>>>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 71 of <array 90 of <array 16 of <array 66 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 26 of <array 37 of <array 58 of <array 27 of <array 66 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]
    #   -620919728(%ebp)  620919704  [ $v4       <array 39 of <array 84 of <array 44 of <array 87 of <array 98 of <int>>>>>> %ebp-620919728 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $620919716, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $155229929, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-620919728(%ebp)     # local array 'v4': 5 dimensions
    movl    $39,-620919724(%ebp)    #   dimension 1: 39 elements
    movl    $84,-620919720(%ebp)    #   dimension 2: 84 elements
    movl    $44,-620919716(%ebp)    #   dimension 3: 44 elements
    movl    $87,-620919712(%ebp)    #   dimension 4: 87 elements
    movl    $98,-620919708(%ebp)    #   dimension 5: 98 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    movl    $25241, %eax            #   4:     assign v3 <- 25241
    movl    %eax, -24(%ebp)        
    movl    $49226, %eax            #   5:     assign v3 <- 49226
    movl    %eax, -24(%ebp)        
    jmp     l_f2_14_if_false        #   6:     goto   14_if_false
    jmp     l_f2_12                 #   7:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_17_if_false        #  10:     goto   17_if_false
    jmp     l_f2_15                 #  11:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $98, %eax               #  14:     param  1 <- 98
    pushl   %eax                   
    leal    -620919728(%ebp), %eax  #  15:     &()    t9 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  17:     call   t10 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #  18:     goto   7
l_f2_7:
    call    WriteLn                 #  20:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $620919716, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 88 of <array 51 of <array 97 of <array 45 of <array 72 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 90 of <array 37 of <array 14 of <array 13 of <array 23 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 88 of <array 51 of <array 97 of <array 45 of <array 72 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 90 of <array 37 of <array 14 of <array 13 of <array 23 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]

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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    movl    $32970, %eax            #   4:     sub    t2 <- 32970, 46705
    movl    $46705, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   6:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   7:     if     t3 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7               
    jmp     l_test_5                #   8:     goto   5
l_test_7:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_6                #  11:     goto   6
l_test_5:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_test_6:
    movzbl  -26(%ebp), %eax         #  15:     if     t4 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #  16:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #  18:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    leal    v1, %eax                #  22:     &()    t6 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     param  2 <- t6
    pushl   %eax                   
    leal    v0, %eax                #  24:     &()    t7 <- v0
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     param  1 <- t7
    pushl   %eax                   
    movl    $62033, %eax            #  26:     param  0 <- 62033
    pushl   %eax                   
    call    f1                      #  27:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -37(%ebp)         

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
v0:                                 # <array 90 of <array 37 of <array 14 of <array 13 of <array 23 of <char>>>>>>
    .long    5
    .long   90
    .long   37
    .long   14
    .long   13
    .long   23
    .skip 13939380
v1:                                 # <array 88 of <array 51 of <array 97 of <array 45 of <array 72 of <bool>>>>>>
    .long    5
    .long   88
    .long   51
    .long   97
    .long   45
    .long   72
    .skip 1410488640








    # end of global data section
    #-----------------------------------------

    .end
##################################################

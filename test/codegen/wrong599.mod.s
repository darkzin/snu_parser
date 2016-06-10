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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 2 of <array 4 of <array 2 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
    movl    $40958, %eax            #   0:     add    t4 <- 40958, 56268
    movl    $56268, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 16617
    movl    $16617, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t5 < 28871 goto 1_if_true
    movl    $28871, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
    movl    $37342, %eax            #   5:     assign v2 <- 37342
    movl    %eax, -28(%ebp)        
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  10:     if     98 <= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_7                 
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_9                  #  14:     goto   9
l_f0_8:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f0_9:
    movzbl  -22(%ebp), %eax         #  18:     assign v1 <- t7
    movb    %al, 12(%ebp)          

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
    #    -65(%ebp)   1  [ $t4       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 5 of <array 8 of <array 3 of <int>>>>>>> %ebp+8 ]
    #    -89(%ebp)   1  [ $v1       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $v2       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -89(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_5                  #   2:     goto   5
    jmp     l_f1_5                  #   3:     goto   5
    jmp     l_f1_5                  #   4:     goto   5
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_5                  #   6:     goto   5
    jmp     l_f1_5                  #   7:     goto   5
    jmp     l_f1_6                  #   8:     goto   6
l_f1_5:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -65(%ebp)         
l_f1_7:
    movl    $1, %eax                #  15:     if     1 # t4 goto 3_while_body
    movzbl  -65(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_while_body:
    jmp     l_f1_16                 #  18:     goto   16
l_f1_16:
    jmp     l_f1_2_while_cond       #  20:     goto   2_while_cond
l_f1_1:
    movl    $86602, %eax            #  22:     add    t5 <- 86602, 25992
    movl    $25992, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  23:     sub    t6 <- t5, 25914
    movl    $25914, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  27:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  28:     add    t9 <- t8, 92813
    movl    $92813, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  32:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     add    t12 <- t11, 35370
    movl    $35370, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  37:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     add    t15 <- t14, 41302
    movl    $41302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  42:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t18 <- t17, 19925
    movl    $19925, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  44:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  46:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  47:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  48:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $13032, %eax            #  49:     assign @t22 <- 13032
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $6440, %eax             #   0:     assign v0 <- 6440
    movl    %eax, 8(%ebp)          
    movl    $99, %eax               #   1:     if     99 # 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   5:     assign v2 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $97, %eax               #   9:     assign v2 <- 97
    movb    %al, -14(%ebp)         

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    movl    $64228, %eax            #   0:     sub    t0 <- 64228, 35470
    movl    $35470, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   2:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
    movl    $97, %eax               #   4:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   6:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #   7:     assign v0 <- 0
    movb    %al, v0                
    movl    $12164, %eax            #   8:     if     12164 # 94356 goto 8
    movl    $94356, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_10:
    movzbl  -25(%ebp), %eax         #  16:     assign v0 <- t3
    movb    %al, v0                
l_test_13_while_cond:
    movl    $9299, %eax             #  18:     if     9299 <= 34656 goto 14_while_body
    movl    $34656, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
l_test_12:
    jmp     l_test_18_if_false      #  23:     goto   18_if_false
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $50560, %eax            #  27:     param  0 <- 50560
    pushl   %eax                   
    call    WriteInt                #  28:     call   WriteInt
    addl    $4, %esp               
l_test_21_while_cond:
    movl    $65792, %eax            #  30:     if     65792 = 3671 goto 22_while_body
    movl    $3671, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  31:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  33:     goto   21_while_cond
l_test_20:
    jmp     l_test_1                #  35:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $98, %eax               #  38:     if     98 < 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_25_if_true      
    jmp     l_test_26_if_false      #  39:     goto   26_if_false
l_test_25_if_true:
l_test_29_while_cond:
    movl    $100, %eax              #  42:     if     100 = 100 goto 30_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_30_while_body   
    jmp     l_test_28               #  43:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  45:     goto   29_while_cond
l_test_28:
    jmp     l_test_exit            
l_test_34_while_cond:
    movl    $24418, %eax            #  49:     if     24418 <= 39367 goto 35_while_body
    movl    $39367, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_35_while_body   
    jmp     l_test_33               #  50:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  52:     goto   34_while_cond
l_test_33:
    jmp     l_test_24               #  54:     goto   24
l_test_26_if_false:
l_test_24:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

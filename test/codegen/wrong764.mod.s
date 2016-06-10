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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 # t4 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyINTfunc            #   8:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 6 of <array 3 of <array 3 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 5 of <char>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 1 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -104(%ebp)   4  [ $v2       <int> %ebp-104 ]

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
    movl    $62302, %eax            #   0:     add    t4 <- 62302, 45657
    movl    $45657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     add    t5 <- t4, 94395
    movl    $94395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $74175, %eax            #   5:     mul    t7 <- 74175, t6
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   6:     add    t8 <- t7, 31405
    movl    $31405, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  10:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 19398
    movl    $19398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 8444
    movl    $8444, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 8630
    movl    $8630, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -84(%ebp), %eax         #  27:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $98, %eax               #  28:     if     98 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #  29:     goto   3_if_false
l_f2_2_if_true:
    movl    $59515, %eax            #  31:     if     59515 >= 81404 goto 6
    movl    $81404, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #  32:     goto   7
l_f2_6:
    movl    $1, %eax                #  34:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f2_8                  #  35:     goto   8
l_f2_7:
    movl    $0, %eax                #  37:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f2_8:
    movzbl  -61(%ebp), %eax         #  39:     return t22
    jmp     l_f2_exit              
    leal    _str_1, %eax            #  40:     &()    t23 <- _str_1
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  41:     param  0 <- t23
    pushl   %eax                   
    call    WriteStr                #  42:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_1                  #  43:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_12_while_cond:
    call    dummyINTfunc            #  47:     call   t24 <- dummyINTfunc
    movl    %eax, -72(%ebp)        
    movl    $19839, %eax            #  48:     add    t25 <- 19839, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $62865, %eax            #  49:     if     62865 > t25 goto 13_while_body
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_13_while_body     
    jmp     l_f2_11                 #  50:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  52:     goto   12_while_cond
l_f2_11:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
    jmp     l_test_1_if_true        #   3:     goto   1_if_true
    jmp     l_test_2_if_false       #   4:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_11               #   6:     goto   11
l_test_11:
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
l_test_15_while_cond:
    call    ReadInt                 #  12:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     if     t0 = 63482 goto 16_while_body
    movl    $63482, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  14:     goto   14
l_test_16_while_body:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_15_while_cond    #  17:     goto   15_while_cond
l_test_14:
l_test_20_while_cond:
    jmp     l_test_23               #  20:     goto   23
l_test_23:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_25               #  23:     goto   25
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_25:
    jmp     l_test_30               #  26:     goto   30
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_31               #  28:     goto   31
l_test_30:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_31:
    movzbl  -18(%ebp), %eax         #  32:     if     t2 = t3 goto 21_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  33:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  35:     goto   20_while_cond
l_test_19:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################

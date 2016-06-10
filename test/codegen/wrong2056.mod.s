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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 2 of <array 93 of <array 22 of <array 43 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 15 of <array 2 of <array 93 of <array 79 of <bool>>>>>>> %ebp+16 ]

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
    movl    $18121, %eax            #   0:     if     18121 = 92363 goto 1_if_true
    movl    $92363, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_exit              
    movl    $92967, %eax            #   4:     mul    t2 <- 92967, 45402
    movl    $45402, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_exit              
    movl    $98, %eax               #   8:     if     98 = 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   9:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $98, %eax               #  14:     if     98 < 98 goto 12_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  15:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  17:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $98, %eax               #  20:     if     98 >= 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  21:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  23:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_0                  #  26:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $51947, %eax            #  29:     if     51947 <= 19553 goto 20_if_true
    movl    $19553, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  30:     goto   21_if_false
l_f0_20_if_true:
l_f0_24_while_cond:
    jmp     l_f0_23                 #  33:     goto   23
    jmp     l_f0_24_while_cond      #  34:     goto   24_while_cond
l_f0_23:
    movl    $100, %eax              #  36:     if     100 > 99 goto 27_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_27_if_true        
    jmp     l_f0_28_if_false        #  37:     goto   28_if_false
l_f0_27_if_true:
    movl    $12108, %eax            #  39:     param  0 <- 12108
    pushl   %eax                   
    call    WriteInt                #  40:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_26                 #  41:     goto   26
l_f0_28_if_false:
l_f0_26:
    jmp     l_f0_19                 #  44:     goto   19
l_f0_21_if_false:
l_f0_19:
    call    dummyCHARfunc           #  47:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   1:     goto   7_while_cond
    jmp     l_f1_3                  #   2:     goto   3
l_f1_3:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_0:
    call    dummyBOOLfunc           #   6:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t2 = 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   8:     goto   11_if_false
l_f1_10_if_true:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <ptr(4) to <array 5 of <char>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 84 of <array 48 of <array 71 of <array 51 of <array 68 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 13 of <array 23 of <array 34 of <array 88 of <bool>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]

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
    movl    $3766, %eax             #   0:     if     3766 < 69696 goto 1
    movl    $69696, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f2_3:
    movl    $60571, %eax            #   8:     sub    t3 <- 60571, 60350
    movl    $60350, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  12:     mul    t5 <- t3, t4
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t6 <- t5, 1496
    movl    $1496, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $87589, %eax            #  18:     mul    t9 <- 87589, 72164
    movl    $72164, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  19:     add    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  23:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 55485
    movl    $55485, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 45064
    movl    $45064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  32:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -53(%ebp), %eax         #  35:     assign @t20 <- t2
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_6_while_cond:
    movl    $0, %eax                #  37:     if     0 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  38:     goto   5
l_f2_7_while_body:
    leal    _str_1, %eax            #  40:     &()    t21 <- _str_1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  41:     param  0 <- t21
    pushl   %eax                   
    call    WriteStr                #  42:     call   WriteStr
    addl    $4, %esp               
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  44:     goto   11_while_cond
    call    dummyProcedure          #  45:     call   dummyProcedure
    jmp     l_f2_6_while_cond       #  46:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
l_test_1_while_cond:
    movl    $91472, %eax            #   1:     add    t0 <- 91472, 9775
    movl    $9775, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 52584
    movl    $52584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $23747, %eax            #   3:     if     23747 # t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_4                #   7:     goto   4
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    movl    $98, %eax               #  11:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $99, %eax               #  16:     if     99 < 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12_while_body   
    jmp     l_test_10               #  17:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
l_test_10:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

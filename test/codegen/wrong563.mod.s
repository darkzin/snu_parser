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
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 5 of <char>>> %ebp-64 ]
    #    -65(%ebp)   1  [ $t5       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 3 of <array 4 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -85(%ebp)   1  [ $v5       <char> %ebp-85 ]

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
    movl    $10870, %eax            #   0:     if     10870 >= 71721 goto 1_if_true
    movl    $71721, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99734, %eax            #   3:     if     99734 # 69336 goto 5
    movl    $69336, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -65(%ebp)         
l_f0_7:
    movzbl  -65(%ebp), %eax         #  11:     assign v3 <- t5
    movb    %al, 16(%ebp)          
    movl    $0, %eax                #  12:     return 0
    jmp     l_f0_exit              
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $23097, %eax            #  16:     mul    t7 <- 23097, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  17:     add    t8 <- t7, 83659
    movl    $83659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  21:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 41662
    movl    $41662, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 64647
    movl    $64647, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t16, 67884
    movl    $67884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  38:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  39:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  40:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #  41:     if     100 = 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  42:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  44:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_0                  #  47:     goto   0
l_f0_2_if_false:
l_f0_0:
    leal    _str_1, %eax            #  50:     &()    t22 <- _str_1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  51:     param  0 <- t22
    pushl   %eax                   
    call    WriteStr                #  52:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_16                 #  53:     goto   16
l_f0_16:
l_f0_23_while_cond:
    jmp     l_f0_22                 #  56:     goto   22
    jmp     l_f0_22                 #  57:     goto   22
    movl    $98, %eax               #  58:     if     98 # 100 goto 28_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_28_if_true        
    jmp     l_f0_29_if_false        #  59:     goto   29_if_false
l_f0_28_if_true:
    jmp     l_f0_27                 #  61:     goto   27
l_f0_29_if_false:
l_f0_27:
    jmp     l_f0_23_while_cond      #  64:     goto   23_while_cond
l_f0_22:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyProcedure          #   4:     call   dummyProcedure
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $52049, %eax            #   7:     mul    t5 <- 52049, 95987
    movl    $95987, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t6 <- t5, 94828
    movl    $94828, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t7 <- t6, 79187
    movl    $79187, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v2 <- t7
    movl    %eax, -36(%ebp)        
    movl    $88597, %eax            #  11:     sub    t8 <- 88597, 38270
    movl    $38270, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t9 <- t8, 93584
    movl    $93584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     return t9
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_6_while_cond:
    movl    $98, %eax               #   6:     if     98 = 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     assign v0 <- t2
    movb    %al, v0                
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   6:     assign v0 <- t3
    movb    %al, v0                
l_test_5_while_cond:
    movl    $55545, %eax            #   8:     if     55545 <= 67956 goto 6_while_body
    movl    $67956, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
    call    ReadInt                 #  11:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_5_while_cond     #  12:     goto   5_while_cond
l_test_4:
    movl    $63811, %eax            #  14:     param  0 <- 63811
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               

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

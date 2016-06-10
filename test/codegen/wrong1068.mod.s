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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t21      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t22      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 56 of <array 72 of <array 1 of <array 41 of <bool>>>>>>> %ebp+8 ]
    #    -93(%ebp)   1  [ $v1       <bool> %ebp-93 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f0_3:
    movl    $6472, %eax             #   6:     add    t3 <- 6472, 37772
    movl    $37772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   7:     sub    t4 <- t3, 63504
    movl    $63504, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  11:     mul    t6 <- t4, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  12:     add    t7 <- t6, 17052
    movl    $17052, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  16:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  17:     add    t10 <- t9, 51217
    movl    $51217, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t13 <- t12, 78871
    movl    $78871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 85424
    movl    $85424, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -53(%ebp), %eax         #  33:     assign @t20 <- t2
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  34:     call   t21 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    call    dummyBOOLfunc           #  35:     call   t22 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 54 of <array 90 of <array 26 of <array 94 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 81 of <array 80 of <array 25 of <array 41 of <array 99 of <int>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   4:     goto   5_while_cond
    movl    $44831, %eax            #   5:     assign v3 <- 44831
    movl    %eax, -24(%ebp)        
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $1, %eax                #   9:     if     1 # 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    movl    $98, %eax               #  12:     if     98 # 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  13:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  15:     goto   12
l_f1_14_if_false:
l_f1_12:
l_f1_17_while_cond:
    call    ReadInt                 #  19:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $32709, %eax            #  20:     if     32709 >= t3 goto 18_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  21:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  23:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_8                  #  25:     goto   8
l_f1_10_if_false:
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 76 of <array 81 of <array 71 of <array 78 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_4_while_cond:
    movl    $97, %eax               #   2:     if     97 > 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   5:     goto   4_while_cond
l_f2_3:
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_11_while_cond:
    jmp     l_f2_10                 #  15:     goto   10
    leal    _str_1, %eax            #  16:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  18:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_11_while_cond      #  19:     goto   11_while_cond
l_f2_10:
    movl    $21038, %eax            #  21:     assign v2 <- 21038
    movl    %eax, -20(%ebp)        

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
l_test_2_while_cond:
l_test_5_while_cond:
    movl    $100, %eax              #   3:     if     100 = 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $29900, %eax            #   9:     assign v0 <- 29900
    movl    %eax, v0               
    call    dummyINTfunc            #  10:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_14_while_cond:
    movl    $95067, %eax            #  12:     if     95067 < 82342 goto 15_while_body
    movl    $82342, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  13:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
l_test_13:
    jmp     l_test_5_while_cond     #  17:     goto   5_while_cond
l_test_4:
    jmp     l_test_2_while_cond     #  19:     goto   2_while_cond
    call    dummyProcedure          #  20:     call   dummyProcedure

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
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

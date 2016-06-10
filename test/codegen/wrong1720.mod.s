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
    #    -17(%ebp)   1  [ $v0       <char> %ebp-17 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, -17(%ebp)         
l_f0_2_while_cond:
    movl    $97, %eax               #   2:     if     97 <= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    call    dummyINTfunc            #   5:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_exit              

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
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 14 of <array 11 of <array 65 of <array 70 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 69 of <array 62 of <array 43 of <array 39 of <char>>>>>>> %ebp+16 ]
    #    -93(%ebp)   1  [ $v3       <char> %ebp-93 ]

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
    movl    $99783, %eax            #   0:     mul    t4 <- 99783, 2625
    movl    $2625, %ebx            
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    call    dummyINTfunc            #   2:     call   t5 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   6:     mul    t7 <- t5, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   7:     add    t8 <- t7, 58549
    movl    $58549, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  11:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t11 <- t10, 81674
    movl    $81674, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t14 <- t13, 55409
    movl    $55409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 88212
    movl    $88212, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  28:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  29:     call   t22 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     div    t23 <- t22, 80780
    movl    $80780, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  31:     return t23
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
l_f2_1_while_cond:
    movl    $71513, %eax            #   1:     sub    t4 <- 71513, 62015
    movl    $62015, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $74931, %eax            #   2:     if     74931 # t4 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    call    dummyINTfunc            #   8:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_9_while_cond:
    movl    $98, %eax               #  10:     if     98 <= 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_10_while_body     
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  13:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_5_while_cond       #  15:     goto   5_while_cond
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  17:     if     98 > t6 goto 13
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_13                
    jmp     l_f2_14                 #  18:     goto   14
l_f2_13:
    movl    $1, %eax                #  20:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_15                 #  21:     goto   15
l_f2_14:
    movl    $0, %eax                #  23:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_15:
    movzbl  -22(%ebp), %eax         #  25:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $67139, %eax            #   1:     div    t0 <- 67139, 92160
    movl    $92160, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 12358
    movl    $12358, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 < 52156 goto 2_while_body
    movl    $52156, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    jmp     l_test_6_if_false       #   8:     goto   6_if_false
    movl    $0, %eax                #   9:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
    jmp     l_test_8                #  11:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99, %eax               #  14:     param  0 <- 99
    pushl   %eax                   
    call    f2                      #  15:     call   t2 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  16:     if     0 = 0 goto 13_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  17:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  19:     goto   12
l_test_14_if_false:
l_test_12:
l_test_17_while_cond:
    movl    $98, %eax               #  23:     if     98 < 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  24:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  26:     goto   17_while_cond
l_test_16:
    jmp     l_test_4                #  28:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    call    dummyINTfunc            #  32:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

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

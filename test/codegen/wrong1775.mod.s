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
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 99 of <array 16 of <array 65 of <array 91 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -93(%ebp)   1  [ $v3       <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $v4       <char> %ebp-94 ]

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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
l_f0_8_while_cond:
    movl    $0, %eax                #   8:     assign v3 <- 0
    movb    %al, -93(%ebp)         
    jmp     l_f0_13_if_false        #   9:     goto   13_if_false
    jmp     l_f0_11                 #  10:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_8_while_cond       #  13:     goto   8_while_cond
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
    movl    $5648, %eax             #  15:     sub    t5 <- 5648, 51385
    movl    $51385, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     return t5
    jmp     l_f0_exit              
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $46600, %eax            #  20:     mul    t7 <- 46600, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  21:     add    t8 <- t7, 40044
    movl    $40044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  25:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $62414, %eax            #  26:     sub    t11 <- 62414, 3601
    movl    $3601, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     sub    t12 <- t11, 56734
    movl    $56734, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     sub    t13 <- t12, 90469
    movl    $90469, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #  29:     add    t14 <- t10, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  33:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t17 <- t16, 13818
    movl    $13818, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  38:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  39:     add    t20 <- t19, 14235
    movl    $14235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  42:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  43:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $100, %eax              #  45:     assign @t24 <- 100
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 59 of <array 19 of <array 54 of <array 58 of <int>>>>>>> %ebp+12 ]

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
    movl    $1, %eax                #   0:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    movl    $35155, %eax            #   1:     mul    t5 <- 35155, 92610
    movl    $92610, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t6 <- t5, 17579
    movl    $17579, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t7 <- t6, 36525
    movl    $36525, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t7
    jmp     l_f1_exit              
l_f1_3_while_cond:
l_f1_6_while_cond:
    call    dummyBOOLfunc           #   7:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   8:     if     t8 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  11:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_3_while_cond       #  13:     goto   3_while_cond

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 = 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    movl    $66838, %eax            #   8:     if     66838 < 15705 goto 7
    movl    $15705, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7                 
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $0, %eax                #  14:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  16:     assign v3 <- t5
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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]

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
    movl    $29122, %eax            #   0:     sub    t0 <- 29122, 16378
    movl    $16378, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 74513
    movl    $74513, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $64765, %eax            #   2:     if     64765 # t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_6                #  11:     goto   6
    jmp     l_test_6                #  12:     goto   6
l_test_6:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_8                #  15:     goto   8
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_8:
    movzbl  -22(%ebp), %eax         #  18:     assign v0 <- t3
    movb    %al, v0                
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    jmp     l_test_16_if_true       #  20:     goto   16_if_true
    jmp     l_test_16_if_true       #  21:     goto   16_if_true
l_test_16_if_true:
    movl    $0, %eax                #  23:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_15               #  24:     goto   15
l_test_15:
    jmp     l_test_exit            
l_test_24_while_cond:
    jmp     l_test_25_while_body    #  28:     goto   25_while_body
    jmp     l_test_25_while_body    #  29:     goto   25_while_body
    jmp     l_test_25_while_body    #  30:     goto   25_while_body
    jmp     l_test_23               #  31:     goto   23
l_test_25_while_body:
    jmp     l_test_exit            
    jmp     l_test_24_while_cond    #  34:     goto   24_while_cond
l_test_23:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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

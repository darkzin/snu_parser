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
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 5 of <array 1 of <array 10 of <array 7 of <char>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    movl    $15322, %eax            #   1:     div    t12 <- 15322, 90474
    movl    $90474, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t13 <- t12, 80798
    movl    $80798, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t14 <- t13, 34109
    movl    $34109, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t14 < 6406 goto 2_while_body
    movl    $6406, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $100, %eax              #   8:     if     100 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  11:     goto   5_while_cond
l_f0_4:
    movl    $100, %eax              #  13:     return 100
    jmp     l_f0_exit              
    movl    $100, %eax              #  14:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_13:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  20:     goto   16
    jmp     l_f0_17_while_cond      #  21:     goto   17_while_cond
l_f0_16:
    movl    $73186, %eax            #  23:     assign v4 <- 73186
    movl    %eax, -28(%ebp)        
l_f0_21_while_cond:
    jmp     l_f0_20                 #  25:     goto   20
    jmp     l_f0_21_while_cond      #  26:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_10                 #  28:     goto   10
l_f0_10:
    movl    $60442, %eax            #  30:     assign v4 <- 60442
    movl    %eax, -28(%ebp)        

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
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <ptr(4) to <array 7 of <array 5 of <array 1 of <array 10 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t16      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t17      <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t18      <bool> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 9 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -2504(%ebp)  2474  [ $v5       <array 7 of <array 5 of <array 1 of <array 10 of <array 7 of <char>>>>>> %ebp-2504 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2492, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $623, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2504(%ebp)          # local array 'v5': 5 dimensions
    movl    $7,-2500(%ebp)          #   dimension 1: 7 elements
    movl    $5,-2496(%ebp)          #   dimension 2: 5 elements
    movl    $1,-2492(%ebp)          #   dimension 3: 1 elements
    movl    $10,-2488(%ebp)         #   dimension 4: 10 elements
    movl    $7,-2484(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $85779, %eax            #   0:     mul    t12 <- 85779, 91576
    movl    $91576, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t13 <- t12, 99737
    movl    $99737, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v4 <- t13
    movl    %eax, 20(%ebp)         
    leal    -2504(%ebp), %eax       #   3:     &()    t14 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  2 <- t14
    pushl   %eax                   
    movl    $98, %eax               #   5:     param  1 <- 98
    pushl   %eax                   
    jmp     l_f1_5                  #   6:     goto   5
    jmp     l_f1_5                  #   7:     goto   5
    jmp     l_f1_6                  #   8:     goto   6
l_f1_5:
    movl    $1, %eax                #  10:     assign t15 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $0, %eax                #  13:     assign t15 <- 0
    movb    %al, -25(%ebp)         
l_f1_7:
    movzbl  -25(%ebp), %eax         #  15:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  16:     call   t16 <- f0
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #  17:     if     97 > t16 goto 2_if_true
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #  18:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #  20:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  23:     call   t17 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movl    $98, %eax               #  24:     if     98 = t17 goto 11
    movzbl  -27(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_11                
    jmp     l_f1_12                 #  25:     goto   12
l_f1_11:
    movl    $1, %eax                #  27:     assign t18 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f1_13                 #  28:     goto   13
l_f1_12:
    movl    $0, %eax                #  30:     assign t18 <- 0
    movb    %al, -28(%ebp)         
l_f1_13:
    movzbl  -28(%ebp), %eax         #  32:     return t18
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $2492, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t12      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $27484, %eax            #   0:     assign v1 <- 27484
    movl    %eax, -20(%ebp)        
l_f2_2_while_cond:
    movl    $98, %eax               #   2:     if     98 = 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   8:     goto   5
    call    dummyCHARfunc           #   9:     call   t12 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_6_while_cond       #  10:     goto   6_while_cond
l_f2_5:

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
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t11      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <array 5 of <array 1 of <array 10 of <array 7 of <char>>>>>>> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $85897, %eax            #   0:     add    t0 <- 85897, 59357
    movl    $59357, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $48014, %eax            #   2:     mul    t1 <- 48014, 15795
    movl    $15795, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 94332
    movl    $94332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t3 <- t2, 78678
    movl    $78678, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t4 <- t3, 81322
    movl    $81322, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t5 <- t4, 9142
    movl    $9142, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     sub    t6 <- t5, 40372
    movl    $40372, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     assign v0 <- t6
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $59467, %eax            #  10:     div    t7 <- 59467, 32527
    movl    $32527, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  11:     assign v0 <- t7
    movl    %eax, v0               
    call    ReadInt                 #  12:     call   t8 <- ReadInt
    movl    %eax, -52(%ebp)        
l_test_9_while_cond:
    jmp     l_test_8                #  14:     goto   8
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
l_test_8:
    movl    $1, %eax                #  17:     assign v1 <- 1
    movb    %al, v1                
    leal    v2, %eax                #  18:     &()    t9 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     param  2 <- t9
    pushl   %eax                   
    movl    $100, %eax              #  20:     param  1 <- 100
    pushl   %eax                   
    movl    $1, %eax                #  21:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  22:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $58049, %eax            #  23:     if     58049 > 38236 goto 14
    movl    $38236, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14              
    jmp     l_test_15               #  24:     goto   15
l_test_14:
    movl    $1, %eax                #  26:     assign t11 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_16               #  27:     goto   16
l_test_15:
    movl    $0, %eax                #  29:     assign t11 <- 0
    movb    %al, -22(%ebp)         
l_test_16:
    movzbl  -22(%ebp), %eax         #  31:     assign v1 <- t11
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_5                #  33:     goto   5
l_test_5:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 7 of <array 5 of <array 1 of <array 10 of <array 7 of <char>>>>>>
    .long    5
    .long    7
    .long    5
    .long    1
    .long   10
    .long    7
    .skip 2450








    # end of global data section
    #-----------------------------------------

    .end
##################################################

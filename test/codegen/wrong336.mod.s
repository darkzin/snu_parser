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
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 2 of <array 3 of <array 10 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 10 of <array 9 of <array 6 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]

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
    movl    $97, %eax               #   0:     if     97 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $96713, %eax            #   3:     if     96713 < 10324 goto 5_if_true
    movl    $10324, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $97, %eax               #   9:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $32395, %eax            #  13:     sub    t3 <- 32395, 55354
    movl    $55354, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  14:     add    t4 <- t3, 8157
    movl    $8157, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  15:     sub    t5 <- t4, 32344
    movl    $32344, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $72600, %eax            #  16:     add    t6 <- 72600, 54293
    movl    $54293, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  21:     add    t9 <- t8, 76108
    movl    $76108, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  25:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     add    t12 <- t11, 22500
    movl    $22500, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  30:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     add    t15 <- t14, 51506
    movl    $51506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  34:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  35:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  36:     add    t18 <- t17, 29073
    movl    $29073, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  39:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -76(%ebp), %eax         #  42:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $1, %eax                #  43:     assign v4 <- 1
    movb    %al, -93(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 10 of <array 9 of <array 6 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 2 of <array 3 of <array 10 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #   -4368(%ebp)  4344  [ $v0       <array 6 of <array 2 of <array 3 of <array 10 of <array 3 of <int>>>>>> %ebp-4368 ]
    #   -14112(%ebp)  9744  [ $v1       <array 3 of <array 10 of <array 9 of <array 6 of <array 6 of <char>>>>>> %ebp-14112 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14100, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3525, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4368(%ebp)          # local array 'v0': 5 dimensions
    movl    $6,-4364(%ebp)          #   dimension 1: 6 elements
    movl    $2,-4360(%ebp)          #   dimension 2: 2 elements
    movl    $3,-4356(%ebp)          #   dimension 3: 3 elements
    movl    $10,-4352(%ebp)         #   dimension 4: 10 elements
    movl    $3,-4348(%ebp)          #   dimension 5: 3 elements
    movl    $5,-14112(%ebp)         # local array 'v1': 5 dimensions
    movl    $3,-14108(%ebp)         #   dimension 1: 3 elements
    movl    $10,-14104(%ebp)        #   dimension 2: 10 elements
    movl    $9,-14100(%ebp)         #   dimension 3: 9 elements
    movl    $6,-14096(%ebp)         #   dimension 4: 6 elements
    movl    $6,-14092(%ebp)         #   dimension 5: 6 elements

    # function body
    leal    -14112(%ebp), %eax      #   0:     &()    t3 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    movl    $62665, %eax            #   2:     param  2 <- 62665
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  1 <- 100
    pushl   %eax                   
    leal    -4368(%ebp), %eax       #   4:     &()    t4 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   6:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_5_while_cond:
    movl    $1, %eax                #  10:     if     1 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #  11:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  13:     goto   5_while_cond
l_f1_4:
l_f1_9_while_cond:
    movl    $34591, %eax            #  16:     if     34591 <= 20889 goto 10_while_body
    movl    $20889, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  17:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  19:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    movl    $75936, %eax            #  22:     if     75936 >= 38623 goto 14_while_body
    movl    $38623, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  23:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  25:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_16                 #  27:     goto   16
l_f1_16:
    jmp     l_f1_2_while_cond       #  29:     goto   2_while_cond
l_f1_1:
l_f1_20_while_cond:
    call    dummyBOOLfunc           #  32:     call   t6 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  33:     if     t6 = 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_21_while_body     
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  35:     goto   20_while_cond

l_f1_exit:
    # epilogue
    addl    $14100, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 5 of <array 4 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 6 of <array 1 of <array 4 of <int>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v2 <- t3
    movb    %al, -29(%ebp)         
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_5_while_cond:
    jmp     l_f2_4                  #   5:     goto   4
    jmp     l_f2_4                  #   6:     goto   4
l_f2_11_while_cond:
    movl    $99, %eax               #   8:     if     99 >= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_12_while_body     
    jmp     l_f2_10                 #   9:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  11:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_5_while_cond       #  13:     goto   5_while_cond
l_f2_4:
    movl    $86077, %eax            #  15:     sub    t4 <- 86077, 27890
    movl    $27890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t5 <- t4, 53372
    movl    $53372, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     sub    t6 <- t5, 22835
    movl    $22835, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 3 of <array 10 of <array 9 of <array 6 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 2 of <array 3 of <array 10 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
l_test_6_while_cond:
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
    movl    $0, %eax                #   9:     assign v0 <- 0
    movb    %al, v0                
    leal    v3, %eax                #  10:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  3 <- t0
    pushl   %eax                   
    movl    $50412, %eax            #  12:     param  2 <- 50412
    pushl   %eax                   
    movl    $100, %eax              #  13:     param  1 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  14:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  16:     call   t2 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  17:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10               #  20:     goto   10
l_test_10:

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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 2 of <array 3 of <array 10 of <array 3 of <int>>>>>>
    .long    5
    .long    6
    .long    2
    .long    3
    .long   10
    .long    3
    .skip 4320
v3:                                 # <array 3 of <array 10 of <array 9 of <array 6 of <array 6 of <char>>>>>>
    .long    5
    .long    3
    .long   10
    .long    9
    .long    6
    .long    6
    .skip 9720








    # end of global data section
    #-----------------------------------------

    .end
##################################################

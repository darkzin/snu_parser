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
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 36 of <array 55 of <array 47 of <array 53 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -89(%ebp)   1  [ $v2       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $v3       <int> %ebp-96 ]

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
    movl    $97, %eax               #   0:     if     97 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $100, %eax              #   3:     assign v2 <- 100
    movb    %al, -89(%ebp)         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $1, %eax                #   8:     return 1
    jmp     l_f0_exit              
    movl    $1, %eax                #   9:     return 1
    jmp     l_f0_exit              
    call    dummyINTfunc            #  10:     call   t6 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    jmp     l_f0_11                 #  11:     goto   11
l_f0_11:
    movl    $68090, %eax            #  13:     if     68090 = 8221 goto 15_if_true
    movl    $8221, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  14:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  16:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $100, %eax              #  19:     assign v2 <- 100
    movb    %al, -89(%ebp)         
    movl    $1, %eax                #  20:     if     1 = 1 goto 20_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  21:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  23:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_0                  #  26:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  29:     call   t7 <- dummyINTfunc
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  30:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $41837, %eax            #  33:     mul    t9 <- 41837, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  34:     add    t10 <- t9, 84428
    movl    $84428, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  38:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     add    t13 <- t12, 48189
    movl    $48189, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  43:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  44:     add    t16 <- t15, 90532
    movl    $90532, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  47:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  48:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  49:     add    t19 <- t18, 34264
    movl    $34264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  50:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  51:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  52:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  53:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  54:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -80(%ebp), %eax         #  55:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyBOOLfunc           #  56:     call   t24 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 36 of <array 55 of <array 47 of <array 53 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #   -118372368(%ebp)  118372344  [ $v0       <array 6 of <array 36 of <array 55 of <array 47 of <array 53 of <int>>>>>> %ebp-118372368 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $118372356, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29593089, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-118372368(%ebp)     # local array 'v0': 5 dimensions
    movl    $6,-118372364(%ebp)     #   dimension 1: 6 elements
    movl    $36,-118372360(%ebp)    #   dimension 2: 36 elements
    movl    $55,-118372356(%ebp)    #   dimension 3: 55 elements
    movl    $47,-118372352(%ebp)    #   dimension 4: 47 elements
    movl    $53,-118372348(%ebp)    #   dimension 5: 53 elements

    # function body
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_1                  #   1:     goto   1
l_f1_4:
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #  10:     param  1 <- t6
    pushl   %eax                   
    leal    -118372368(%ebp), %eax  #  11:     &()    t7 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  13:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  14:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  15:     return t9
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  16:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $118372356, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    movl    $99, %eax               #   3:     if     99 >= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_9_while_cond:
    jmp     l_f2_8                  #  10:     goto   8
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_13_if_false        #  13:     goto   13_if_false
    jmp     l_f2_11                 #  14:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $20468, %eax            #  17:     if     20468 # 91665 goto 15_if_true
    movl    $91665, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  18:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $72226, %eax            #  23:     assign v0 <- 72226
    movl    %eax, -24(%ebp)        
    jmp     l_f2_2_while_cond       #  24:     goto   2_while_cond
l_f2_1:
    call    ReadInt                 #  26:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 36 of <array 55 of <array 47 of <array 53 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   6:     if     99 <= 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7               
    jmp     l_test_8                #   7:     goto   8
l_test_7:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_9:
    movzbl  -15(%ebp), %eax         #  14:     assign v0 <- t2
    movb    %al, v0                
    movl    $100, %eax              #  15:     if     100 # 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_12              
    jmp     l_test_13               #  16:     goto   13
l_test_12:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_14               #  19:     goto   14
l_test_13:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_14:
    movzbl  -16(%ebp), %eax         #  23:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  24:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  26:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            

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
    .align   4
v1:                                 # <array 6 of <array 36 of <array 55 of <array 47 of <array 53 of <int>>>>>>
    .long    5
    .long    6
    .long   36
    .long   55
    .long   47
    .long   53
    .skip 118372320








    # end of global data section
    #-----------------------------------------

    .end
##################################################

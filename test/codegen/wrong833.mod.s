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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 5 of <array 8 of <array 7 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $100, %eax              #   0:     if     100 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 5 of <array 8 of <array 7 of <array 6 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t5       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 5 of <array 4 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 10 of <array 6 of <array 5 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -117(%ebp)   1  [ $v5       <char> %ebp-117 ]
    #   -2944(%ebp)  2824  [ $v6       <array 7 of <array 5 of <array 5 of <array 8 of <array 2 of <char>>>>>> %ebp-2944 ]
    #   -8008(%ebp)  5064  [ $v7       <array 3 of <array 5 of <array 8 of <array 7 of <array 6 of <bool>>>>>> %ebp-8008 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $7996, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1999, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2944(%ebp)          # local array 'v6': 5 dimensions
    movl    $7,-2940(%ebp)          #   dimension 1: 7 elements
    movl    $5,-2936(%ebp)          #   dimension 2: 5 elements
    movl    $5,-2932(%ebp)          #   dimension 3: 5 elements
    movl    $8,-2928(%ebp)          #   dimension 4: 8 elements
    movl    $2,-2924(%ebp)          #   dimension 5: 2 elements
    movl    $5,-8008(%ebp)          # local array 'v7': 5 dimensions
    movl    $3,-8004(%ebp)          #   dimension 1: 3 elements
    movl    $5,-8000(%ebp)          #   dimension 2: 5 elements
    movl    $8,-7996(%ebp)          #   dimension 3: 8 elements
    movl    $7,-7992(%ebp)          #   dimension 4: 7 elements
    movl    $6,-7988(%ebp)          #   dimension 5: 6 elements

    # function body
    movl    $1, %eax                #   0:     param  2 <- 1
    pushl   %eax                   
    leal    -8008(%ebp), %eax       #   1:     &()    t3 <- v7
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   2:     param  1 <- t3
    pushl   %eax                   
    leal    -2944(%ebp), %eax       #   3:     &()    t4 <- v6
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   5:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #   6:     assign v5 <- t5
    movb    %al, -117(%ebp)        
    movl    $97, %eax               #   7:     assign v5 <- 97
    movb    %al, -117(%ebp)        
    leal    -2944(%ebp), %eax       #   8:     &()    t6 <- v6
    movl    %eax, -104(%ebp)       
    movl    $98802, %eax            #   9:     add    t7 <- 98802, 38149
    movl    $38149, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    leal    -2944(%ebp), %eax       #  11:     &()    t8 <- v6
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  12:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -108(%ebp), %eax        #  14:     mul    t10 <- t7, t9
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 65624
    movl    $65624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    leal    -2944(%ebp), %eax       #  17:     &()    t12 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t14 <- t11, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 90164
    movl    $90164, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    leal    -2944(%ebp), %eax       #  23:     &()    t16 <- v6
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  25:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  26:     mul    t18 <- t15, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t19 <- t18, 69445
    movl    $69445, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    leal    -2944(%ebp), %eax       #  29:     &()    t20 <- v6
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  31:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  32:     mul    t22 <- t19, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t23 <- t22, 28956
    movl    $28956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  34:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    -2944(%ebp), %eax       #  35:     &()    t25 <- v6
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  36:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  37:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  38:     add    t27 <- t24, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -104(%ebp), %eax        #  39:     add    t28 <- t6, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $98, %eax               #  40:     assign @t28 <- 98
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $7996, %esp             # remove locals
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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t7       <char> %ebp-82 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 3 of <array 2 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 4 of <array 8 of <array 9 of <array 2 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $31597, %eax            #   0:     sub    t3 <- 31597, 42644
    movl    $42644, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   1:     sub    t4 <- t3, 79686
    movl    $79686, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   2:     add    t5 <- t4, 83334
    movl    $83334, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   3:     if     t5 < 45827 goto 1_if_true
    movl    $45827, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   4:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    movl    $99, %eax               #  10:     if     99 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_while_body      
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_while_body:
    movl    $97, %eax               #  13:     assign v1 <- 97
    movb    %al, 8(%ebp)           
l_f2_10_while_cond:
    movl    $97, %eax               #  15:     if     97 >= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  18:     goto   10_while_cond
l_f2_9:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  21:     goto   13
    movl    $88109, %eax            #  22:     if     88109 > 79384 goto 17
    movl    $79384, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  23:     goto   18
l_f2_17:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_19                 #  26:     goto   19
l_f2_18:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -81(%ebp)         
l_f2_19:
    movzbl  -81(%ebp), %eax         #  30:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_14_while_cond      #  31:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_5_while_cond       #  33:     goto   5_while_cond
l_f2_4:
    call    dummyCHARfunc           #  35:     call   t7 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $83034, %eax            #  39:     mul    t9 <- 83034, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  40:     add    t10 <- t9, 10748
    movl    $10748, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  44:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  45:     add    t13 <- t12, 97889
    movl    $97889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  49:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  50:     add    t16 <- t15, 31259
    movl    $31259, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  54:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  55:     add    t19 <- t18, 49497
    movl    $49497, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  56:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  58:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  59:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  60:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -82(%ebp), %eax         #  61:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_9_if_false       #  12:     goto   9_if_false
    jmp     l_test_9_if_false       #  13:     goto   9_if_false
    jmp     l_test_exit            
    jmp     l_test_7                #  15:     goto   7
l_test_9_if_false:
l_test_7:
l_test_15_while_cond:
    movl    $98, %eax               #  19:     if     98 > 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_21               #  23:     goto   21
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_21:
    movzbl  -21(%ebp), %eax         #  26:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_15_while_cond    #  27:     goto   15_while_cond
l_test_14:

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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

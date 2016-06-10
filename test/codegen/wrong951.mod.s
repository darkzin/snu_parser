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
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t16      <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $90068, %eax            #   1:     if     90068 < 37241 goto 2_while_body
    movl    $37241, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $52346, %eax            #   4:     if     52346 > 68400 goto 5_if_true
    movl    $68400, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    dummyBOOLfunc           #  10:     call   t14 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #  13:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
l_f0_11_while_cond:
    movl    $67307, %eax            #  16:     add    t15 <- 67307, 55960
    movl    $55960, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     if     t15 < 63304 goto 12_while_body
    movl    $63304, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  18:     goto   10
l_f0_12_while_body:
    call    dummyCHARfunc           #  20:     call   t16 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_11_while_cond      #  21:     goto   11_while_cond
l_f0_10:

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
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t15      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t16      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t17      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t18      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t19      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t20      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t21      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t22      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t23      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t24      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t25      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t26      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t27      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t28      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t29      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t30      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t31      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 3 of <array 1 of <array 4 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $v3       <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -81(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t14 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t14 = 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t15 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t15 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $54868, %eax            #  13:     mul    t17 <- 54868, t16
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t18 <- t17, 80043
    movl    $80043, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t20 <- t18, t19
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t21 <- t20, 84038
    movl    $84038, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t23 <- t21, t22
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t24 <- t23, 90905
    movl    $90905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     mul    t26 <- t24, t25
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     add    t27 <- t26, 65649
    movl    $65649, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t30 <- t28, t29
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t31 <- v1, t30
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  35:     assign @t31 <- t15
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $25008, %eax            #  36:     if     25008 < 21568 goto 7_if_true
    movl    $21568, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  37:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_12_if_false        #  39:     goto   12_if_false
    jmp     l_f1_10                 #  40:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $54517, %eax            #  43:     assign v4 <- 54517
    movl    %eax, -88(%ebp)        
l_f1_15_while_cond:
    jmp     l_f1_14                 #  45:     goto   14
    jmp     l_f1_15_while_cond      #  46:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_6                  #  48:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t15      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t16      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t17      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t18      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t19      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t20      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t21      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t22      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t23      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t24      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t25      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t26      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t27      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t28      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t29      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t30      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t31      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 6 of <array 6 of <array 5 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #    -81(%ebp)   1  [ $v3       <bool> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $98, %eax               #   4:     if     98 <= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_7                 
    jmp     l_f2_8                  #   5:     goto   8
l_f2_7:
    movl    $1, %eax                #   7:     assign t14 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $0, %eax                #  10:     assign t14 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  12:     return t14
    jmp     l_f2_exit              
    movl    $0, %eax                #  13:     assign v3 <- 0
    movb    %al, -81(%ebp)         
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_0                  #  16:     goto   0
l_f2_0:
    jmp     l_f2_14                 #  18:     goto   14
    jmp     l_f2_14                 #  19:     goto   14
    jmp     l_f2_14                 #  20:     goto   14
l_f2_14:
    movl    $1, %eax                #  22:     assign t15 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  23:     goto   16
    movl    $0, %eax                #  24:     assign t15 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $78033, %eax            #  29:     mul    t17 <- 78033, t16
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t18 <- t17, 55340
    movl    $55340, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t20 <- t18, t19
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t21 <- t20, 61616
    movl    $61616, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  39:     mul    t23 <- t21, t22
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     add    t24 <- t23, 36740
    movl    $36740, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  44:     mul    t26 <- t24, t25
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  45:     add    t27 <- t26, 97078
    movl    $97078, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  46:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  48:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  49:     add    t30 <- t28, t29
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  50:     add    t31 <- v2, t30
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  51:     assign @t31 <- t15
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_21_while_cond:
    jmp     l_f2_20                 #  53:     goto   20
    movl    $0, %eax                #  54:     assign v3 <- 0
    movb    %al, -81(%ebp)         
    jmp     l_f2_21_while_cond      #  55:     goto   21_while_cond
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t13      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <array 6 of <array 6 of <array 5 of <array 7 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   3:     if     97 < t1 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $78498, %eax            #   8:     mul    t2 <- 78498, 92743
    movl    $92743, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     div    t3 <- t2, 21374
    movl    $21374, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     div    t4 <- t3, 85812
    movl    $85812, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     assign v0 <- t4
    movl    %eax, v0               
l_test_7_while_cond:
    movl    $34389, %eax            #  13:     sub    t5 <- 34389, 75294
    movl    $75294, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  14:     if     t5 >= 47510 goto 8_while_body
    movl    $47510, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #  15:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  17:     goto   7_while_cond
l_test_6:
    call    dummyINTfunc            #  19:     call   t6 <- dummyINTfunc
    movl    %eax, -52(%ebp)        
    leal    v1, %eax                #  20:     &()    t7 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  21:     param  1 <- t7
    pushl   %eax                   
    movl    $55689, %eax            #  22:     mul    t8 <- 55689, 73383
    movl    $73383, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  23:     div    t9 <- t8, 2983
    movl    $2983, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  24:     div    t10 <- t9, 5952
    movl    $5952, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     div    t11 <- t10, 50126
    movl    $50126, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     div    t12 <- t11, 54912
    movl    $54912, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     param  0 <- t12
    pushl   %eax                   
    call    f2                      #  28:     call   t13 <- f2
    addl    $8, %esp               
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v1:                                 # <array 5 of <array 6 of <array 6 of <array 5 of <array 7 of <bool>>>>>>
    .long    5
    .long    5
    .long    6
    .long    6
    .long    5
    .long    7
    .skip 6300








    # end of global data section
    #-----------------------------------------

    .end
##################################################

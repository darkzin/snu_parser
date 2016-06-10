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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 79 of <array 80 of <array 36 of <array 61 of <array 85 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t6 >= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t7
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  10:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $56614, %eax            #  11:     assign v2 <- 56614
    movl    %eax, 16(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t6       <bool> %ebp-101 ]
    #   -108(%ebp)   4  [ $t7       <ptr(4) to <array 79 of <array 80 of <array 36 of <array 61 of <array 85 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <ptr(4) to <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t9       <bool> %ebp-113 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 62 of <array 50 of <array 3 of <array 35 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 22 of <array 82 of <array 80 of <array 48 of <char>>>>>>> %ebp+12 ]
    #   -114(%ebp)   1  [ $v2       <bool> %ebp-114 ]
    #   -157477460(%ebp)  157477344  [ $v3       <array 19 of <array 55 of <array 72 of <array 23 of <array 91 of <char>>>>>> %ebp-157477460 ]
    #   -581274988(%ebp)  423797528  [ $v4       <array 79 of <array 80 of <array 36 of <array 61 of <array 85 of <int>>>>>> %ebp-581274988 ]
    #   -581274989(%ebp)   1  [ $v5       <char> %ebp-581274989 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $581274980, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $145318745, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-157477460(%ebp)     # local array 'v3': 5 dimensions
    movl    $19,-157477456(%ebp)    #   dimension 1: 19 elements
    movl    $55,-157477452(%ebp)    #   dimension 2: 55 elements
    movl    $72,-157477448(%ebp)    #   dimension 3: 72 elements
    movl    $23,-157477444(%ebp)    #   dimension 4: 23 elements
    movl    $91,-157477440(%ebp)    #   dimension 5: 91 elements
    movl    $5,-581274988(%ebp)     # local array 'v4': 5 dimensions
    movl    $79,-581274984(%ebp)    #   dimension 1: 79 elements
    movl    $80,-581274980(%ebp)    #   dimension 2: 80 elements
    movl    $36,-581274976(%ebp)    #   dimension 3: 36 elements
    movl    $61,-581274972(%ebp)    #   dimension 4: 61 elements
    movl    $85,-581274968(%ebp)    #   dimension 5: 85 elements

    # function body
    jmp     l_f1_exit              
    movl    $100, %eax              #   1:     if     100 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   2:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   4:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    movl    $99, %eax               #   8:     if     99 < 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #   9:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  11:     goto   10_while_cond
l_f1_9:
    movl    $74571, %eax            #  13:     if     74571 >= 52701 goto 14
    movl    $52701, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14                
    jmp     l_f1_15                 #  14:     goto   15
l_f1_14:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f1_16                 #  17:     goto   16
l_f1_15:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -101(%ebp)        
l_f1_16:
    movzbl  -101(%ebp), %eax        #  21:     assign v2 <- t6
    movb    %al, -114(%ebp)        
    jmp     l_f1_1                  #  22:     goto   1
l_f1_1:
l_f1_19_while_cond:
    movl    $100, %eax              #  25:     if     100 # 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_20_while_body     
    jmp     l_f1_18                 #  26:     goto   18
l_f1_20_while_body:
    jmp     l_f1_22                 #  28:     goto   22
l_f1_22:
    movl    $34496, %eax            #  30:     if     34496 <= 86756 goto 26_if_true
    movl    $86756, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  31:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_exit              
    movl    $28853, %eax            #  34:     if     28853 # 84864 goto 31_if_true
    movl    $84864, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_31_if_true        
    jmp     l_f1_32_if_false        #  35:     goto   32_if_false
l_f1_31_if_true:
    jmp     l_f1_30                 #  37:     goto   30
l_f1_32_if_false:
l_f1_30:
    leal    -581274988(%ebp), %eax  #  40:     &()    t7 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  41:     param  3 <- t7
    pushl   %eax                   
    movl    $81867, %eax            #  42:     param  2 <- 81867
    pushl   %eax                   
    leal    -157477460(%ebp), %eax  #  43:     &()    t8 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  44:     param  1 <- t8
    pushl   %eax                   
    movl    $100, %eax              #  45:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  46:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -113(%ebp)        
    leal    -157477460(%ebp), %eax  #  47:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    leal    -157477460(%ebp), %eax  #  49:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  50:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  51:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $78163, %eax            #  52:     mul    t13 <- 78163, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  53:     add    t14 <- t13, 18543
    movl    $18543, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    leal    -157477460(%ebp), %eax  #  55:     &()    t15 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  56:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  57:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  58:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  59:     add    t18 <- t17, 51594
    movl    $51594, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  60:     param  1 <- 4
    pushl   %eax                   
    leal    -157477460(%ebp), %eax  #  61:     &()    t19 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  62:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  63:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  64:     mul    t21 <- t18, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  65:     add    t22 <- t21, 62972
    movl    $62972, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  66:     param  1 <- 5
    pushl   %eax                   
    leal    -157477460(%ebp), %eax  #  67:     &()    t23 <- v3
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  68:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  69:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  70:     mul    t25 <- t22, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  71:     add    t26 <- t25, 71270
    movl    $71270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  72:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -157477460(%ebp), %eax  #  73:     &()    t28 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  74:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  75:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  76:     add    t30 <- t27, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -16(%ebp), %eax         #  77:     add    t31 <- t10, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $97, %eax               #  78:     assign @t31 <- 97
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_25                 #  79:     goto   25
l_f1_27_if_false:
l_f1_25:
    jmp     l_f1_19_while_cond      #  82:     goto   19_while_cond
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $581274980, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 5 of <array 40 of <array 87 of <array 39 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 96 of <array 52 of <array 23 of <array 100 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #   1:     goto   5
l_f2_5:
    jmp     l_f2_1                  #   3:     goto   1
l_f2_1:
l_f2_9_while_cond:
    jmp     l_f2_8                  #   6:     goto   8
    movl    $85190, %eax            #   7:     if     85190 # 66598 goto 13_if_true
    movl    $66598, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #   8:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  10:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_9_while_cond       #  13:     goto   9_while_cond
l_f2_8:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    jmp     l_test_exit            
    leal    _str_1, %eax            #   1:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    movl    $96294, %eax            #   4:     add    t1 <- 96294, 89858
    movl    $89858, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t2 <- t1, 83194
    movl    $83194, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $76200, %eax            #   6:     if     76200 < t2 goto 3_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   7:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    jmp     l_test_2                #  10:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyINTfunc            #  13:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_test_9_while_cond:
    call    dummyCHARfunc           #  15:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #  16:     if     99 >= t4 goto 10_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  22:     if     t5 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  23:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  25:     goto   12
l_test_14_if_false:
l_test_12:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

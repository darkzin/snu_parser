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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -16(%ebp)   4  [ $v2       <int> %ebp-16 ]

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
l_f0_4_while_cond:
    jmp     l_f0_4_while_cond       #   1:     goto   4_while_cond
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
    movl    $58812, %eax            #   4:     assign v2 <- 58812
    movl    %eax, -16(%ebp)        
l_f0_8_while_cond:
    movl    $93939, %eax            #   6:     if     93939 <= 28890 goto 9_while_body
    movl    $28890, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_while_body:
    movl    $99, %eax               #   9:     if     99 > 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  10:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  12:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $55767, %eax            #  15:     if     55767 = 4219 goto 16_if_true
    movl    $4219, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  16:     goto   17_if_false
l_f0_16_if_true:
l_f0_20_while_cond:
    jmp     l_f0_20_while_cond      #  19:     goto   20_while_cond
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_8_while_cond       #  23:     goto   8_while_cond
l_f0_7:

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
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t5       <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t6       <char> %ebp-86 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t8       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 2 of <array 4 of <array 4 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 1 of <array 9 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 7 of <array 1 of <array 5 of <char>>>>>>> %ebp+20 ]
    #   -101(%ebp)   1  [ $v4       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f1_3:
    movzbl  -53(%ebp), %eax         #   8:     assign v4 <- t2
    movb    %al, -101(%ebp)        
    movl    $20780, %eax            #   9:     sub    t3 <- 20780, 82757
    movl    $82757, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  10:     add    t4 <- t3, 65413
    movl    $65413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  11:     if     t4 < 69304 goto 7_if_true
    movl    $69304, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  12:     goto   8_if_false
l_f1_7_if_true:
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    jmp     l_f1_11                 #  15:     goto   11
l_f1_11:
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  18:     goto   15_while_cond
    movl    $63788, %eax            #  19:     if     63788 < 68891 goto 18_if_true
    movl    $68891, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  20:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_if_false:
l_f1_17:
    call    dummyCHARfunc           #  25:     call   t6 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    call    dummyINTfunc            #  26:     call   t7 <- dummyINTfunc
    movl    %eax, -92(%ebp)        
    jmp     l_f1_6                  #  27:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_25_if_false        #  30:     goto   25_if_false
    movl    $97, %eax               #  31:     if     97 <= 100 goto 27
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_27                
    jmp     l_f1_28                 #  32:     goto   28
l_f1_27:
    movl    $1, %eax                #  34:     assign t8 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f1_29                 #  35:     goto   29
l_f1_28:
    movl    $0, %eax                #  37:     assign t8 <- 0
    movb    %al, -93(%ebp)         
l_f1_29:
    movzbl  -93(%ebp), %eax         #  39:     return t8
    jmp     l_f1_exit              
    movl    $1, %eax                #  40:     return 1
    jmp     l_f1_exit              
    movl    $43882, %eax            #  41:     assign v0 <- 43882
    movl    %eax, 8(%ebp)          
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  43:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  44:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $93548, %eax            #  45:     mul    t10 <- 93548, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  46:     add    t11 <- t10, 29251
    movl    $29251, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  50:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  51:     add    t14 <- t13, 17192
    movl    $17192, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  55:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  56:     add    t17 <- t16, 16249
    movl    $16249, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  57:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  58:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  59:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  60:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  61:     add    t20 <- t19, 48420
    movl    $48420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  62:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  63:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  64:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  65:     add    t23 <- t21, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  66:     add    t24 <- v1, t23
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $0, %eax                #  67:     assign @t24 <- 0
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  68:     if     0 # 0 goto 35_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_35_if_true        
    jmp     l_f1_36_if_false        #  69:     goto   36_if_false
l_f1_35_if_true:
    jmp     l_f1_34                 #  71:     goto   34
l_f1_36_if_false:
l_f1_34:
    jmp     l_f1_23                 #  74:     goto   23
l_f1_25_if_false:
l_f1_23:

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 4 of <array 7 of <array 1 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 4 of <array 1 of <array 9 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 2 of <array 4 of <array 4 of <array 3 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 2 of <array 2 of <array 6 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 9 of <array 4 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 5 of <array 5 of <array 5 of <array 10 of <bool>>>>>>> %ebp+20 ]
    #   -640(%ebp)  600  [ $v4       <array 6 of <array 2 of <array 4 of <array 4 of <array 3 of <bool>>>>>> %ebp-640 ]
    #   -1528(%ebp)  888  [ $v5       <array 2 of <array 4 of <array 1 of <array 9 of <array 3 of <int>>>>>> %ebp-1528 ]
    #   -2812(%ebp)  1284  [ $v6       <array 9 of <array 4 of <array 7 of <array 1 of <array 5 of <char>>>>>> %ebp-2812 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2800, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $700, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-640(%ebp)           # local array 'v4': 5 dimensions
    movl    $6,-636(%ebp)           #   dimension 1: 6 elements
    movl    $2,-632(%ebp)           #   dimension 2: 2 elements
    movl    $4,-628(%ebp)           #   dimension 3: 4 elements
    movl    $4,-624(%ebp)           #   dimension 4: 4 elements
    movl    $3,-620(%ebp)           #   dimension 5: 3 elements
    movl    $5,-1528(%ebp)          # local array 'v5': 5 dimensions
    movl    $2,-1524(%ebp)          #   dimension 1: 2 elements
    movl    $4,-1520(%ebp)          #   dimension 2: 4 elements
    movl    $1,-1516(%ebp)          #   dimension 3: 1 elements
    movl    $9,-1512(%ebp)          #   dimension 4: 9 elements
    movl    $3,-1508(%ebp)          #   dimension 5: 3 elements
    movl    $5,-2812(%ebp)          # local array 'v6': 5 dimensions
    movl    $9,-2808(%ebp)          #   dimension 1: 9 elements
    movl    $4,-2804(%ebp)          #   dimension 2: 4 elements
    movl    $7,-2800(%ebp)          #   dimension 3: 7 elements
    movl    $1,-2796(%ebp)          #   dimension 4: 1 elements
    movl    $5,-2792(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $99, %eax               #   0:     return 99
    jmp     l_f2_exit              
    leal    -2812(%ebp), %eax       #   1:     &()    t2 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t2
    pushl   %eax                   
    leal    -1528(%ebp), %eax       #   3:     &()    t3 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  2 <- t3
    pushl   %eax                   
    leal    -640(%ebp), %eax        #   5:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  1 <- t4
    pushl   %eax                   
    movl    $52358, %eax            #   7:     div    t5 <- 52358, 8456
    movl    $8456, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     add    t6 <- t5, 79410
    movl    $79410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     sub    t7 <- t6, 8823
    movl    $8823, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  11:     call   t8 <- f1
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    movl    $97, %eax               #  12:     return 97
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $2800, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
    jmp     l_test_6_if_true        #   5:     goto   6_if_true
    jmp     l_test_6_if_true        #   6:     goto   6_if_true
    jmp     l_test_6_if_true        #   7:     goto   6_if_true
    jmp     l_test_6_if_true        #   8:     goto   6_if_true
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
l_test_6_if_true:
l_test_15_while_cond:
    movl    $98, %eax               #  12:     if     98 < 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  13:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  15:     goto   15_while_cond
l_test_14:
    call    WriteLn                 #  17:     call   WriteLn
    movl    $97, %eax               #  18:     if     97 < 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  19:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  21:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_5                #  24:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyINTfunc            #  27:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #  28:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  29:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #  30:     call   WriteChar
    addl    $4, %esp               

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################

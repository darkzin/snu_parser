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
    #    -73(%ebp)   1  [ $t6       <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t7       <char> %ebp-74 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 68 of <array 3 of <array 34 of <array 74 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 23 of <array 37 of <array 52 of <array 26 of <char>>>>>>> %ebp+16 ]
    #    -85(%ebp)   1  [ $v3       <char> %ebp-85 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_4                  #   1:     goto   4
l_f0_4:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
    movl    $0, %eax                #   5:     assign t6 <- 0
    movb    %al, -73(%ebp)         
l_f0_6:
    movzbl  -73(%ebp), %eax         #   7:     if     t6 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   8:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -74(%ebp)         
    movzbl  -74(%ebp), %eax         #  14:     return t7
    jmp     l_f0_exit              
l_f0_12_while_cond:
    movl    $42382, %eax            #  16:     sub    t8 <- 42382, 8318
    movl    $8318, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  17:     if     t8 < 70686 goto 13_while_body
    movl    $70686, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_11                 #  18:     goto   11
l_f0_13_while_body:
    movl    $99, %eax               #  20:     return 99
    jmp     l_f0_exit              
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $66162, %eax            #  24:     mul    t10 <- 66162, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     add    t11 <- t10, 27683
    movl    $27683, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  29:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t14 <- t13, 19753
    movl    $19753, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t17 <- t16, 69879
    movl    $69879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  38:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t20 <- t19, 93122
    movl    $93122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  41:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  42:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  43:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  45:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $100, %eax              #  46:     assign @t24 <- 100
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_18_while_cond:
    jmp     l_f0_17                 #  48:     goto   17
    jmp     l_f0_18_while_cond      #  49:     goto   18_while_cond
l_f0_17:
    movl    $38085, %eax            #  51:     if     38085 > 7647 goto 21_if_true
    movl    $7647, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  52:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  54:     goto   20
l_f0_22_if_false:
l_f0_20:
    jmp     l_f0_12_while_cond      #  57:     goto   12_while_cond
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #   3:     if     98 < t7 goto 3_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $100, %eax              #   6:     if     100 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_2_while_cond       #  12:     goto   2_while_cond
l_f1_1:
    call    dummyProcedure          #  14:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 55 of <array 23 of <array 37 of <array 52 of <array 26 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 30 of <array 68 of <array 3 of <array 34 of <array 74 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 50 of <array 75 of <array 69 of <array 72 of <array 60 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 1 of <array 97 of <array 70 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -15397972(%ebp)  15397944  [ $v4       <array 30 of <array 68 of <array 3 of <array 34 of <array 74 of <char>>>>>> %ebp-15397972 ]
    #   -78678356(%ebp)  63280384  [ $v5       <array 55 of <array 23 of <array 37 of <array 52 of <array 26 of <char>>>>>> %ebp-78678356 ]
    #   -78678360(%ebp)   4  [ $v6       <int> %ebp-78678360 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $78678348, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19669587, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-15397972(%ebp)      # local array 'v4': 5 dimensions
    movl    $30,-15397968(%ebp)     #   dimension 1: 30 elements
    movl    $68,-15397964(%ebp)     #   dimension 2: 68 elements
    movl    $3,-15397960(%ebp)      #   dimension 3: 3 elements
    movl    $34,-15397956(%ebp)     #   dimension 4: 34 elements
    movl    $74,-15397952(%ebp)     #   dimension 5: 74 elements
    movl    $5,-78678356(%ebp)      # local array 'v5': 5 dimensions
    movl    $55,-78678352(%ebp)     #   dimension 1: 55 elements
    movl    $23,-78678348(%ebp)     #   dimension 2: 23 elements
    movl    $37,-78678344(%ebp)     #   dimension 3: 37 elements
    movl    $52,-78678340(%ebp)     #   dimension 4: 52 elements
    movl    $26,-78678336(%ebp)     #   dimension 5: 26 elements

    # function body
    leal    -78678356(%ebp), %eax   #   0:     &()    t6 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t6
    pushl   %eax                   
    movl    $97, %eax               #   2:     if     97 >= 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_4                 
    jmp     l_f2_5                  #   3:     goto   5
l_f2_4:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f2_6:
    movzbl  -17(%ebp), %eax         #  10:     param  1 <- t7
    pushl   %eax                   
    leal    -15397972(%ebp), %eax   #  11:     &()    t8 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  13:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #  14:     if     97 = t9 goto 1_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  15:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_9_while_cond:
    jmp     l_f2_10_while_body      #  21:     goto   10_while_body
    jmp     l_f2_8                  #  22:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  24:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_19_if_false        #  26:     goto   19_if_false
    jmp     l_f2_17                 #  27:     goto   17
l_f2_19_if_false:
l_f2_17:
    movl    $57120, %eax            #  30:     assign v6 <- 57120
    movl    %eax, -78678360(%ebp)  
    jmp     l_f2_14                 #  31:     goto   14
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $78678348, %esp         # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $50256, %eax            #   0:     if     50256 > 31848 goto 1_if_true
    movl    $31848, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   3:     if     97 <= 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    movl    $36860, %eax            #  15:     add    t1 <- 36860, 76505
    movl    $76505, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $55839, %eax            #  16:     if     55839 > t1 goto 12_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  17:     goto   10
l_test_12_while_body:
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
    jmp     l_test_14               #  20:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_11_while_cond    #  23:     goto   11_while_cond
l_test_10:
    call    ReadInt                 #  25:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
l_test_19_while_cond:
    jmp     l_test_20_while_body    #  27:     goto   20_while_body
    jmp     l_test_20_while_body    #  28:     goto   20_while_body
    call    dummyBOOLfunc           #  29:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  30:     if     t3 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  31:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  33:     goto   19_while_cond
l_test_18:
    movl    $27053, %eax            #  35:     div    t4 <- 27053, 71885
    movl    $71885, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     div    t5 <- t4, 6743
    movl    $6743, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     assign v0 <- t5
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

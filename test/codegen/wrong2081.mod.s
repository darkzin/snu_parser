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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   4:     return 99
    jmp     l_f0_exit              
l_f0_8_while_cond:
    movl    $96420, %eax            #   6:     if     96420 >= 53960 goto 9_while_body
    movl    $53960, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_while_body      
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   9:     goto   8_while_cond
l_f0_7:
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyINTfunc            #  12:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  13:     if     98 >= 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  14:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  16:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_1_while_cond       #  19:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     return t8
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  23:     call   t9 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <bool> %ebp-37 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $80996, %eax            #   1:     sub    t5 <- 80996, 32797
    movl    $32797, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $20772, %eax            #   2:     add    t6 <- 20772, 54686
    movl    $54686, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t7 <- t6, 27517
    movl    $27517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     sub    t8 <- t7, 1311
    movl    $1311, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t5 < t8 goto 2_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   6:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
    movl    $29863, %eax            #  12:     if     29863 >= 94844 goto 9
    movl    $94844, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #  13:     goto   10
l_f1_9:
    movl    $1, %eax                #  15:     assign t9 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f1_11                 #  16:     goto   11
l_f1_10:
    movl    $0, %eax                #  18:     assign t9 <- 0
    movb    %al, -37(%ebp)         
l_f1_11:
    movzbl  -37(%ebp), %eax         #  20:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  21:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_f1_15_if_false        #  22:     goto   15_if_false
    jmp     l_f1_13                 #  23:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $97, %eax               #  26:     if     97 < 98 goto 17
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_17                
    jmp     l_f1_18                 #  27:     goto   18
l_f1_17:
    movl    $1, %eax                #  29:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_19                 #  30:     goto   19
l_f1_18:
    movl    $0, %eax                #  32:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_19:
    movzbl  -14(%ebp), %eax         #  34:     return t11
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  35:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 18 of <array 53 of <array 40 of <array 36 of <array 68 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 87 of <array 58 of <array 45 of <array 65 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 89 of <array 34 of <array 30 of <array 68 of <bool>>>>>>> %ebp+16 ]
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
    movl    $100, %eax              #   0:     if     100 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyProcedure          #   3:     call   dummyProcedure
l_f2_6_while_cond:
    movl    $21895, %eax            #   5:     if     21895 > 20716 goto 7_while_body
    movl    $20716, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_12_if_false        #  14:     goto   12_if_false
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $65773, %eax            #  18:     mul    t5 <- 65773, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  19:     add    t6 <- t5, 16782
    movl    $16782, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  23:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     add    t9 <- t8, 7489
    movl    $7489, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  28:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     add    t12 <- t11, 31663
    movl    $31663, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  33:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t15 <- t14, 4344
    movl    $4344, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $0, %eax                #  40:     assign @t19 <- 0
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  42:     goto   17_while_cond
    jmp     l_f2_21_if_false        #  43:     goto   21_if_false
    jmp     l_f2_19                 #  44:     goto   19
l_f2_21_if_false:
l_f2_19:
l_f2_23_while_cond:
    movl    $4418, %eax             #  48:     if     4418 > 13538 goto 24_while_body
    movl    $13538, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_24_while_body     
    jmp     l_f2_22                 #  49:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  51:     goto   23_while_cond
l_f2_22:
    movl    $4882, %eax             #  53:     if     4882 = 94487 goto 27_if_true
    movl    $94487, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  54:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  56:     goto   26
l_f2_28_if_false:
l_f2_26:
    jmp     l_f2_10                 #  59:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    dummyCHARfunc           #  62:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  63:     return t20
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
l_test_4_while_cond:
    movl    $1, %eax                #   1:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #   2:     call   t0 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     if     100 < t0 goto 5_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
    jmp     l_test_0                #   8:     goto   0
l_test_0:
l_test_8_while_cond:
    jmp     l_test_7                #  11:     goto   7
    movl    $74477, %eax            #  12:     if     74477 <= 41556 goto 11_if_true
    movl    $41556, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #  13:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  15:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  19:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $23736, %eax            #  20:     if     23736 < 58805 goto 17_if_true
    movl    $58805, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $97, %eax               #  26:     if     97 < 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_21_if_true      
    jmp     l_test_22_if_false      #  27:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  29:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
    movl    $99, %eax               #  33:     if     99 >= 99 goto 26_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_26_if_true      
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  36:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $8966, %eax             #  39:     assign v0 <- 8966
    movl    %eax, v0               
    call    dummyINTfunc            #  40:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_32_while_cond:
    jmp     l_test_32_while_cond    #  42:     goto   32_while_cond
    jmp     l_test_36_if_false      #  43:     goto   36_if_false
    jmp     l_test_34               #  44:     goto   34
l_test_36_if_false:
l_test_34:
    movl    $100, %eax              #  47:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_8_while_cond     #  48:     goto   8_while_cond
l_test_7:
    call    ReadInt                 #  50:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

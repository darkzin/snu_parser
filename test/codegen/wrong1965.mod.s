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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 71 of <array 69 of <array 62 of <array 98 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_4:
    jmp     l_f0_2                  #   4:     goto   2
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  11:     goto   6
    jmp     l_f0_6                  #  12:     goto   6
    jmp     l_f0_6                  #  13:     goto   6
    jmp     l_f0_7                  #  14:     goto   7
l_f0_6:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  17:     goto   8
l_f0_7:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  21:     return t5
    jmp     l_f0_exit              
l_f0_15_while_cond:
    call    ReadInt                 #  23:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    WriteLn                 #  24:     call   WriteLn
    jmp     l_f0_21_if_false        #  25:     goto   21_if_false
    jmp     l_f0_19                 #  26:     goto   19
l_f0_21_if_false:
l_f0_19:
l_f0_23_while_cond:
    jmp     l_f0_22                 #  30:     goto   22
    jmp     l_f0_23_while_cond      #  31:     goto   23_while_cond
l_f0_22:
    jmp     l_f0_15_while_cond      #  33:     goto   15_while_cond

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 50 of <array 71 of <array 69 of <array 62 of <array 98 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #   -1488316276(%ebp)  1488316224  [ $v5       <array 50 of <array 71 of <array 69 of <array 62 of <array 98 of <bool>>>>>> %ebp-1488316276 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1488316264, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $372079066, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1488316276(%ebp)    # local array 'v5': 5 dimensions
    movl    $50,-1488316272(%ebp)   #   dimension 1: 50 elements
    movl    $71,-1488316268(%ebp)   #   dimension 2: 71 elements
    movl    $69,-1488316264(%ebp)   #   dimension 3: 69 elements
    movl    $62,-1488316260(%ebp)   #   dimension 4: 62 elements
    movl    $98,-1488316256(%ebp)   #   dimension 5: 98 elements

    # function body
    leal    -1488316276(%ebp), %eax #   0:     &()    t3 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    movl    $71650, %eax            #   2:     div    t4 <- 71650, 7164
    movl    $7164, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     mul    t5 <- t4, 91417
    movl    $91417, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     mul    t6 <- t5, 53689
    movl    $53689, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     div    t7 <- t6, 99735
    movl    $99735, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     div    t8 <- t7, 78581
    movl    $78581, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     mul    t9 <- t8, 20893
    movl    $20893, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     if     t9 >= 50573 goto 1
    movl    $50573, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   9:     goto   2
l_f1_1:
    movl    $1, %eax                #  11:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #  12:     goto   3
l_f1_2:
    movl    $0, %eax                #  14:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  16:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  17:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
l_f1_6_while_cond:
    jmp     l_f1_9                  #  19:     goto   9
    jmp     l_f1_10                 #  20:     goto   10
l_f1_9:
    movl    $1, %eax                #  22:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_11                 #  23:     goto   11
l_f1_10:
    movl    $0, %eax                #  25:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f1_11:
    movl    $1, %eax                #  27:     if     1 = t12 goto 7_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
    jmp     l_f1_5                  #  28:     goto   5
l_f1_7_while_body:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  31:     goto   13
    jmp     l_f1_14_while_cond      #  32:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_6_while_cond       #  34:     goto   6_while_cond
l_f1_5:
    movl    $91339, %eax            #  36:     div    t13 <- 91339, 35193
    movl    $35193, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     mul    t14 <- t13, 74184
    movl    $74184, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     if     t14 # 1026 goto 17_if_true
    movl    $1026, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  39:     goto   18_if_false
l_f1_17_if_true:
l_f1_21_while_cond:
    jmp     l_f1_21_while_cond      #  42:     goto   21_while_cond
    jmp     l_f1_16                 #  43:     goto   16
l_f1_18_if_false:
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $1488316264, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_5_if_false         #   1:     goto   5_if_false
    jmp     l_f2_3                  #   2:     goto   3
l_f2_5_if_false:
l_f2_3:
l_f2_7_while_cond:
    movl    $87487, %eax            #   6:     if     87487 >= 19578 goto 8_while_body
    movl    $19578, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:
    movl    $97, %eax               #  11:     return 97
    jmp     l_f2_exit              
    movl    $100, %eax              #  12:     if     100 >= 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_12                
    jmp     l_f2_13                 #  13:     goto   13
l_f2_12:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_14                 #  16:     goto   14
l_f2_13:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_14:
    movzbl  -13(%ebp), %eax         #  20:     assign v1 <- t3
    movb    %al, -17(%ebp)         
l_f2_17_while_cond:
    jmp     l_f2_16                 #  22:     goto   16
    jmp     l_f2_17_while_cond      #  23:     goto   17_while_cond
l_f2_16:
l_f2_20_while_cond:
    movl    $27688, %eax            #  26:     if     27688 # 13631 goto 21_while_body
    movl    $13631, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_21_while_body     
    jmp     l_f2_19                 #  27:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  29:     goto   20_while_cond
l_f2_19:
    movl    $99, %eax               #  31:     assign v2 <- 99
    movb    %al, -18(%ebp)         
    jmp     l_f2_0                  #  32:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_25_while_cond:
    call    dummyCHARfunc           #  36:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  37:     if     t4 < 100 goto 26_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_26_while_body     
    jmp     l_f2_24                 #  38:     goto   24
l_f2_26_while_body:
    movl    $100, %eax              #  40:     return 100
    jmp     l_f2_exit              
    movl    $100, %eax              #  41:     return 100
    jmp     l_f2_exit              
l_f2_31_while_cond:
    movl    $1, %eax                #  43:     if     1 # 0 goto 32_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_32_while_body     
    jmp     l_f2_30                 #  44:     goto   30
l_f2_32_while_body:
    jmp     l_f2_31_while_cond      #  46:     goto   31_while_cond
l_f2_30:
    movl    $97, %eax               #  48:     return 97
    jmp     l_f2_exit              
l_f2_36_while_cond:
    movl    $97, %eax               #  50:     if     97 <= 97 goto 37_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_37_while_body     
    jmp     l_f2_35                 #  51:     goto   35
l_f2_37_while_body:
    jmp     l_f2_36_while_cond      #  53:     goto   36_while_cond
l_f2_35:
    movl    $100, %eax              #  55:     if     100 <= 98 goto 40
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_40                
    jmp     l_f2_41                 #  56:     goto   41
l_f2_40:
    movl    $1, %eax                #  58:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_42                 #  59:     goto   42
l_f2_41:
    movl    $0, %eax                #  61:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_42:
    movzbl  -15(%ebp), %eax         #  63:     assign v1 <- t5
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  64:     assign v2 <- 99
    movb    %al, -18(%ebp)         
l_f2_46_while_cond:
    movl    $98, %eax               #  66:     if     98 < 99 goto 47_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_47_while_body     
    jmp     l_f2_45                 #  67:     goto   45
l_f2_47_while_body:
    jmp     l_f2_46_while_cond      #  69:     goto   46_while_cond
l_f2_45:
    jmp     l_f2_25_while_cond      #  71:     goto   25_while_cond
l_f2_24:
    call    dummyCHARfunc           #  73:     call   t6 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  74:     return t6
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
    jmp     l_test_3                #   6:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_true        #  11:     goto   7_if_true
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
    movl    $100, %eax              #  14:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_6                #  15:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $99, %eax               #  18:     if     99 = 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  19:     goto   13_if_false
l_test_12_if_true:
    movl    $99, %eax               #  21:     assign v0 <- 99
    movb    %al, v0                
    call    ReadInt                 #  22:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_11               #  23:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    f2                      #  28:     call   t2 <- f2
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  29:     if     97 <= t2 goto 20_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_20_if_true      
    jmp     l_test_21_if_false      #  30:     goto   21_if_false
l_test_20_if_true:
l_test_24_while_cond:
    movl    $22575, %eax            #  33:     if     22575 > 54370 goto 25_while_body
    movl    $54370, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_25_while_body   
    jmp     l_test_23               #  34:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  36:     goto   24_while_cond
l_test_23:
    jmp     l_test_19               #  38:     goto   19
l_test_21_if_false:
l_test_19:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

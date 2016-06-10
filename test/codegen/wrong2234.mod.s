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
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     if     t8 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f0_3:
    movzbl  -18(%ebp), %eax         #   9:     return t9
    jmp     l_f0_exit              
    movl    $98, %eax               #  10:     if     98 < 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  11:     goto   8_if_false
l_f0_7_if_true:
l_f0_11_while_cond:
    movl    $37602, %eax            #  14:     if     37602 = 82739 goto 12_while_body
    movl    $82739, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond
l_f0_10:
    call    ReadInt                 #  19:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_6                  #  20:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $93989, %eax            #  23:     if     93989 <= 53725 goto 16_if_true
    movl    $53725, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  24:     goto   17_if_false
l_f0_16_if_true:
    movl    $1, %eax                #  26:     if     1 # 0 goto 20_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  27:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  29:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_15                 #  32:     goto   15
l_f0_17_if_false:
l_f0_15:

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
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 57 of <array 60 of <array 56 of <array 73 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 85 of <array 36 of <array 66 of <array 72 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    movl    $39510, %eax            #   3:     if     39510 <= 18091 goto 5
    movl    $18091, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_7:
    movzbl  -21(%ebp), %eax         #  11:     return t9
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  12:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_18                 #  14:     goto   18
l_f1_18:
    jmp     l_f1_14                 #  16:     goto   14
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_16:
    movl    $0, %eax                #  24:     if     0 # t10 goto 10
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  25:     goto   11
l_f1_10:
    movl    $1, %eax                #  27:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  28:     goto   12
l_f1_11:
    movl    $0, %eax                #  30:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  32:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 100 of <array 57 of <array 58 of <array 59 of <array 26 of <char>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    call    ReadInt                 #   1:     call   t9 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    $30125, %eax            #   2:     add    t10 <- 30125, 25927
    movl    $25927, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t11 <- t10, 88065
    movl    $88065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 37445
    movl    $37445, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t13 <- t12, 63167
    movl    $63167, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t14 <- t13, 91802
    movl    $91802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  0 <- t14
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 100 of <array 57 of <array 58 of <array 59 of <array 26 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 100 of <array 57 of <array 58 of <array 59 of <array 26 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]

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
l_test_1_while_cond:
    movl    $4285, %eax             #   1:     sub    t0 <- 4285, 42236
    movl    $42236, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 99868
    movl    $99868, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $27009, %eax            #   3:     if     27009 <= t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    movl    $1, %eax                #   9:     assign v0 <- 1
    movb    %al, v0                
l_test_7_while_cond:
    movl    $17069, %eax            #  11:     mul    t2 <- 17069, 2993
    movl    $2993, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $42932, %eax            #  12:     if     42932 < t2 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  15:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
    movl    $62301, %eax            #  18:     if     62301 < 53254 goto 12_while_body
    movl    $53254, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12_while_body   
    jmp     l_test_10               #  19:     goto   10
l_test_12_while_body:
    movl    $93127, %eax            #  21:     if     93127 < 81181 goto 15_if_true
    movl    $81181, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  22:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  24:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_18               #  27:     goto   18
l_test_18:
    movl    $56335, %eax            #  29:     assign v1 <- 56335
    movl    %eax, v1               
    movl    $1, %eax                #  30:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_23               #  31:     goto   23
l_test_23:
    jmp     l_test_11_while_cond    #  33:     goto   11_while_cond
l_test_10:
    movl    $99, %eax               #  35:     if     99 >= 98 goto 30_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_30_if_true      
    jmp     l_test_31_if_false      #  36:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  38:     goto   29
l_test_31_if_false:
l_test_29:
    leal    v2, %eax                #  41:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     param  2 <- t3
    pushl   %eax                   
    movl    $57684, %eax            #  43:     param  1 <- 57684
    pushl   %eax                   
    movl    $26906, %eax            #  44:     if     26906 > 21653 goto 34
    movl    $21653, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_34              
    jmp     l_test_35               #  45:     goto   35
l_test_34:
    movl    $1, %eax                #  47:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_36               #  48:     goto   36
l_test_35:
    movl    $0, %eax                #  50:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_36:
    movzbl  -29(%ebp), %eax         #  52:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  53:     call   t5 <- f2
    addl    $12, %esp              
    movb    %al, -30(%ebp)         
    leal    v2, %eax                #  54:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  55:     param  2 <- t6
    pushl   %eax                   
    movl    $9545, %eax             #  56:     param  1 <- 9545
    pushl   %eax                   
    movl    $1, %eax                #  57:     param  0 <- 1
    pushl   %eax                   
    call    f2                      #  58:     call   t7 <- f2
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
l_test_40_while_cond:
    jmp     l_test_40_while_cond    #  60:     goto   40_while_cond
    jmp     l_test_26               #  61:     goto   26
l_test_26:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v2:                                 # <array 100 of <array 57 of <array 58 of <array 59 of <array 26 of <char>>>>>>
    .long    5
    .long  100
    .long   57
    .long   58
    .long   59
    .long   26
    .skip 507140400








    # end of global data section
    #-----------------------------------------

    .end
##################################################

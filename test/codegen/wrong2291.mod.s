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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 80 of <array 78 of <array 48 of <array 56 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $6105, %eax             #   0:     mul    t8 <- 6105, 7231
    movl    $7231, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v3 <- t8
    movl    %eax, -24(%ebp)        
l_f0_5_while_cond:
    movl    $97213, %eax            #   3:     if     97213 # 14527 goto 6_while_body
    movl    $14527, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_8                  #   8:     goto   8
l_f0_8:
    movl    $87070, %eax            #  10:     if     87070 <= 20232 goto 12
    movl    $20232, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #  11:     goto   13
l_f0_12:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_14                 #  14:     goto   14
l_f0_13:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f0_14:
    movzbl  -17(%ebp), %eax         #  18:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  19:     goto   1
l_f0_1:
l_f0_17_while_cond:
    jmp     l_f0_18_while_body      #  22:     goto   18_while_body
    jmp     l_f0_16                 #  23:     goto   16
    jmp     l_f0_16                 #  24:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  26:     goto   17_while_cond
l_f0_16:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 91 of <array 26 of <array 61 of <array 6 of <bool>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_5_if_false         #   1:     goto   5_if_false
    call    dummyBOOLfunc           #   2:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyINTfunc            #   8:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    jmp     l_f2_4                  #   0:     goto   4
    jmp     l_f2_1                  #   1:     goto   1
l_f2_4:
l_f2_1:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   8:     return t8
    jmp     l_f2_exit              
l_f2_8_while_cond:
    movl    $81277, %eax            #  10:     add    t9 <- 81277, 5648
    movl    $5648, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $83669, %eax            #  11:     if     83669 = t9 goto 9_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_while_body:
    movl    $0, %eax                #  14:     assign v1 <- 0
    movb    %al, -21(%ebp)         
    jmp     l_f2_14_if_false        #  15:     goto   14_if_false
    jmp     l_f2_12                 #  16:     goto   12
l_f2_14_if_false:
l_f2_12:
l_f2_16_while_cond:
    jmp     l_f2_15                 #  20:     goto   15
    jmp     l_f2_16_while_cond      #  21:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_8_while_cond       #  23:     goto   8_while_cond
l_f2_7:
l_f2_19_while_cond:
    movl    $98, %eax               #  26:     if     98 >= 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_20_while_body     
    jmp     l_f2_18                 #  27:     goto   18
l_f2_20_while_body:
    jmp     l_f2_24_if_false        #  29:     goto   24_if_false
    jmp     l_f2_22                 #  30:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_25                 #  33:     goto   25
l_f2_25:
    movl    $98, %eax               #  35:     if     98 < 98 goto 29_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_29_if_true        
    jmp     l_f2_30_if_false        #  36:     goto   30_if_false
l_f2_29_if_true:
    jmp     l_f2_28                 #  38:     goto   28
l_f2_30_if_false:
l_f2_28:
    movl    $98, %eax               #  41:     if     98 = 99 goto 33
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_33                
    jmp     l_f2_34                 #  42:     goto   34
l_f2_33:
    movl    $1, %eax                #  44:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_35                 #  45:     goto   35
l_f2_34:
    movl    $0, %eax                #  47:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_35:
    movzbl  -13(%ebp), %eax         #  49:     return t10
    jmp     l_f2_exit              
l_f2_38_while_cond:
    jmp     l_f2_37                 #  51:     goto   37
    jmp     l_f2_38_while_cond      #  52:     goto   38_while_cond
l_f2_37:
    jmp     l_f2_19_while_cond      #  54:     goto   19_while_cond
l_f2_18:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 6 of <array 80 of <array 78 of <array 48 of <array 56 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    movl    $69610, %eax            #   1:     div    t0 <- 69610, 75785
    movl    $75785, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 35603
    movl    $35603, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 18891
    movl    $18891, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t2 = 6494 goto 2_if_true
    movl    $6494, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   5:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_5                #  12:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    call    ReadInt                 #  16:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $46484, %eax            #  17:     if     46484 = t4 goto 11_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  18:     goto   9
l_test_11_while_body:
    movl    $7224, %eax             #  20:     assign v1 <- 7224
    movl    %eax, v1               
    call    ReadInt                 #  21:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_exit            
    movl    $0, %eax                #  23:     if     0 # 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  24:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  26:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $1, %eax                #  29:     if     1 # 0 goto 21_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  30:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  32:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_10_while_cond    #  35:     goto   10_while_cond
l_test_9:
l_test_25_while_cond:
    movl    $0, %eax                #  38:     param  1 <- 0
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  41:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  42:     if     t7 = 1 goto 26_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  43:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  45:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 6 of <array 80 of <array 78 of <array 48 of <array 56 of <char>>>>>>
    .long    5
    .long    6
    .long   80
    .long   78
    .long   48
    .long   56
    .skip 100638720








    # end of global data section
    #-----------------------------------------

    .end
##################################################

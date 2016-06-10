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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_0                  #   3:     goto   0
    jmp     l_f0_0                  #   4:     goto   0
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   7:     if     100 > 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   8:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_exit              
    movl    $12840, %eax            #  11:     if     12840 <= 41030 goto 15_if_true
    movl    $41030, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  12:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  14:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_19_while_cond:
    jmp     l_f0_19_while_cond      #  18:     goto   19_while_cond
    movl    $65629, %eax            #  19:     param  0 <- 65629
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_exit              
    movl    $97, %eax               #  22:     assign v1 <- 97
    movb    %al, -17(%ebp)         
    jmp     l_f0_9                  #  23:     goto   9
l_f0_11_if_false:
l_f0_9:
    leal    _str_1, %eax            #  26:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  28:     call   WriteStr
    addl    $4, %esp               

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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 72 of <array 48 of <array 35 of <array 93 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 60 of <array 6 of <array 5 of <array 34 of <int>>>>>>> %ebp+12 ]
    #   -100(%ebp)   4  [ $v3       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $58898, %eax            #   0:     add    t2 <- 58898, 72917
    movl    $72917, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     sub    t3 <- t2, 81443
    movl    $81443, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   2:     add    t4 <- t3, 49168
    movl    $49168, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     return t4
    jmp     l_f1_exit              
    movl    $57440, %eax            #   4:     sub    t5 <- 57440, 861
    movl    $861, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $10862, %eax            #   8:     mul    t7 <- 10862, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   9:     add    t8 <- t7, 47597
    movl    $47597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  13:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t11 <- t10, 90571
    movl    $90571, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 47796
    movl    $47796, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t17 <- t16, 19733
    movl    $19733, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t21 <- v2, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -80(%ebp), %eax         #  30:     assign @t21 <- t5
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  31:     call   t22 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #  32:     if     t22 < 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  33:     goto   4_if_false
l_f1_3_if_true:
    movl    $0, %eax                #  35:     if     0 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  36:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  38:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_2                  #  41:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 40 of <array 93 of <array 77 of <array 35 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $8322, %eax             #   0:     assign v4 <- 8322
    movl    %eax, -24(%ebp)        
    movl    $38778, %eax            #   1:     sub    t2 <- 38778, 31903
    movl    $31903, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v4 <- t2
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   3:     if     98 > 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    movl    $31832, %eax            #   7:     if     31832 = 94378 goto 8_while_body
    movl    $94378, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  10:     goto   7_while_cond
l_f2_6:
    movl    $0, %eax                #  12:     return 0
    jmp     l_f2_exit              
    movl    $69250, %eax            #  13:     assign v4 <- 69250
    movl    %eax, -24(%ebp)        
    movl    $1, %eax                #  14:     return 1
    jmp     l_f2_exit              
    movl    $1, %eax                #  15:     return 1
    jmp     l_f2_exit              
l_f2_15_while_cond:
    movl    $49451, %eax            #  17:     if     49451 >= 32458 goto 16_while_body
    movl    $32458, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_16_while_body     
    jmp     l_f2_14                 #  18:     goto   14
l_f2_16_while_body:
    movl    $15473, %eax            #  20:     if     15473 < 30547 goto 19_if_true
    movl    $30547, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  21:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  23:     goto   18
l_f2_20_if_false:
l_f2_18:
l_f2_23_while_cond:
    movl    $97, %eax               #  27:     if     97 > 100 goto 24_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_24_while_body     
    jmp     l_f2_22                 #  28:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  30:     goto   23_while_cond
l_f2_22:
    movl    $62219, %eax            #  32:     if     62219 < 14649 goto 27_if_true
    movl    $14649, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  33:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  35:     goto   26
l_f2_28_if_false:
l_f2_26:
    movl    $23134, %eax            #  38:     if     23134 # 87024 goto 31
    movl    $87024, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_31                
    jmp     l_f2_32                 #  39:     goto   32
l_f2_31:
    movl    $1, %eax                #  41:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_33                 #  42:     goto   33
l_f2_32:
    movl    $0, %eax                #  44:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_33:
    movzbl  -17(%ebp), %eax         #  46:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_35                 #  47:     goto   35
l_f2_35:
    jmp     l_f2_15_while_cond      #  49:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_2                  #  51:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_8_while_cond:
    jmp     l_test_7                #  12:     goto   7
l_test_11_while_cond:
    movl    $0, %eax                #  14:     if     0 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  15:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    movl    $20813, %eax            #  19:     assign v1 <- 20813
    movl    %eax, v1               
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
    jmp     l_test_15               #  21:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_8_while_cond     #  24:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

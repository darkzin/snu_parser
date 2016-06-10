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
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f0_2_while_cond:
    movl    $4313, %eax             #   2:     if     4313 < 85259 goto 3_while_body
    movl    $85259, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    call    dummyBOOLfunc           #   5:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_7_while_cond:
    movl    $97326, %eax            #   7:     div    t6 <- 97326, 32236
    movl    $32236, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t7 <- t6, 51684
    movl    $51684, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     div    t8 <- t7, 8581
    movl    $8581, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     if     t8 < 53644 goto 8_while_body
    movl    $53644, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_8_while_body      
    jmp     l_f0_6                  #  11:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  13:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    movl    $19568, %eax            #  17:     div    t9 <- 19568, 53907
    movl    $53907, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     div    t10 <- t9, 49909
    movl    $49909, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t5       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t6       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 79 of <array 57 of <array 2 of <array 29 of <char>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
l_f1_1_if_true:
    movl    $0, %eax                #   3:     return 0
    jmp     l_f1_exit              
    movl    $99, %eax               #   4:     if     99 > 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8                 
    jmp     l_f1_9                  #   5:     goto   9
l_f1_8:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_10                 #   8:     goto   10
l_f1_9:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -65(%ebp)         
l_f1_10:
    movzbl  -65(%ebp), %eax         #  12:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  13:     goto   0
l_f1_0:
    call    dummyCHARfunc           #  15:     call   t6 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
l_f1_14_while_cond:
    jmp     l_f1_13                 #  17:     goto   13
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $81408, %eax            #  21:     mul    t8 <- 81408, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  22:     add    t9 <- t8, 83795
    movl    $83795, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  26:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     add    t12 <- t11, 4033
    movl    $4033, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  31:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t15 <- t14, 82669
    movl    $82669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  36:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t18 <- t17, 46416
    movl    $46416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  38:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  40:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  41:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  42:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  43:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_14_while_cond      #  44:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $35028, %eax            #   1:     div    t5 <- 35028, 37926
    movl    $37926, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $83416, %eax            #   2:     if     83416 < t5 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    call    f0                      #   5:     call   t6 <- f0
    movl    %eax, -24(%ebp)        
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   9:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    movl    $85557, %eax            #  11:     mul    t8 <- 85557, 13597
    movl    $13597, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     div    t9 <- t8, 56721
    movl    $56721, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     mul    t10 <- t9, 75953
    movl    $75953, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
l_test_4_while_cond:
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t0 = 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_10               #  10:     goto   10
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_7                #  13:     goto   7
l_test_9_if_false:
l_test_7:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $17799, %eax            #  17:     if     17799 # 97523 goto 16_if_true
    movl    $97523, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_16_if_true      
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
l_test_16_if_true:
    movl    $96119, %eax            #  20:     if     96119 < 99869 goto 20
    movl    $99869, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  21:     goto   21
l_test_20:
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_22               #  24:     goto   22
l_test_21:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_22:
    movzbl  -15(%ebp), %eax         #  28:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #  29:     param  1 <- 1
    pushl   %eax                   
    movl    $53962, %eax            #  30:     sub    t3 <- 53962, 7578
    movl    $7578, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  32:     call   t4 <- f2
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  33:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_15               #  34:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyProcedure          #  37:     call   dummyProcedure

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

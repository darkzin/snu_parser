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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 41 of <array 55 of <array 64 of <array 31 of <int>>>>>>> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

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
    movl    $64073, %eax            #   0:     if     64073 > 18292 goto 1_if_true
    movl    $18292, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    WriteLn                 #   3:     call   WriteLn
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_11_if_false        #   5:     goto   11_if_false
    jmp     l_f0_9                  #   6:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_6:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_13_while_cond:
    call    dummyBOOLfunc           #  15:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     if     t7 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_16                
    jmp     l_f0_12                 #  17:     goto   12
l_f0_16:
    jmp     l_f0_12                 #  19:     goto   12
    jmp     l_f0_13_while_cond      #  20:     goto   13_while_cond
l_f0_12:
    movl    $71300, %eax            #  22:     sub    t8 <- 71300, 95200
    movl    $95200, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     if     t8 <= 30489 goto 18
    movl    $30489, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_18                
    jmp     l_f0_19                 #  24:     goto   19
l_f0_18:
    movl    $1, %eax                #  26:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_20                 #  27:     goto   20
l_f0_19:
    movl    $0, %eax                #  29:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f0_20:
    movzbl  -21(%ebp), %eax         #  31:     return t9
    jmp     l_f0_exit              

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
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $24502, %eax            #   0:     mul    t7 <- 24502, 36316
    movl    $36316, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   1:     sub    t8 <- t7, 17664
    movl    $17664, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     sub    t9 <- t8, 60419
    movl    $60419, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     add    t10 <- t9, 70461
    movl    $70461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t11 <- t10, 9790
    movl    $9790, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t12 <- t11, 66509
    movl    $66509, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t13 <- t12, 72973
    movl    $72973, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t14 <- t13, 89191
    movl    $89191, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     add    t15 <- t14, 60410
    movl    $60410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     sub    t16 <- t15, 77478
    movl    $77478, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     sub    t17 <- t16, 6426
    movl    $6426, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     sub    t18 <- t17, 15324
    movl    $15324, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  12:     sub    t19 <- t18, 18938
    movl    $18938, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  13:     sub    t20 <- t19, 6701
    movl    $6701, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  14:     return t20
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  15:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movl    $82370, %eax            #  16:     div    t22 <- 82370, 2257
    movl    $2257, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  17:     mul    t23 <- t22, 98031
    movl    $98031, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $30917, %eax            #  18:     add    t24 <- 30917, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  19:     return t24
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 100 of <array 26 of <array 26 of <array 93 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 53 of <array 2 of <array 89 of <array 68 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 72 of <array 3 of <array 95 of <array 32 of <array 98 of <int>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t7
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #  10:     assign v4 <- 98
    movb    %al, -15(%ebp)         
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  12:     goto   11_while_body
    jmp     l_f2_11_while_body      #  13:     goto   11_while_body
l_f2_11_while_body:
    movl    $98, %eax               #  15:     if     98 > 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  16:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  18:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_20_while_cond:
    movl    $97, %eax               #  22:     if     97 <= 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_21_while_body     
    jmp     l_f2_19                 #  23:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  25:     goto   20_while_cond
l_f2_19:
    movl    $0, %eax                #  27:     if     0 # 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_24                
    jmp     l_f2_25                 #  28:     goto   25
l_f2_24:
    movl    $1, %eax                #  30:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_26                 #  31:     goto   26
l_f2_25:
    movl    $0, %eax                #  33:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_26:
    movzbl  -14(%ebp), %eax         #  35:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  36:     goto   10_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 35 of <array 41 of <array 55 of <array 64 of <array 31 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $35704, %eax            #   3:     add    t1 <- 35704, 17373
    movl    $17373, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $9694, %eax             #   4:     mul    t2 <- 9694, 60581
    movl    $60581, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t3 <- t2, 40690
    movl    $40690, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     mul    t4 <- t3, 77500
    movl    $77500, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   7:     if     t1 >= t4 goto 4_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_4_if_true       
    jmp     l_test_5_if_false       #   8:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #  10:     goto   3
l_test_5_if_false:
l_test_3:
    leal    v1, %eax                #  13:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  15:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  16:     assign v0 <- t6
    movb    %al, v0                

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
v1:                                 # <array 35 of <array 41 of <array 55 of <array 64 of <array 31 of <int>>>>>>
    .long    5
    .long   35
    .long   41
    .long   55
    .long   64
    .long   31
    .skip 626348800








    # end of global data section
    #-----------------------------------------

    .end
##################################################

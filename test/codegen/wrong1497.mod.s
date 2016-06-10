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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]

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
    call    ReadInt                 #   0:     call   t11 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 35 of <array 32 of <array 65 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 91 of <array 54 of <array 80 of <array 13 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 8 of <array 1 of <array 46 of <array 52 of <int>>>>>>> %ebp+16 ]
    #    -26(%ebp)   1  [ $v4       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_5                  #   0:     goto   5
    jmp     l_f1_5                  #   1:     goto   5
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $1, %eax                #   4:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movl    $1, %eax                #   9:     if     1 # t11 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #  10:     goto   2
l_f1_1:
    movl    $1, %eax                #  12:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #  13:     goto   3
l_f1_2:
    movl    $0, %eax                #  15:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #  17:     assign v4 <- t12
    movb    %al, -26(%ebp)         
    call    dummyINTfunc            #  18:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $29652, %eax            #  19:     sub    t14 <- 29652, t13
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     return t14
    jmp     l_f1_exit              
    movl    $22895, %eax            #  21:     if     22895 > 10344 goto 13_if_true
    movl    $10344, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  22:     goto   14_if_false
l_f1_13_if_true:
    call    dummyCHARfunc           #  24:     call   t15 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  26:     goto   18_while_cond
    jmp     l_f1_12                 #  27:     goto   12
l_f1_14_if_false:
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 46 of <array 21 of <array 32 of <array 91 of <array 77 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_2_while_cond       #   3:     goto   2_while_cond
l_f2_6_while_cond:
    jmp     l_f2_7_while_body       #   5:     goto   7_while_body
    movl    $3247, %eax             #   6:     if     3247 # 71219 goto 7_while_body
    movl    $71219, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <ptr(4) to <array 33 of <array 8 of <array 1 of <array 46 of <array 52 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <ptr(4) to <array 49 of <array 91 of <array 54 of <array 80 of <array 13 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <ptr(4) to <array 16 of <array 35 of <array 32 of <array 65 of <array 9 of <int>>>>>>> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_5                #   2:     goto   5
    jmp     l_test_5                #   3:     goto   5
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_5                #   5:     goto   5
l_test_4:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   8:     goto   6
l_test_5:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #  12:     if     t0 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #  13:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
    movl    $21272, %eax            #  17:     div    t1 <- 21272, 55210
    movl    $55210, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     div    t2 <- t1, 26672
    movl    $26672, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t3 <- t2, 928
    movl    $928, %ebx             
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     sub    t4 <- t3, 35602
    movl    $35602, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     assign v0 <- t4
    movl    %eax, v0               
    movl    $58244, %eax            #  22:     assign v0 <- 58244
    movl    %eax, v0               
    movl    $22599, %eax            #  23:     sub    t5 <- 22599, 68092
    movl    $68092, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     assign v0 <- t5
    movl    %eax, v0               
    movl    $91731, %eax            #  25:     if     91731 <= 35109 goto 17
    movl    $35109, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17              
    jmp     l_test_18               #  26:     goto   18
l_test_17:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_19               #  29:     goto   19
l_test_18:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -41(%ebp)         
l_test_19:
    movzbl  -41(%ebp), %eax         #  33:     assign v1 <- t6
    movb    %al, v1                
    movl    $1, %eax                #  34:     if     1 = 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22_if_true      
    jmp     l_test_23_if_false      #  35:     goto   23_if_false
l_test_22_if_true:
    movl    $30332, %eax            #  37:     if     30332 # 57901 goto 26_if_true
    movl    $57901, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_26_if_true      
    jmp     l_test_27_if_false      #  38:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  40:     goto   25
l_test_27_if_false:
l_test_25:
    leal    v4, %eax                #  43:     &()    t7 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  44:     param  2 <- t7
    pushl   %eax                   
    leal    v3, %eax                #  45:     &()    t8 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  46:     param  1 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  47:     &()    t9 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  48:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  49:     call   t10 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_test_21               #  50:     goto   21
l_test_23_if_false:
l_test_21:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 16 of <array 35 of <array 32 of <array 65 of <array 9 of <int>>>>>>
    .long    5
    .long   16
    .long   35
    .long   32
    .long   65
    .long    9
    .skip 41932800
v3:                                 # <array 49 of <array 91 of <array 54 of <array 80 of <array 13 of <bool>>>>>>
    .long    5
    .long   49
    .long   91
    .long   54
    .long   80
    .long   13
    .skip 250417440
v4:                                 # <array 33 of <array 8 of <array 1 of <array 46 of <array 52 of <int>>>>>>
    .long    5
    .long   33
    .long    8
    .long    1
    .long   46
    .long   52
    .skip 2525952








    # end of global data section
    #-----------------------------------------

    .end
##################################################

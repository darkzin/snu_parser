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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t16      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 85 of <array 3 of <array 97 of <array 23 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 77 of <array 2 of <array 10 of <array 1 of <array 29 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 84 of <array 12 of <array 90 of <array 68 of <array 87 of <char>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v4       <char> %ebp-26 ]

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
    movl    $68735, %eax            #   0:     mul    t13 <- 68735, 20576
    movl    $20576, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t14 <- t13, 98495
    movl    $98495, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t15 <- t14, 97313
    movl    $97313, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t15
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   5:     call   t16 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   6:     if     t16 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   9:     goto   2_while_cond
l_f0_1:
    movl    $99, %eax               #  11:     assign v4 <- 99
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 81 of <array 7 of <array 86 of <array 95 of <int>>>>>>> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t13 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $55798, %eax            #   1:     add    t14 <- 55798, 57629
    movl    $57629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t15 <- t14, 26743
    movl    $26743, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t16 <- t15, 90360
    movl    $90360, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  0 <- t16
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $38728, %eax            #   6:     mul    t17 <- 38728, 83592
    movl    $83592, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     mul    t18 <- t17, 86813
    movl    $86813, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     return t18
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t13 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12                
    jmp     l_f2_2                  #   2:     goto   2
l_f2_12:
    jmp     l_f2_2                  #   4:     goto   2
    jmp     l_f2_2                  #   5:     goto   2
    jmp     l_f2_2                  #   6:     goto   2
    jmp     l_f2_2                  #   7:     goto   2
    movl    $1, %eax                #   8:     assign t14 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t14 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  13:     return t14
    jmp     l_f2_exit              
    movl    $320, %eax              #  14:     assign v3 <- 320
    movl    %eax, -20(%ebp)        
    jmp     l_f2_19_if_false        #  15:     goto   19_if_false
    jmp     l_f2_17                 #  16:     goto   17
l_f2_19_if_false:
l_f2_17:
l_f2_21_while_cond:
    movl    $4337, %eax             #  20:     if     4337 # 33557 goto 22_while_body
    movl    $33557, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_22_while_body     
    jmp     l_f2_20                 #  21:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  23:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_14                 #  25:     goto   14
l_f2_14:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 17 of <array 85 of <array 3 of <array 97 of <array 23 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t12      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t7       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t8       <ptr(4) to <array 84 of <array 12 of <array 90 of <array 68 of <array 87 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <ptr(4) to <array 77 of <array 2 of <array 10 of <array 1 of <array 29 of <bool>>>>>>> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2176, %eax             #   0:     sub    t0 <- 2176, 34393
    movl    $34393, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 85268
    movl    $85268, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 30570
    movl    $30570, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     add    t3 <- t2, 58331
    movl    $58331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t4 <- t3, 57252
    movl    $57252, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     sub    t5 <- t4, 27540
    movl    $27540, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     sub    t6 <- t5, 84323
    movl    $84323, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
l_test_2_while_cond:
    movl    $98, %eax               #  10:     if     98 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #  11:     goto   1
l_test_3_while_body:
    movl    $97, %eax               #  13:     assign v0 <- 97
    movb    %al, v0                
    call    dummyBOOLfunc           #  14:     call   t7 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    movl    $97, %eax               #  15:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    leal    v3, %eax                #  17:     &()    t8 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  18:     param  3 <- t8
    pushl   %eax                   
    movl    $74026, %eax            #  19:     param  2 <- 74026
    pushl   %eax                   
    leal    v2, %eax                #  20:     &()    t9 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     param  1 <- t9
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  24:     call   t11 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  26:     goto   2_while_cond
l_test_1:
l_test_12_while_cond:
    jmp     l_test_11               #  29:     goto   11
    jmp     l_test_12_while_cond    #  30:     goto   12_while_cond
l_test_11:
    call    dummyBOOLfunc           #  32:     call   t12 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v1:                                 # <array 17 of <array 85 of <array 3 of <array 97 of <array 23 of <bool>>>>>>
    .long    5
    .long   17
    .long   85
    .long    3
    .long   97
    .long   23
    .skip 9671385
    .align   4
v2:                                 # <array 77 of <array 2 of <array 10 of <array 1 of <array 29 of <bool>>>>>>
    .long    5
    .long   77
    .long    2
    .long   10
    .long    1
    .long   29
    .skip 44660
v3:                                 # <array 84 of <array 12 of <array 90 of <array 68 of <array 87 of <char>>>>>>
    .long    5
    .long   84
    .long   12
    .long   90
    .long   68
    .long   87
    .skip 536699520








    # end of global data section
    #-----------------------------------------

    .end
##################################################

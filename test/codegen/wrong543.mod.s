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
    #    -16(%ebp)   4  [ $t15      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t16      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t17      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t18      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t19      <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t20      <bool> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 5 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 5 of <array 6 of <char>>>>>>> %ebp+20 ]

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
    movl    $58197, %eax            #   0:     mul    t15 <- 58197, 35196
    movl    $35196, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $23048, %eax            #   1:     sub    t16 <- 23048, 16104
    movl    $16104, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t15 < t16 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t17 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t17 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  10:     return t17
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  11:     call   t18 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  12:     if     t18 <= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  13:     goto   7
l_f0_6:
    movl    $1, %eax                #  15:     assign t19 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_8                  #  16:     goto   8
l_f0_7:
    movl    $0, %eax                #  18:     assign t19 <- 0
    movb    %al, -23(%ebp)         
l_f0_8:
    movzbl  -23(%ebp), %eax         #  20:     return t19
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  21:     call   t20 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         

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
    #    -16(%ebp)   4  [ $t15      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t16      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t17      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 3 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 3 of <array 2 of <array 4 of <char>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t15 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t16 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_4_if_false         #   2:     goto   4_if_false
    call    dummyINTfunc            #   3:     call   t17 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $77381, %eax            #   4:     if     77381 <= 76362 goto 7_if_true
    movl    $76362, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   5:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   7:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t15      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t16      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t17      <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 7 of <array 6 of <array 5 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t15 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t15
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t16 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   4:     call   t17 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     return t17
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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 9 of <array 3 of <array 2 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 3 of <array 1 of <char>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t3       <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t4       <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    v2, %eax                #   1:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t2 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   5:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #   6:     if     t3 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_test_4                #  10:     goto   4
l_test_3:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -46(%ebp)         
l_test_4:
    movzbl  -46(%ebp), %eax         #  14:     assign v0 <- t4
    movb    %al, v0                
l_test_7_while_cond:
    movl    $35210, %eax            #  16:     mul    t5 <- 35210, 27707
    movl    $27707, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     add    t6 <- t5, 96894
    movl    $96894, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  18:     add    t7 <- t6, 88938
    movl    $88938, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  19:     add    t8 <- t7, 31698
    movl    $31698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  20:     add    t9 <- t8, 84522
    movl    $84522, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  21:     sub    t10 <- t9, 13346
    movl    $13346, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t11 <- t10, 840
    movl    $840, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     sub    t12 <- t11, 60389
    movl    $60389, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     sub    t13 <- t12, 25507
    movl    $25507, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t14 <- t13, 80626
    movl    $80626, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3215, %eax             #  26:     if     3215 = t14 goto 8_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  27:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  29:     goto   7_while_cond
l_test_6:

l_test_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 10 of <array 2 of <array 7 of <array 3 of <array 1 of <char>>>>>>
    .long    5
    .long   10
    .long    2
    .long    7
    .long    3
    .long    1
    .skip  420
v2:                                 # <array 10 of <array 9 of <array 3 of <array 2 of <array 4 of <char>>>>>>
    .long    5
    .long   10
    .long    9
    .long    3
    .long    2
    .long    4
    .skip 2160








    # end of global data section
    #-----------------------------------------

    .end
##################################################

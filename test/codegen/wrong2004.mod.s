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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 74 of <array 25 of <array 12 of <array 13 of <int>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    leal    _str_1, %eax            #   0:     &()    t9 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $99, %eax               #   3:     return 99
    jmp     l_f0_exit              
    movl    $98, %eax               #   4:     if     98 <= 99 goto 3
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3                 
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #   8:     goto   5
l_f0_4:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_5:
    movzbl  -13(%ebp), %eax         #  12:     assign v2 <- t10
    movb    %al, -21(%ebp)         

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
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 30 of <array 42 of <array 73 of <array 6 of <array 25 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 23 of <array 21 of <array 14 of <array 50 of <array 36 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 51 of <array 63 of <array 1 of <array 45 of <array 95 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $96699, %eax            #   0:     if     96699 < 38846 goto 1_if_true
    movl    $38846, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   5:     goto   6_while_cond
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #   9:     if     97 <= 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_12                
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_12:
    jmp     l_f1_10_if_false        #  12:     goto   10_if_false
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_15_while_cond:
    call    dummyCHARfunc           #  17:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  18:     if     99 <= t10 goto 16_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_16_while_body     
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t9       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t9
    movb    %al, -14(%ebp)         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_12_while_cond:
    movl    $100, %eax              #  12:     if     100 >= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  13:     goto   11
l_f2_13_while_body:
    jmp     l_f2_15                 #  15:     goto   15
l_f2_15:
l_f2_19_while_cond:
    movl    $1, %eax                #  18:     if     1 # 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_20_while_body     
    jmp     l_f2_18                 #  19:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  21:     goto   19_while_cond
l_f2_18:
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  26:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_8                  #  28:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_exit              

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-44 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $91544, %eax            #   2:     add    t1 <- 91544, 22356
    movl    $22356, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 87410
    movl    $87410, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 3987
    movl    $3987, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t4 <- t3, 82635
    movl    $82635, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t5 <- t4, 11580
    movl    $11580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $32675, %eax            #   7:     if     32675 > t5 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   8:     goto   1
l_test_3_while_body:
    movl    $97, %eax               #  10:     assign v0 <- 97
    movb    %al, v0                
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    jmp     l_test_9_if_false       #  14:     goto   9_if_false
    movl    $1, %eax                #  15:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_7                #  16:     goto   7
l_test_9_if_false:
l_test_7:
l_test_13_while_cond:
    jmp     l_test_12               #  20:     goto   12
    movl    $72324, %eax            #  21:     if     72324 < 5878 goto 16
    movl    $5878, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_16              
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $1, %eax                #  24:     assign t7 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_test_18               #  25:     goto   18
l_test_17:
    movl    $0, %eax                #  27:     assign t7 <- 0
    movb    %al, -38(%ebp)         
l_test_18:
    movzbl  -38(%ebp), %eax         #  29:     assign v1 <- t7
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_13_while_cond    #  31:     goto   13_while_cond
l_test_12:
    leal    _str_2, %eax            #  33:     &()    t8 <- _str_2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  35:     call   WriteStr
    addl    $4, %esp               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

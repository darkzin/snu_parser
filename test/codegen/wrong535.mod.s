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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 1 of <array 6 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 6 of <array 5 of <array 1 of <array 9 of <bool>>>>>>> %ebp+20 ]
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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   3:     if     99 < t10 goto 4
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_4                 
    jmp     l_f0_5                  #   4:     goto   5
l_f0_4:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_6                  #   7:     goto   6
l_f0_5:
    movl    $0, %eax                #   9:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_6:
    movzbl  -14(%ebp), %eax         #  11:     assign v4 <- t11
    movb    %al, -26(%ebp)         
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  14:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t13 <- t12, 52252
    movl    $52252, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     return t13
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  17:     call   t14 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  18:     assign v2 <- t14
    movb    %al, 16(%ebp)          

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 8 of <array 6 of <array 5 of <array 1 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <ptr(4) to <array 3 of <array 1 of <array 6 of <array 2 of <array 8 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <ptr(4) to <array 6 of <array 7 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]
    #   -53820(%ebp)  53784  [ $v2       <array 6 of <array 7 of <array 8 of <array 8 of <array 5 of <int>>>>>> %ebp-53820 ]
    #   -54996(%ebp)  1176  [ $v3       <array 3 of <array 1 of <array 6 of <array 2 of <array 8 of <int>>>>>> %ebp-54996 ]
    #   -57180(%ebp)  2184  [ $v4       <array 8 of <array 6 of <array 5 of <array 1 of <array 9 of <bool>>>>>> %ebp-57180 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $57168, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14292, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-53820(%ebp)         # local array 'v2': 5 dimensions
    movl    $6,-53816(%ebp)         #   dimension 1: 6 elements
    movl    $7,-53812(%ebp)         #   dimension 2: 7 elements
    movl    $8,-53808(%ebp)         #   dimension 3: 8 elements
    movl    $8,-53804(%ebp)         #   dimension 4: 8 elements
    movl    $5,-53800(%ebp)         #   dimension 5: 5 elements
    movl    $5,-54996(%ebp)         # local array 'v3': 5 dimensions
    movl    $3,-54992(%ebp)         #   dimension 1: 3 elements
    movl    $1,-54988(%ebp)         #   dimension 2: 1 elements
    movl    $6,-54984(%ebp)         #   dimension 3: 6 elements
    movl    $2,-54980(%ebp)         #   dimension 4: 2 elements
    movl    $8,-54976(%ebp)         #   dimension 5: 8 elements
    movl    $5,-57180(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-57176(%ebp)         #   dimension 1: 8 elements
    movl    $6,-57172(%ebp)         #   dimension 2: 6 elements
    movl    $5,-57168(%ebp)         #   dimension 3: 5 elements
    movl    $1,-57164(%ebp)         #   dimension 4: 1 elements
    movl    $9,-57160(%ebp)         #   dimension 5: 9 elements

    # function body
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -33(%ebp)         
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 <= t10 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  10:     return t11
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $0, %eax                #  12:     if     0 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_while_body:
    leal    -57180(%ebp), %eax      #  15:     &()    t12 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  3 <- t12
    pushl   %eax                   
    movl    $100, %eax              #  17:     param  2 <- 100
    pushl   %eax                   
    leal    -54996(%ebp), %eax      #  18:     &()    t13 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  1 <- t13
    pushl   %eax                   
    leal    -53820(%ebp), %eax      #  20:     &()    t14 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  22:     call   t15 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
l_f1_12_while_cond:
    movl    $23864, %eax            #  24:     if     23864 >= 90591 goto 13_while_body
    movl    $90591, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  25:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  27:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_7_while_cond       #  29:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $57168, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 6 of <array 5 of <array 1 of <array 9 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 1 of <array 6 of <array 2 of <array 8 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $65277, %eax            #   7:     add    t0 <- 65277, 96531
    movl    $96531, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $42985, %eax            #   8:     if     42985 <= t0 goto 6_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_9                #  11:     goto   9
l_test_9:
    movl    $59002, %eax            #  13:     add    t1 <- 59002, 66542
    movl    $66542, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t2 <- t1, 43537
    movl    $43537, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  16:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_5                #  17:     goto   5
l_test_7_if_false:
l_test_5:
    leal    v2, %eax                #  20:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  3 <- t4
    pushl   %eax                   
    call    dummyCHARfunc           #  22:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  23:     param  2 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  24:     &()    t6 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     param  1 <- t6
    pushl   %eax                   
    leal    v0, %eax                #  26:     &()    t7 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  28:     call   t8 <- f0
    addl    $16, %esp              
    movl    %eax, -48(%ebp)        
    leal    _str_1, %eax            #  29:     &()    t9 <- _str_1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  31:     call   WriteStr
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v0:                                 # <array 6 of <array 7 of <array 8 of <array 8 of <array 5 of <int>>>>>>
    .long    5
    .long    6
    .long    7
    .long    8
    .long    8
    .long    5
    .skip 53760
v1:                                 # <array 3 of <array 1 of <array 6 of <array 2 of <array 8 of <int>>>>>>
    .long    5
    .long    3
    .long    1
    .long    6
    .long    2
    .long    8
    .skip 1152
v2:                                 # <array 8 of <array 6 of <array 5 of <array 1 of <array 9 of <bool>>>>>>
    .long    5
    .long    8
    .long    6
    .long    5
    .long    1
    .long    9
    .skip 2160








    # end of global data section
    #-----------------------------------------

    .end
##################################################

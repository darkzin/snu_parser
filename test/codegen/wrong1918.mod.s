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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 17 of <array 34 of <array 97 of <array 18 of <array 74 of <char>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v3       <char> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     assign v3 <- t11
    movb    %al, -18(%ebp)         
    movl    $100, %eax              #   5:     assign v3 <- 100
    movb    %al, -18(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 45 of <array 11 of <array 98 of <array 31 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f1_1                  #   0:     goto   1
l_f1_1:
    movl    $1, %eax                #   2:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t10
    jmp     l_f1_exit              
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f1_8                  #   8:     goto   8
    movl    $1, %eax                #   9:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  10:     goto   9
l_f1_8:
    movl    $0, %eax                #  12:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  14:     assign v2 <- t11
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 94 of <array 45 of <array 11 of <array 98 of <array 31 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t14      <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 74 of <array 88 of <array 5 of <array 43 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -141358188(%ebp)  141358164  [ $v5       <array 94 of <array 45 of <array 11 of <array 98 of <array 31 of <char>>>>>> %ebp-141358188 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $141358176, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35339544, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-141358188(%ebp)     # local array 'v5': 5 dimensions
    movl    $94,-141358184(%ebp)    #   dimension 1: 94 elements
    movl    $45,-141358180(%ebp)    #   dimension 2: 45 elements
    movl    $11,-141358176(%ebp)    #   dimension 3: 11 elements
    movl    $98,-141358172(%ebp)    #   dimension 4: 98 elements
    movl    $31,-141358168(%ebp)    #   dimension 5: 31 elements

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     return t10
    jmp     l_f2_exit              
    jmp     l_f2_7                  #   7:     goto   7
    jmp     l_f2_8                  #   8:     goto   8
l_f2_7:
    movl    $1, %eax                #  10:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #  11:     goto   9
l_f2_8:
    movl    $0, %eax                #  13:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  15:     return t11
    jmp     l_f2_exit              
    leal    -141358188(%ebp), %eax  #  16:     &()    t12 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t12
    pushl   %eax                   
    call    f1                      #  18:     call   t13 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  19:     if     t13 = 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_15                 #  20:     goto   15
l_f2_14:
    movl    $1, %eax                #  22:     assign t14 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_16                 #  23:     goto   16
l_f2_15:
    movl    $0, %eax                #  25:     assign t14 <- 0
    movb    %al, -22(%ebp)         
l_f2_16:
    movzbl  -22(%ebp), %eax         #  27:     return t14
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $141358176, %esp        # remove locals
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
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 94 of <array 45 of <array 11 of <array 98 of <array 31 of <char>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_5                #   0:     goto   5
    jmp     l_test_1                #   1:     goto   1
l_test_5:
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_2                #   4:     goto   2
l_test_1:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
l_test_9_while_cond:
    movl    $52459, %eax            #  13:     add    t1 <- 52459, 94236
    movl    $94236, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t2 <- t1, 72903
    movl    $72903, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $54287, %eax            #  15:     add    t3 <- 54287, 80122
    movl    $80122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  16:     if     t2 > t3 goto 10_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    call    dummyBOOLfunc           #  21:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  22:     assign v0 <- t4
    movb    %al, v0                
    call    ReadInt                 #  23:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
l_test_15_while_cond:
    call    dummyBOOLfunc           #  25:     call   t6 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  26:     if     t6 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  27:     goto   14
l_test_16_while_body:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  30:     call   t7 <- dummyBOOLfunc
    movb    %al, -38(%ebp)         
    leal    v1, %eax                #  31:     &()    t8 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  33:     call   t9 <- f1
    addl    $4, %esp               
    movb    %al, -45(%ebp)         
    jmp     l_test_15_while_cond    #  34:     goto   15_while_cond
l_test_14:
    movl    $0, %eax                #  36:     assign v0 <- 0
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v1:                                 # <array 94 of <array 45 of <array 11 of <array 98 of <array 31 of <char>>>>>>
    .long    5
    .long   94
    .long   45
    .long   11
    .long   98
    .long   31
    .skip 141358140








    # end of global data section
    #-----------------------------------------

    .end
##################################################

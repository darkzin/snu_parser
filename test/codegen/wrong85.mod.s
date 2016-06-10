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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     assign v2 <- 99
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 8 of <array 3 of <array 4 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   1:     return 100
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 8 of <array 3 of <array 4 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 4 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 3 of <array 7 of <array 7 of <array 2 of <char>>>>>>> %ebp+16 ]
    #   -6096(%ebp)  6072  [ $v4       <array 9 of <array 8 of <array 3 of <array 4 of <array 7 of <bool>>>>>> %ebp-6096 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6084, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1521, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6096(%ebp)          # local array 'v4': 5 dimensions
    movl    $9,-6092(%ebp)          #   dimension 1: 9 elements
    movl    $8,-6088(%ebp)          #   dimension 2: 8 elements
    movl    $3,-6084(%ebp)          #   dimension 3: 3 elements
    movl    $4,-6080(%ebp)          #   dimension 4: 4 elements
    movl    $7,-6076(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $73595, %eax            #   0:     sub    t6 <- 73595, 36440
    movl    $36440, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t6 <= 78319 goto 1_if_true
    movl    $78319, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $46829, %eax            #   7:     param  1 <- 46829
    pushl   %eax                   
    leal    -6096(%ebp), %eax       #   8:     &()    t7 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  10:     call   t8 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  11:     if     97 <= t8 goto 5_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #  12:     goto   6_if_false
l_f2_5_if_true:
    movl    $99, %eax               #  14:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_4                  #  15:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #  18:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  19:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $6084, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 8 of <array 3 of <array 4 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 3 of <array 7 of <array 7 of <array 2 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 4 of <array 10 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

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
    jmp     l_test_exit            
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $20275, %eax            #  11:     param  1 <- 20275
    pushl   %eax                   
    leal    v1, %eax                #  12:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  14:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     assign v0 <- t2
    movb    %al, v0                
l_test_9_while_cond:
    movl    $84360, %eax            #  17:     if     84360 >= 24580 goto 10_while_body
    movl    $24580, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  18:     goto   8
l_test_10_while_body:
l_test_13_while_cond:
    movl    $19839, %eax            #  21:     if     19839 < 17068 goto 14_while_body
    movl    $17068, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  22:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  24:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  27:     goto   17_while_cond
    movl    $98, %eax               #  28:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    leal    v3, %eax                #  30:     &()    t3 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     param  2 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  32:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     param  1 <- t4
    pushl   %eax                   
    movl    $98, %eax               #  34:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #  35:     call   t5 <- f2
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    jmp     l_test_9_while_cond     #  36:     goto   9_while_cond
l_test_8:
    movl    $4122, %eax             #  38:     assign v4 <- 4122
    movl    %eax, v4               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <array 9 of <array 8 of <array 3 of <array 4 of <array 7 of <bool>>>>>>
    .long    5
    .long    9
    .long    8
    .long    3
    .long    4
    .long    7
    .skip 6048
v2:                                 # <array 10 of <array 1 of <array 3 of <array 4 of <array 10 of <int>>>>>>
    .long    5
    .long   10
    .long    1
    .long    3
    .long    4
    .long   10
    .skip 4800
v3:                                 # <array 6 of <array 3 of <array 7 of <array 7 of <array 2 of <char>>>>>>
    .long    5
    .long    6
    .long    3
    .long    7
    .long    7
    .long    2
    .skip 1764
v4:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

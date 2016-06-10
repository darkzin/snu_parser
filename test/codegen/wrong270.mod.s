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
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v3       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 7 of <array 6 of <array 6 of <array 6 of <array 2 of <char>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $48861, %eax            #   1:     div    t8 <- 48861, 86606
    movl    $86606, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t9 <- t8, 77440
    movl    $77440, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t9 = 97716 goto 2_while_body
    movl    $97716, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   8:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t10
    jmp     l_f0_exit              
    movl    $100, %eax              #  10:     return 100
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <array 6 of <array 6 of <array 6 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]
    #   -3084(%ebp)  3048  [ $v5       <array 7 of <array 6 of <array 6 of <array 6 of <array 2 of <char>>>>>> %ebp-3084 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3072, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $768, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3084(%ebp)          # local array 'v5': 5 dimensions
    movl    $7,-3080(%ebp)          #   dimension 1: 7 elements
    movl    $6,-3076(%ebp)          #   dimension 2: 6 elements
    movl    $6,-3072(%ebp)          #   dimension 3: 6 elements
    movl    $6,-3068(%ebp)          #   dimension 4: 6 elements
    movl    $2,-3064(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $24428, %eax            #   0:     add    t8 <- 24428, 92887
    movl    $92887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     sub    t9 <- t8, 93970
    movl    $93970, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     assign v4 <- t9
    movl    %eax, 12(%ebp)         
    movl    $97, %eax               #   3:     if     97 = 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    call    dummyCHARfunc           #   6:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     param  0 <- t10
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   9:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1                  #  10:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    -3084(%ebp), %eax       #  13:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  3 <- t12
    pushl   %eax                   
    movl    $1, %eax                #  15:     param  2 <- 1
    pushl   %eax                   
    movl    $99, %eax               #  16:     param  1 <- 99
    pushl   %eax                   
    jmp     l_f1_9                  #  17:     goto   9
    movl    $1, %eax                #  18:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_10                 #  19:     goto   10
l_f1_9:
    movl    $0, %eax                #  21:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_10:
    movzbl  -25(%ebp), %eax         #  23:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  24:     call   t14 <- f0
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  25:     return t14
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $3072, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 5 of <array 6 of <array 10 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 10 of <array 8 of <array 8 of <array 2 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v6       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v7       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    movl    $0, %eax                #   3:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    call    dummyBOOLfunc           #   5:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $77807, %eax            #   6:     assign v7 <- 77807
    movl    %eax, -20(%ebp)        

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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 6 of <array 6 of <array 6 of <array 2 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t7       <char> %ebp-31 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $56751, %eax            #   0:     add    t0 <- 56751, 4947
    movl    $4947, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 76740
    movl    $76740, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $33059, %eax            #   2:     if     33059 < t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    movl    $1260, %eax             #  11:     assign v1 <- 1260
    movl    %eax, v1               
    movl    $100, %eax              #  12:     assign v2 <- 100
    movb    %al, v2                
    movl    $85222, %eax            #  13:     if     85222 <= 40648 goto 8
    movl    $40648, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8               
    jmp     l_test_9                #  14:     goto   9
l_test_8:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_10               #  17:     goto   10
l_test_9:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_10:
    movzbl  -22(%ebp), %eax         #  21:     assign v0 <- t3
    movb    %al, v0                
l_test_16_while_cond:
    jmp     l_test_15               #  23:     goto   15
    jmp     l_test_16_while_cond    #  24:     goto   16_while_cond
l_test_15:
l_test_19_while_cond:
    movl    $0, %eax                #  27:     if     0 = 0 goto 20_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
    leal    v3, %eax                #  32:     &()    t4 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     param  3 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  34:     param  2 <- 0
    pushl   %eax                   
    call    dummyCHARfunc           #  35:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  36:     param  1 <- t5
    pushl   %eax                   
    movl    $90241, %eax            #  37:     if     90241 # 63292 goto 23
    movl    $63292, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_23              
    jmp     l_test_24               #  38:     goto   24
l_test_23:
    movl    $1, %eax                #  40:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_25               #  41:     goto   25
l_test_24:
    movl    $0, %eax                #  43:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_test_25:
    movzbl  -30(%ebp), %eax         #  45:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  46:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -31(%ebp)         
    jmp     l_test_12               #  47:     goto   12
l_test_12:
l_test_28_while_cond:
    movl    $45690, %eax            #  50:     if     45690 <= 48946 goto 29_while_body
    movl    $48946, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_29_while_body   
    jmp     l_test_27               #  51:     goto   27
l_test_29_while_body:
    jmp     l_test_exit            
    jmp     l_test_28_while_cond    #  54:     goto   28_while_cond
l_test_27:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 7 of <array 6 of <array 6 of <array 6 of <array 2 of <char>>>>>>
    .long    5
    .long    7
    .long    6
    .long    6
    .long    6
    .long    2
    .skip 3024








    # end of global data section
    #-----------------------------------------

    .end
##################################################

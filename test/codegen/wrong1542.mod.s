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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 72 of <array 3 of <array 99 of <array 31 of <array 20 of <char>>>>>>> %ebp+16 ]

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
    movl    $73342, %eax            #   0:     assign v2 <- 73342
    movl    %eax, 12(%ebp)         
l_f0_2_while_cond:
    movl    $68098, %eax            #   2:     mul    t5 <- 68098, 89746
    movl    $89746, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $8042, %eax             #   3:     if     8042 < t5 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 26 of <array 25 of <array 49 of <array 98 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -21(%ebp)   1  [ $v5       <char> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $0, %eax                #   1:     if     0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   4:     assign v5 <- 97
    movb    %al, -21(%ebp)         
    movl    $73164, %eax            #   5:     return 73164
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   9:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_7                  #  11:     goto   7
l_f1_7:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   1:     assign v2 <- 0
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v1 <- t6
    movb    %al, 8(%ebp)           

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 53 of <array 26 of <array 25 of <array 49 of <array 98 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
l_test_1_while_cond:
l_test_4_while_cond:
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 5_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
    jmp     l_test_exit            
    movl    $16595, %eax            #  10:     assign v0 <- 16595
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $77889, %eax            #  12:     param  3 <- 77889
    pushl   %eax                   
    movl    $97, %eax               #  13:     if     97 <= 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  14:     goto   11
l_test_10:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  17:     goto   12
l_test_11:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_12:
    movzbl  -14(%ebp), %eax         #  21:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  1 <- t2
    pushl   %eax                   
    movl    $67736, %eax            #  24:     sub    t3 <- 67736, 14145
    movl    $14145, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  26:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
l_test_15_while_cond:
    jmp     l_test_14               #  28:     goto   14
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_21_while_cond:
    movl    $100, %eax              #  33:     if     100 # 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_22_while_body   
    jmp     l_test_20               #  34:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  36:     goto   21_while_cond
l_test_20:
    movl    $30089, %eax            #  38:     assign v0 <- 30089
    movl    %eax, v0               
l_test_26_while_cond:
    jmp     l_test_25               #  40:     goto   25
    jmp     l_test_26_while_cond    #  41:     goto   26_while_cond
l_test_25:
l_test_29_while_cond:
    movl    $19144, %eax            #  44:     if     19144 < 73647 goto 30_while_body
    movl    $73647, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_30_while_body   
    jmp     l_test_28               #  45:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  47:     goto   29_while_cond
l_test_28:
    movl    $98, %eax               #  49:     assign v2 <- 98
    movb    %al, v2                
    call    dummyProcedure          #  50:     call   dummyProcedure
    jmp     l_test_15_while_cond    #  51:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <array 53 of <array 26 of <array 25 of <array 49 of <array 98 of <int>>>>>>
    .long    5
    .long   53
    .long   26
    .long   25
    .long   49
    .long   98
    .skip 661715600
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

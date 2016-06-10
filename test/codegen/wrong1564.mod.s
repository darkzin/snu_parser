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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 34 of <array 7 of <array 44 of <array 71 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t2
    jmp     l_f0_exit              
    movl    $30192, %eax            #   9:     assign v2 <- 30192
    movl    %eax, -24(%ebp)        
l_f0_9_while_cond:
    movl    $16053, %eax            #  11:     if     16053 <= 72012 goto 10_while_body
    movl    $72012, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_while_body     
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_while_body:
    call    dummyINTfunc            #  14:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  15:     assign v3 <- 100
    movb    %al, -25(%ebp)         
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 2 of <array 1 of <array 4 of <array 71 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 81 of <array 60 of <array 33 of <array 25 of <array 21 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   3:     return t4
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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $92997, %eax            #   5:     if     92997 < 80147 goto 6_if_true
    movl    $80147, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    movl    $0, %eax                #  13:     if     0 # 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  14:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  17:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_exit              
l_f2_17_while_cond:
    movl    $46001, %eax            #  20:     mul    t4 <- 46001, 59798
    movl    $59798, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t5 <- t4, 84496
    movl    $84496, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t6 <- t5, 24839
    movl    $24839, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     if     t6 >= 86335 goto 18_while_body
    movl    $86335, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_while_body     
    jmp     l_f2_16                 #  24:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  26:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_9                  #  28:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $26914, %eax            #  31:     sub    t7 <- 26914, 78410
    movl    $78410, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $2447, %eax             #  32:     mul    t8 <- 2447, 26093
    movl    $26093, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t9 <- t7, t8
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     assign v0 <- t9
    movl    %eax, 8(%ebp)          

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 22 of <array 34 of <array 7 of <array 44 of <array 71 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    movl    $99, %eax               #   0:     if     99 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    leal    v0, %eax                #   3:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t0
    pushl   %eax                   
    movl    $0, %eax                #   5:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   6:     call   t1 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $71983, %eax            #   7:     if     71983 > 39090 goto 6_if_true
    movl    $39090, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $1, %eax                #  13:     assign v1 <- 1
    movb    %al, v1                
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
    jmp     l_test_exit            
    jmp     l_test_0                #  17:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_15_if_true       #  20:     goto   15_if_true
    jmp     l_test_16_if_false      #  21:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  23:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $36762, %eax            #  26:     if     36762 <= 72613 goto 21_if_true
    movl    $72613, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  27:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_exit            
    jmp     l_test_20               #  30:     goto   20
l_test_22_if_false:
l_test_20:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <array 22 of <array 34 of <array 7 of <array 44 of <array 71 of <int>>>>>>
    .long    5
    .long   22
    .long   34
    .long    7
    .long   44
    .long   71
    .skip 65429056
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

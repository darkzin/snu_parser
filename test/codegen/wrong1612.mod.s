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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 87 of <array 79 of <array 60 of <array 81 of <int>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $53805, %eax            #   1:     assign v1 <- 53805
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   2:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_6_while_cond:
    jmp     l_f0_5                  #   4:     goto   5
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    movl    $10279, %eax            #   8:     if     10279 >= 77025 goto 10_while_body
    movl    $77025, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_14_if_false        #  16:     goto   14_if_false
    movl    $11845, %eax            #  17:     return 11845
    jmp     l_f0_exit              
l_f0_18_while_cond:
    movl    $0, %eax                #  19:     if     0 = 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_19_while_body     
    jmp     l_f0_17                 #  20:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  22:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_12                 #  24:     goto   12
l_f0_14_if_false:
l_f0_12:
    call    dummyINTfunc            #  27:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $62292, %eax            #  28:     sub    t7 <- 62292, t6
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     return t7
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
l_f1_1_while_cond:
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
    movl    $5710, %eax             #   3:     if     5710 <= 31270 goto 7
    movl    $31270, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #   4:     goto   8
l_f1_7:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #   7:     goto   9
l_f1_8:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  11:     assign v1 <- t5
    movb    %al, -16(%ebp)         
    movl    $100, %eax              #  12:     if     100 # 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $97, %eax               #  18:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_18_if_false        #  19:     goto   18_if_false
    jmp     l_f1_16                 #  20:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $99, %eax               #  23:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  24:     goto   1_while_cond
l_f1_21_while_cond:
    movl    $100, %eax              #  26:     if     100 <= 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_22_while_body     
    jmp     l_f1_20                 #  27:     goto   20
l_f1_22_while_body:
    movl    $45684, %eax            #  29:     if     45684 >= 61165 goto 28
    movl    $61165, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_28                
    jmp     l_f1_29                 #  30:     goto   29
l_f1_28:
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_30                 #  33:     goto   30
l_f1_29:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_30:
    movzbl  -14(%ebp), %eax         #  37:     assign v1 <- t6
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  38:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_24                 #  39:     goto   24
l_f1_24:
    jmp     l_f1_21_while_cond      #  41:     goto   21_while_cond
l_f1_20:
l_f1_34_while_cond:
    jmp     l_f1_35_while_body      #  44:     goto   35_while_body
    jmp     l_f1_35_while_body      #  45:     goto   35_while_body
l_f1_35_while_body:
    jmp     l_f1_34_while_cond      #  47:     goto   34_while_cond

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t5
    movb    %al, -17(%ebp)         
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_2                  #   3:     goto   2
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t6 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_4                  #   9:     goto   4
l_f2_3:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_4:
    movzbl  -15(%ebp), %eax         #  13:     return t7
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_7                  #  15:     goto   7
    call    dummyBOOLfunc           #  16:     call   t8 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  17:     if     t8 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #  18:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  20:     goto   8_while_cond
l_f2_7:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 16 of <array 87 of <array 79 of <array 60 of <array 81 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $52676, %eax            #   0:     assign v0 <- 52676
    movl    %eax, v0               
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #   3:     call   t1 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   5:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #   6:     if     99 > 99 goto 3
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_3               
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_5                #  10:     goto   5
l_test_4:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_5:
    movzbl  -22(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  15:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  16:     assign v2 <- t4
    movb    %al, v2                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v1:                                 # <array 16 of <array 87 of <array 79 of <array 60 of <array 81 of <int>>>>>>
    .long    5
    .long   16
    .long   87
    .long   79
    .long   60
    .long   81
    .skip 2137777920
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

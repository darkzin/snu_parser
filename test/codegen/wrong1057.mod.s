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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $99, %eax               #   2:     if     99 = 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
l_f0_1:
    movl    $97, %eax               #   7:     if     97 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  11:     goto   9
    jmp     l_f0_10_while_cond      #  12:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 51 of <array 25 of <array 25 of <array 49 of <char>>>>>>> %ebp+12 ]
    #    -26(%ebp)   1  [ $v3       <bool> %ebp-26 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $62349, %eax            #   1:     sub    t5 <- 62349, 11386
    movl    $11386, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 85066
    movl    $85066, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t6
    movl    %eax, 8(%ebp)          
    movl    $22493, %eax            #   4:     if     22493 >= 50335 goto 3
    movl    $50335, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3                 
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_5                  #   8:     goto   5
l_f1_4:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_5:
    movzbl  -25(%ebp), %eax         #  12:     assign v3 <- t7
    movb    %al, -26(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $98, %eax               #   6:     return 98
    jmp     l_f2_exit              
    movl    $9876, %eax             #   7:     if     9876 < 51352 goto 9_if_true
    movl    $51352, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #  16:     if     99 > 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  17:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_18_if_false        #  19:     goto   18_if_false
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $98, %eax               #  23:     if     98 < 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  24:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  26:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_12                 #  29:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_27                 #  32:     goto   27
    jmp     l_f2_28                 #  33:     goto   28
l_f2_27:
    movl    $1, %eax                #  35:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_29                 #  36:     goto   29
l_f2_28:
    movl    $0, %eax                #  38:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_29:
    movzbl  -13(%ebp), %eax         #  40:     if     t4 = 1 goto 24_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  41:     goto   25_if_false
l_f2_24_if_true:
    movl    $99, %eax               #  43:     if     99 <= 98 goto 33_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_33_if_true        
    jmp     l_f2_34_if_false        #  44:     goto   34_if_false
l_f2_33_if_true:
    jmp     l_f2_32                 #  46:     goto   32
l_f2_34_if_false:
l_f2_32:
    jmp     l_f2_23                 #  49:     goto   23
l_f2_25_if_false:
l_f2_23:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $32725, %eax            #   8:     if     32725 <= 82021 goto 7
    movl    $82021, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_7               
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_9                #  12:     goto   9
l_test_8:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_9:
    movzbl  -16(%ebp), %eax         #  16:     assign v1 <- t3
    movb    %al, v1                
    movl    $99, %eax               #  17:     assign v0 <- 99
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

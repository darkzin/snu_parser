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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 20 of <array 96 of <array 71 of <array 16 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 67 of <array 80 of <array 31 of <array 47 of <array 100 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 45 of <array 73 of <array 83 of <array 55 of <array 19 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
l_f0_2_while_cond:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   3:     goto   5_while_cond
l_f0_8_while_cond:
    jmp     l_f0_7                  #   5:     goto   7
    jmp     l_f0_8_while_cond       #   6:     goto   8_while_cond
l_f0_7:
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #   9:     goto   11_while_cond
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  11:     goto   14_while_cond
l_f0_17_while_cond:
    jmp     l_f0_16                 #  13:     goto   16
    jmp     l_f0_17_while_cond      #  14:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_2_while_cond       #  16:     goto   2_while_cond
l_f0_20_while_cond:
    jmp     l_f0_21_while_body      #  18:     goto   21_while_body
l_f0_21_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_20_while_cond      #  21:     goto   20_while_cond

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 34 of <array 96 of <array 78 of <array 21 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     assign v3 <- 97
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 27 of <array 10 of <array 34 of <array 35 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 79 of <array 28 of <array 40 of <array 16 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 82 of <array 8 of <array 93 of <array 52 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f2_exit              
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $99, %eax               #   4:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_8_if_false         #   9:     goto   8_if_false
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_15_if_false        #  13:     goto   15_if_false
    jmp     l_f2_13                 #  14:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_6                  #  17:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]

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
    movl    $99, %eax               #   0:     if     99 > 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4               
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_0                #  15:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $36050, %eax            #  18:     if     36050 = 93061 goto 15_if_true
    movl    $93061, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_15_if_true:
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
    jmp     l_test_exit            
    jmp     l_test_14               #  24:     goto   14
l_test_16_if_false:
l_test_14:
    call    dummyCHARfunc           #  27:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $99, %eax               #  28:     if     99 = t3 goto 23_if_true
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_23_if_true      
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  31:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_exit            
l_test_28_while_cond:
    movl    $21795, %eax            #  36:     mul    t4 <- 21795, 11668
    movl    $11668, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     sub    t5 <- t4, 66108
    movl    $66108, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     add    t6 <- t5, 29351
    movl    $29351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     add    t7 <- t6, 97460
    movl    $97460, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  40:     if     t7 = 57492 goto 29_while_body
    movl    $57492, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_29_while_body   
    jmp     l_test_27               #  41:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  43:     goto   28_while_cond
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

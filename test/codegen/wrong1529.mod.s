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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 11 of <array 7 of <array 21 of <array 31 of <char>>>>>>> %ebp+12 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $7320, %eax             #   2:     if     7320 = t5 goto 2_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_13_while_cond:
    jmp     l_f0_12                 #  10:     goto   12
    jmp     l_f0_13_while_cond      #  11:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_5                  #  13:     goto   5
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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 64 of <array 89 of <array 8 of <array 99 of <array 4 of <char>>>>>>> %ebp+20 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $1, %eax                #   2:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #   6:     if     99 > 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
l_f1_6_if_true:
    movl    $98082, %eax            #   9:     if     98082 > 13091 goto 10
    movl    $13091, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_10                
    jmp     l_f1_11                 #  10:     goto   11
l_f1_10:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  17:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_5                  #  22:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 89 of <array 75 of <array 71 of <array 61 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $35837, %eax            #   0:     add    t5 <- 35837, 63657
    movl    $63657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t6 <- t5, 11354
    movl    $11354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t6 >= 50152 goto 1_if_true
    movl    $50152, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_5                  #   6:     goto   5
l_f2_5:
    jmp     l_f2_exit              
    jmp     l_f2_11_if_false        #   9:     goto   11_if_false
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  14:     goto   13_while_cond
    movl    $12870, %eax            #  15:     if     12870 <= 74976 goto 16_if_true
    movl    $74976, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  16:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  18:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_0                  #  21:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  25:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 64 of <array 89 of <array 8 of <array 99 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
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
    jmp     l_test_1                #   0:     goto   1
l_test_1:
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   3:     goto   3
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
    jmp     l_test_exit            
    jmp     l_test_15               #  11:     goto   15
l_test_15:
    movl    $100, %eax              #  13:     assign v1 <- 100
    movb    %al, v1                
l_test_20_while_cond:
    jmp     l_test_19               #  15:     goto   19
    jmp     l_test_20_while_cond    #  16:     goto   20_while_cond
l_test_19:
    jmp     l_test_6                #  18:     goto   6
l_test_8_if_false:
l_test_6:
    leal    v2, %eax                #  21:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  3 <- t1
    pushl   %eax                   
    movl    $47145, %eax            #  23:     param  2 <- 47145
    pushl   %eax                   
    movl    $51052, %eax            #  24:     if     51052 <= 79467 goto 23
    movl    $79467, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23              
    jmp     l_test_24               #  25:     goto   24
l_test_23:
    movl    $1, %eax                #  27:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_25               #  28:     goto   25
l_test_24:
    movl    $0, %eax                #  30:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_25:
    movzbl  -21(%ebp), %eax         #  32:     param  1 <- t2
    pushl   %eax                   
    call    dummyCHARfunc           #  33:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  34:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  35:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -23(%ebp)         

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 64 of <array 89 of <array 8 of <array 99 of <array 4 of <char>>>>>>
    .long    5
    .long   64
    .long   89
    .long    8
    .long   99
    .long    4
    .skip 18044928








    # end of global data section
    #-----------------------------------------

    .end
##################################################

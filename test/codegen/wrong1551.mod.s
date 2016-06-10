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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 52 of <array 23 of <array 94 of <array 80 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 30 of <array 96 of <array 82 of <array 74 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -23(%ebp)   1  [ $v3       <bool> %ebp-23 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    movl    $70875, %eax            #   1:     if     70875 > 46062 goto 1
    movl    $46062, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t5
    jmp     l_f0_exit              
    call    dummyINTfunc            #  10:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_15                 #  12:     goto   15
    movl    $0, %eax                #  13:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f0_15:
    movl    $0, %eax                #  15:     if     0 = t7 goto 9
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  16:     goto   10
l_f0_9:
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f0_11:
    movzbl  -22(%ebp), %eax         #  23:     assign v3 <- t8
    movb    %al, -23(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 30 of <array 96 of <array 82 of <array 74 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 52 of <array 23 of <array 94 of <array 80 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -80945328(%ebp)  80945304  [ $v2       <array 9 of <array 52 of <array 23 of <array 94 of <array 80 of <char>>>>>> %ebp-80945328 ]
    #   -98421192(%ebp)  17475864  [ $v3       <array 1 of <array 30 of <array 96 of <array 82 of <array 74 of <char>>>>>> %ebp-98421192 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $98421180, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24605295, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-80945328(%ebp)      # local array 'v2': 5 dimensions
    movl    $9,-80945324(%ebp)      #   dimension 1: 9 elements
    movl    $52,-80945320(%ebp)     #   dimension 2: 52 elements
    movl    $23,-80945316(%ebp)     #   dimension 3: 23 elements
    movl    $94,-80945312(%ebp)     #   dimension 4: 94 elements
    movl    $80,-80945308(%ebp)     #   dimension 5: 80 elements
    movl    $5,-98421192(%ebp)      # local array 'v3': 5 dimensions
    movl    $1,-98421188(%ebp)      #   dimension 1: 1 elements
    movl    $30,-98421184(%ebp)     #   dimension 2: 30 elements
    movl    $96,-98421180(%ebp)     #   dimension 3: 96 elements
    movl    $82,-98421176(%ebp)     #   dimension 4: 82 elements
    movl    $74,-98421172(%ebp)     #   dimension 5: 74 elements

    # function body
    movl    $99, %eax               #   0:     param  2 <- 99
    pushl   %eax                   
    leal    -98421192(%ebp), %eax   #   1:     &()    t5 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t5
    pushl   %eax                   
    leal    -80945328(%ebp), %eax   #   3:     &()    t6 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   5:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_f1_exit              
    movl    $64697, %eax            #   7:     assign v0 <- 64697
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #   8:     if     100 >= 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  11:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_2                  #  14:     goto   2
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $98421180, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 89 of <array 82 of <array 93 of <array 16 of <array 60 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 57 of <array 87 of <array 17 of <array 19 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t5
    movl    %eax, 16(%ebp)         
    movl    $99, %eax               #   2:     return 99
    jmp     l_f2_exit              
    movl    $94529, %eax            #   3:     if     94529 = 12297 goto 3_if_true
    movl    $12297, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
    movl    $97, %eax               #   6:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   7:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 57 of <array 87 of <array 17 of <array 19 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 89 of <array 82 of <array 93 of <array 16 of <array 60 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $19320, %eax            #   3:     if     19320 >= 14145 goto 3
    movl    $14145, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3               
    jmp     l_test_4                #   4:     goto   4
l_test_3:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_5:
    movzbl  -17(%ebp), %eax         #  11:     param  3 <- t1
    pushl   %eax                   
    movl    $18794, %eax            #  12:     param  2 <- 18794
    pushl   %eax                   
    leal    v2, %eax                #  13:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  17:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  18:     assign v0 <- t4
    movb    %al, v0                
    movl    $28589, %eax            #  19:     assign v3 <- 28589
    movl    %eax, v3               
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 89 of <array 82 of <array 93 of <array 16 of <array 60 of <int>>>>>>
    .long    5
    .long   89
    .long   82
    .long   93
    .long   16
    .long   60
    .skip -1688705536
v2:                                 # <array 10 of <array 57 of <array 87 of <array 17 of <array 19 of <char>>>>>>
    .long    5
    .long   10
    .long   57
    .long   87
    .long   17
    .long   19
    .skip 16017570
    .align   4
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

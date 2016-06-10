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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 28 of <array 5 of <array 87 of <array 93 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 # 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  10:     if     99 > 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  11:     goto   8_if_false
l_f0_7_if_true:
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_f0_6                  #  14:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    movl    $98, %eax               #   2:     if     98 > 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_4                 
    jmp     l_f1_5                  #   3:     goto   5
l_f1_4:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #  10:     assign v2 <- t1
    movb    %al, -22(%ebp)         
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     return t3
    jmp     l_f1_exit              
    movl    $86043, %eax            #  16:     assign v1 <- 86043
    movl    %eax, 8(%ebp)          

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     return t1
    jmp     l_f2_exit              
l_f2_14_while_cond:
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #   9:     goto   17_while_cond
    movl    $34046, %eax            #  10:     if     34046 > 62476 goto 20_if_true
    movl    $62476, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  11:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  13:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
    jmp     l_f2_10                 #  17:     goto   10
l_f2_10:
    call    dummyProcedure          #  19:     call   dummyProcedure
    movl    $52232, %eax            #  20:     assign v1 <- 52232
    movl    %eax, -20(%ebp)        
    jmp     l_f2_23                 #  21:     goto   23
l_f2_23:

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
    movl    $18870, %eax            #   0:     assign v0 <- 18870
    movl    %eax, v0               
    movl    $72141, %eax            #   1:     assign v0 <- 72141
    movl    %eax, v0               
    movl    $70282, %eax            #   2:     sub    t0 <- 70282, 38045
    movl    $38045, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

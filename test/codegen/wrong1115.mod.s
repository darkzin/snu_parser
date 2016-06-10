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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 60 of <array 42 of <array 20 of <array 82 of <array 21 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 73 of <array 35 of <array 20 of <array 60 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $0, %eax                #   8:     if     0 # t5 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_while_body:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_13_if_false        #  15:     goto   13_if_false
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  17:     if     100 >= 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  18:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_11                 #  23:     goto   11
l_f0_13_if_false:
l_f0_11:
l_f0_20_while_cond:
    jmp     l_f0_19                 #  27:     goto   19
    jmp     l_f0_19                 #  28:     goto   19
    jmp     l_f0_19                 #  29:     goto   19
    jmp     l_f0_19                 #  30:     goto   19
    movl    $99, %eax               #  31:     assign v3 <- 99
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  32:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_20_while_cond      #  33:     goto   20_while_cond
l_f0_19:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyINTfunc            #   1:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t5
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   3:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <bool> %ebp-25 ]

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
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    ReadInt                 #   4:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   5:     assign v0 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #   8:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   9:     if     t6 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  10:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #  12:     goto   6
l_f2_8_if_false:
l_f2_6:
l_f2_10_while_cond:
    call    dummyBOOLfunc           #  16:     call   t7 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  17:     if     t7 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_while_body:
    movl    $1, %eax                #  20:     if     1 # 0 goto 13
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_13                
    jmp     l_f2_14                 #  21:     goto   14
l_f2_13:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_15                 #  24:     goto   15
l_f2_14:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -19(%ebp)         
l_f2_15:
    movzbl  -19(%ebp), %eax         #  28:     assign v0 <- t8
    movb    %al, -25(%ebp)         
    movl    $0, %eax                #  29:     return 0
    jmp     l_f2_exit              
    call    dummyINTfunc            #  30:     call   t9 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_10_while_cond      #  31:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 87 of <array 73 of <array 35 of <array 20 of <array 60 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 60 of <array 42 of <array 20 of <array 82 of <array 21 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
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
    movl    $25323, %eax            #   0:     param  2 <- 25323
    pushl   %eax                   
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   5:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     assign v0 <- t2
    movb    %al, v0                
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    call    dummyINTfunc            #   8:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 60 of <array 42 of <array 20 of <array 82 of <array 21 of <int>>>>>>
    .long    5
    .long   60
    .long   42
    .long   20
    .long   82
    .long   21
    .skip 347155200
v2:                                 # <array 87 of <array 73 of <array 35 of <array 20 of <array 60 of <bool>>>>>>
    .long    5
    .long   87
    .long   73
    .long   35
    .long   20
    .long   60
    .skip 266742000








    # end of global data section
    #-----------------------------------------

    .end
##################################################

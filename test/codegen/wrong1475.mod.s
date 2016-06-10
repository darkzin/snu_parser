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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, -21(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_1                  #   2:     goto   1
    movl    $49027, %eax            #   3:     return 49027
    jmp     l_f0_exit              
    movl    $24933, %eax            #   4:     return 24933
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
l_f0_1:
    movl    $26614, %eax            #   7:     div    t8 <- 26614, 67611
    movl    $67611, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $86200, %eax            #   8:     add    t9 <- 86200, t8
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     return t9
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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     return t8
    jmp     l_f1_exit              
    call    dummyProcedure          #  10:     call   dummyProcedure
    movl    $0, %eax                #  11:     assign v1 <- 0
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 47 of <array 8 of <array 52 of <array 6 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]

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
    jmp     l_f2_1_while_cond       #   1:     goto   1_while_cond
    movl    $12889, %eax            #   2:     mul    t8 <- 12889, 40761
    movl    $40761, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v2 <- t8
    movl    %eax, -24(%ebp)        
    jmp     l_f2_7                  #   4:     goto   7
    jmp     l_f2_8                  #   5:     goto   8
l_f2_7:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f2_9:
    movzbl  -17(%ebp), %eax         #  12:     assign v3 <- t9
    movb    %al, -25(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 68 of <array 47 of <array 8 of <array 52 of <array 6 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t7       <bool> %ebp-31 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $7408, %eax             #   4:     assign v0 <- 7408
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $30340, %eax            #   8:     sub    t1 <- 30340, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v0 <- t1
    movl    %eax, v0               
    movl    $84956, %eax            #  10:     param  3 <- 84956
    pushl   %eax                   
    movl    $97, %eax               #  11:     if     97 >= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_7               
    jmp     l_test_8                #  12:     goto   8
l_test_7:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  15:     goto   9
l_test_8:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  19:     param  2 <- t2
    pushl   %eax                   
    movl    $98, %eax               #  20:     if     98 # 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_11              
    jmp     l_test_12               #  21:     goto   12
l_test_11:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_13               #  24:     goto   13
l_test_12:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_13:
    movzbl  -22(%ebp), %eax         #  28:     param  1 <- t3
    pushl   %eax                   
    jmp     l_test_16               #  29:     goto   16
    leal    v1, %eax                #  30:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  32:     call   t5 <- f2
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  33:     if     t5 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  34:     goto   16
l_test_15:
    movl    $1, %eax                #  36:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_17               #  37:     goto   17
l_test_16:
    movl    $0, %eax                #  39:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_test_17:
    movzbl  -30(%ebp), %eax         #  41:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  42:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -31(%ebp)         
    call    WriteLn                 #  43:     call   WriteLn
l_test_25_while_cond:
    movl    $10440, %eax            #  45:     if     10440 <= 11541 goto 26_while_body
    movl    $11541, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_26_while_body   
    jmp     l_test_24               #  46:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  48:     goto   25_while_cond
l_test_24:
    jmp     l_test_20               #  50:     goto   20
l_test_20:
l_test_32_while_cond:
    movl    $0, %eax                #  53:     if     0 = 0 goto 33_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_33_while_body   
    jmp     l_test_31               #  54:     goto   31
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  56:     goto   32_while_cond
l_test_31:
l_test_36_while_cond:
    movl    $97, %eax               #  59:     if     97 >= 99 goto 37_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_37_while_body   
    jmp     l_test_35               #  60:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  62:     goto   36_while_cond
l_test_35:
    jmp     l_test_28               #  64:     goto   28
l_test_28:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 68 of <array 47 of <array 8 of <array 52 of <array 6 of <char>>>>>>
    .long    5
    .long   68
    .long   47
    .long    8
    .long   52
    .long    6
    .skip 7977216








    # end of global data section
    #-----------------------------------------

    .end
##################################################

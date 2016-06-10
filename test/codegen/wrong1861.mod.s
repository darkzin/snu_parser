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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 42 of <array 38 of <array 43 of <array 48 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 41 of <array 7 of <array 54 of <array 99 of <array 27 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    movl    $90880, %eax            #   2:     add    t7 <- 90880, 4297
    movl    $4297, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   4:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 26 of <array 83 of <array 99 of <array 63 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 39 of <array 36 of <array 11 of <array 74 of <array 37 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 86 of <array 74 of <array 52 of <array 15 of <array 96 of <bool>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v5       <bool> %ebp-16 ]

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
    call    f1                      #   0:     call   t6 <- f1
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 >= 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v5 <- t7
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 41 of <array 7 of <array 54 of <array 99 of <array 27 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 35 of <array 42 of <array 38 of <array 43 of <array 48 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $89716, %eax            #   0:     if     89716 > 53521 goto 1
    movl    $53521, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #   9:     assign v1 <- 98
    movb    %al, v1                
l_test_7_while_cond:
    movl    $37173, %eax            #  11:     if     37173 >= 43186 goto 8_while_body
    movl    $43186, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    jmp     l_test_10               #  14:     goto   10
l_test_10:
l_test_14_while_cond:
    movl    $40828, %eax            #  17:     if     40828 <= 96206 goto 15_while_body
    movl    $96206, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_while_body   
    jmp     l_test_13               #  18:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  20:     goto   14_while_cond
l_test_13:
    movl    $100, %eax              #  22:     if     100 <= 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_18_if_true      
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  25:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_7_while_cond     #  28:     goto   7_while_cond
l_test_6:
    leal    v3, %eax                #  30:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  3 <- t1
    pushl   %eax                   
    movl    $1, %eax                #  32:     if     1 # 1 goto 22
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_22              
    jmp     l_test_23               #  33:     goto   23
l_test_22:
    movl    $1, %eax                #  35:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_24               #  36:     goto   24
l_test_23:
    movl    $0, %eax                #  38:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_24:
    movzbl  -21(%ebp), %eax         #  40:     param  2 <- t2
    pushl   %eax                   
    movl    $42780, %eax            #  41:     param  1 <- 42780
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  44:     call   t4 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    movl    $37628, %eax            #  45:     if     37628 >= 69963 goto 27_if_true
    movl    $69963, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_27_if_true      
    jmp     l_test_28_if_false      #  46:     goto   28_if_false
l_test_27_if_true:
    call    f1                      #  48:     call   t5 <- f1
    movb    %al, -33(%ebp)         
    jmp     l_test_26               #  49:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v2:                                 # <array 35 of <array 42 of <array 38 of <array 43 of <array 48 of <int>>>>>>
    .long    5
    .long   35
    .long   42
    .long   38
    .long   43
    .long   48
    .skip 461180160
v3:                                 # <array 41 of <array 7 of <array 54 of <array 99 of <array 27 of <int>>>>>>
    .long    5
    .long   41
    .long    7
    .long   54
    .long   99
    .long   27
    .skip 165704616








    # end of global data section
    #-----------------------------------------

    .end
##################################################

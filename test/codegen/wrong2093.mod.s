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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <char> %ebp-19 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 42 of <array 36 of <array 91 of <array 54 of <array 50 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 87 of <array 47 of <array 31 of <array 80 of <array 2 of <bool>>>>>>> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f0_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #   4:     call   t13 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     if     t12 # t13 goto 4_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 13 of <array 5 of <array 73 of <array 33 of <bool>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 25 of <array 67 of <array 64 of <array 20 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   2:     call   WriteLn

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <bool> %ebp-31 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 87 of <array 47 of <array 31 of <array 80 of <array 2 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 42 of <array 36 of <array 91 of <array 54 of <array 50 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]

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
    movl    $55244, %eax            #   0:     if     55244 <= 76171 goto 4
    movl    $76171, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_4               
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
l_test_9_while_cond:
    movl    $97, %eax               #  10:     if     97 >= 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    call    ReadInt                 #  15:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_0                #  16:     goto   0
l_test_0:
l_test_14_while_cond:
    jmp     l_test_13               #  19:     goto   13
    movl    $88937, %eax            #  20:     assign v1 <- 88937
    movl    %eax, v1               
l_test_18_while_cond:
    movl    $60736, %eax            #  22:     if     60736 >= 31746 goto 19_while_body
    movl    $31746, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  23:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  28:     goto   14_while_cond
l_test_13:
    call    dummyBOOLfunc           #  30:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    call    ReadInt                 #  32:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $52980, %eax            #  33:     assign v1 <- 52980
    movl    %eax, v1               
    call    dummyCHARfunc           #  34:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_22               #  35:     goto   22
l_test_22:
    call    dummyBOOLfunc           #  37:     call   t5 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_35               #  38:     goto   35
    jmp     l_test_36               #  39:     goto   36
l_test_35:
    movl    $1, %eax                #  41:     assign t6 <- 1
    movb    %al, -31(%ebp)         
    jmp     l_test_37               #  42:     goto   37
l_test_36:
    movl    $0, %eax                #  44:     assign t6 <- 0
    movb    %al, -31(%ebp)         
l_test_37:
    movzbl  -31(%ebp), %eax         #  46:     if     t6 = 0 goto 32_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_32_if_true      
    jmp     l_test_33_if_false      #  47:     goto   33_if_false
l_test_32_if_true:
    movl    $100, %eax              #  49:     if     100 < 98 goto 42_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_42_if_true      
    jmp     l_test_43_if_false      #  50:     goto   43_if_false
l_test_42_if_true:
    jmp     l_test_41               #  52:     goto   41
l_test_43_if_false:
l_test_41:
    jmp     l_test_31               #  55:     goto   31
l_test_33_if_false:
l_test_31:
    leal    v3, %eax                #  58:     &()    t7 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  59:     param  1 <- t7
    pushl   %eax                   
    leal    v2, %eax                #  60:     &()    t8 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  61:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  62:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -41(%ebp)         

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 42 of <array 36 of <array 91 of <array 54 of <array 50 of <int>>>>>>
    .long    5
    .long   42
    .long   36
    .long   91
    .long   54
    .long   50
    .skip 1485993600
v3:                                 # <array 87 of <array 47 of <array 31 of <array 80 of <array 2 of <bool>>>>>>
    .long    5
    .long   87
    .long   47
    .long   31
    .long   80
    .long    2
    .skip 20281440








    # end of global data section
    #-----------------------------------------

    .end
##################################################

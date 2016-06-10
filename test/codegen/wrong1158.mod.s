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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 60 of <array 64 of <array 88 of <array 14 of <int>>>>>>> %ebp+8 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_4                  #   1:     goto   4
l_f0_4:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   7:     return t6
    jmp     l_f0_exit              
l_f0_9_while_cond:
    jmp     l_f0_10_while_body      #   9:     goto   10_while_body
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    call    ReadInt                 #  14:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  10:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    movl    $100, %eax              #  11:     if     100 <= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9                 
    jmp     l_f1_10                 #  12:     goto   10
l_f1_9:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_11:
    movzbl  -13(%ebp), %eax         #  19:     assign v4 <- t6
    movb    %al, 20(%ebp)          

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
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 93 of <array 27 of <array 81 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 37 of <array 74 of <array 7 of <array 37 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 27 of <array 97 of <array 24 of <array 3 of <array 44 of <int>>>>>>> %ebp+20 ]
    #    -21(%ebp)   1  [ $v5       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v5 <- t6
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     assign v5 <- t7
    movb    %al, -21(%ebp)         
l_f2_3_while_cond:
    movl    $42529, %eax            #   5:     if     42529 >= 34120 goto 4_while_body
    movl    $34120, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   6:     goto   2
l_f2_4_while_body:
    jmp     l_f2_exit              
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_7                  #  12:     goto   7
l_f2_7:
    jmp     l_f2_3_while_cond       #  14:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 91 of <array 60 of <array 64 of <array 88 of <array 14 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $89125, %eax            #   1:     if     89125 > 59925 goto 2_if_true
    movl    $59925, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    movl    $100, %eax              #   9:     if     100 # 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  15:     goto   13_while_cond
    movl    $99, %eax               #  16:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #  20:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    leal    v1, %eax                #  22:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  24:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_17               #  25:     goto   17
l_test_17:
l_test_23_while_cond:
    leal    _str_1, %eax            #  28:     &()    t4 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  30:     call   WriteStr
    addl    $4, %esp               
    movl    $75815, %eax            #  31:     if     75815 < 98725 goto 27_if_true
    movl    $98725, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_27_if_true      
    jmp     l_test_28_if_false      #  32:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  34:     goto   26
l_test_28_if_false:
l_test_26:
    call    dummyINTfunc            #  37:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_test_23_while_cond    #  38:     goto   23_while_cond

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 91 of <array 60 of <array 64 of <array 88 of <array 14 of <int>>>>>>
    .long    5
    .long   91
    .long   60
    .long   64
    .long   88
    .long   14
    .skip 1722040320








    # end of global data section
    #-----------------------------------------

    .end
##################################################

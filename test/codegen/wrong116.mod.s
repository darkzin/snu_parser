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
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 6 of <array 2 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 3 of <array 8 of <array 1 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 10 of <array 1 of <array 2 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $68958, %eax            #   1:     assign v3 <- 68958
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t5
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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 3 of <array 2 of <array 6 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $66816, %eax            #   1:     if     66816 > 34438 goto 2_if_true
    movl    $34438, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t5 = 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f1_8:
    movzbl  -18(%ebp), %eax         #  13:     assign v1 <- t6
    movb    %al, -19(%ebp)         
    jmp     l_f1_1                  #  14:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_11_while_cond:
    movl    $44284, %eax            #  18:     if     44284 = 74737 goto 13
    movl    $74737, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_13                
    jmp     l_f1_10                 #  19:     goto   10
l_f1_13:
    jmp     l_f1_10                 #  21:     goto   10
    jmp     l_f1_11_while_cond      #  22:     goto   11_while_cond
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 10 of <array 2 of <array 4 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $73698, %eax            #   0:     sub    t4 <- 73698, 85990
    movl    $85990, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 48404
    movl    $48404, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 66396
    movl    $66396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 74646
    movl    $74646, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t8 <- t7, 78573
    movl    $78573, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $98623, %eax            #   5:     if     98623 >= t8 goto 1_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   6:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_4                  #  12:     goto   4
    movl    $98, %eax               #  13:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_5_while_cond       #  14:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_10                 #  16:     goto   10
    movl    $1, %eax                #  17:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_11                 #  18:     goto   11
l_f2_10:
    movl    $0, %eax                #  20:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f2_11:
    movzbl  -33(%ebp), %eax         #  22:     assign v0 <- t9
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]

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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, v0                
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_3_while_cond:
    movl    $98, %eax               #   3:     if     98 >= 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    movl    $73845, %eax            #   6:     assign v1 <- 73845
    movl    %eax, v1               
    movl    $99, %eax               #   7:     if     99 # 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $100, %eax              #  13:     if     100 < 99 goto 12
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12              
    jmp     l_test_13               #  14:     goto   13
l_test_12:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_14:
    movzbl  -17(%ebp), %eax         #  21:     assign v0 <- t1
    movb    %al, v0                
    call    dummyBOOLfunc           #  22:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
l_test_18_while_cond:
    movl    $40134, %eax            #  24:     if     40134 <= 70247 goto 19_while_body
    movl    $70247, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_19_while_body   
    jmp     l_test_17               #  25:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  27:     goto   18_while_cond
l_test_17:
    movl    $0, %eax                #  29:     if     0 # 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_22_if_true      
    jmp     l_test_23_if_false      #  30:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  32:     goto   21
l_test_23_if_false:
l_test_21:
    call    dummyCHARfunc           #  35:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $5536, %eax             #  36:     if     5536 < 73041 goto 27_if_true
    movl    $73041, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_27_if_true      
    jmp     l_test_28_if_false      #  37:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  39:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_3_while_cond     #  42:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

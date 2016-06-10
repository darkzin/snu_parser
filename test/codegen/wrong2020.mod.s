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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $100, %eax              #   3:     if     100 >= 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    call    dummyBOOLfunc           #   6:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 6 of <array 63 of <array 24 of <array 85 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 63 of <array 36 of <array 3 of <array 96 of <array 52 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
l_f2_1_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
l_f2_3:
    jmp     l_f2_0                  #   3:     goto   0
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    jmp     l_f2_9                  #   7:     goto   9
    jmp     l_f2_9                  #   8:     goto   9
l_f2_9:
    movl    $1, %eax                #  10:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movzbl  -13(%ebp), %eax         #  14:     if     t7 = 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
    movl    $100, %eax              #  19:     if     100 > 99 goto 17
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  20:     goto   18
l_f2_17:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_19                 #  23:     goto   19
l_f2_18:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_19:
    movzbl  -14(%ebp), %eax         #  27:     assign v3 <- t8
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $33443, %eax            #   3:     add    t2 <- 33443, 12275
    movl    $12275, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t3 <- t2, 81689
    movl    $81689, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     assign v1 <- t3
    movl    %eax, v1               
    jmp     l_test_5_if_false       #   6:     goto   5_if_false
    call    f0                      #   7:     call   f0
    jmp     l_test_exit            
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
    jmp     l_test_10               #  10:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_3                #  13:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $94341, %eax            #  16:     sub    t4 <- 94341, 45081
    movl    $45081, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $38000, %eax            #  17:     div    t5 <- 38000, 37245
    movl    $37245, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  18:     sub    t6 <- t4, t5
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     assign v1 <- t6
    movl    %eax, v1               
l_test_15_while_cond:
l_test_18_while_cond:
    movl    $100, %eax              #  22:     if     100 # 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_19_while_body   
    jmp     l_test_17               #  23:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
    jmp     l_test_15_while_cond    #  29:     goto   15_while_cond

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

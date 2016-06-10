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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 8 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 10 of <array 10 of <array 9 of <array 9 of <char>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_4                  #   1:     goto   4
l_f0_4:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    jmp     l_f0_9                  #   5:     goto   9
    jmp     l_f0_9                  #   6:     goto   9
    jmp     l_f0_9                  #   7:     goto   9
    jmp     l_f0_10                 #   8:     goto   10
l_f0_9:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  11:     goto   11
l_f0_10:
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  15:     assign v4 <- t2
    movb    %al, -14(%ebp)         
    jmp     l_f0_20                 #  16:     goto   20
    jmp     l_f0_20                 #  17:     goto   20
    jmp     l_f0_20                 #  18:     goto   20
    jmp     l_f0_18_if_true         #  19:     goto   18_if_true
l_f0_20:
l_f0_18_if_true:
    jmp     l_f0_17                 #  22:     goto   17
l_f0_17:

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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_4_while_body       #   3:     goto   4_while_body
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
    jmp     l_f1_4_while_body       #   5:     goto   4_while_body
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   7:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     return t2
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $95653, %eax            #   8:     sub    t3 <- 95653, 76544
    movl    $76544, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     if     t3 < 40825 goto 7_while_body
    movl    $40825, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  12:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_10                 #  14:     goto   10
    jmp     l_f2_10                 #  15:     goto   10
    call    dummyBOOLfunc           #  16:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  17:     if     t4 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  18:     goto   11
l_f2_10:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_12                 #  21:     goto   12
l_f2_11:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f2_12:
    movzbl  -22(%ebp), %eax         #  25:     return t5
    jmp     l_f2_exit              

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    movl    $99, %eax               #   1:     if     99 = 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
l_test_10_while_cond:
    movl    $98, %eax               #  13:     if     98 # 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    movl    $99, %eax               #  19:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #  20:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     if     t0 > 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16              
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $1, %eax                #  24:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_18               #  25:     goto   18
l_test_17:
    movl    $0, %eax                #  27:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_18:
    movzbl  -14(%ebp), %eax         #  29:     assign v1 <- t1
    movb    %al, v1                
l_test_21_while_cond:
    movl    $64959, %eax            #  31:     assign v2 <- 64959
    movl    %eax, v2               
    jmp     l_test_21_while_cond    #  32:     goto   21_while_cond

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

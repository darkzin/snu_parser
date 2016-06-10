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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t2
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t3
    jmp     l_f0_exit              
    movl    $97, %eax               #   4:     if     97 <= 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $85731, %eax            #   8:     assign v2 <- 85731
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2                  #  10:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 9 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $0, %eax                #   7:     if     0 # t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_while_body:
    movl    $6709, %eax             #  10:     return 6709
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_13                 #  15:     goto   13
l_f1_13:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
l_f1_17_while_cond:
    call    dummyBOOLfunc           #  20:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  21:     if     t3 = 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_25                 #  26:     goto   25
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_26                 #  28:     goto   26
l_f1_25:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_26:
    movl    $1, %eax                #  32:     if     1 # t4 goto 20
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_20                
    jmp     l_f1_21                 #  33:     goto   21
l_f1_20:
    movl    $1, %eax                #  35:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_22                 #  36:     goto   22
l_f1_21:
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f1_22:
    movzbl  -16(%ebp), %eax         #  40:     assign v1 <- t5
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]

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
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_3_while_cond:
    movl    $98, %eax               #   3:     if     98 >= 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v1 <- t0
    movb    %al, v1                
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   5:     if     1 = 0 goto 5_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_exit            
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_13_while_cond:
    jmp     l_test_12               #  12:     goto   12
    jmp     l_test_13_while_cond    #  13:     goto   13_while_cond
l_test_12:
    jmp     l_test_4                #  15:     goto   4
l_test_6_if_false:
l_test_4:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

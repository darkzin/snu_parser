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
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t7
    movb    %al, -16(%ebp)         
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
    movl    $97927, %eax            #   4:     assign v3 <- 97927
    movl    %eax, -20(%ebp)        
l_f0_6_while_cond:
    call    dummyCHARfunc           #   6:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t8 > t9 goto 7_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t8
    jmp     l_f1_exit              
    movl    $97, %eax               #   4:     if     97 # 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
    call    dummyBOOLfunc           #   7:     call   t9 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_2                  #   8:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 90 of <array 67 of <array 32 of <array 84 of <char>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    jmp     l_f2_0                  #   1:     goto   0
    movl    $0, %eax                #   2:     assign v2 <- 0
    movb    %al, -14(%ebp)         
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
    movl    $99, %eax               #   5:     if     99 <= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $100, %eax              #  11:     if     100 < 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  12:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  14:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
    call    f1                      #  19:     call   t7 <- f1
    movb    %al, -13(%ebp)         
l_f2_17_while_cond:
    jmp     l_f2_16                 #  21:     goto   16
    jmp     l_f2_17_while_cond      #  22:     goto   17_while_cond
l_f2_16:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]

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
    movl    $70904, %eax            #   0:     add    t0 <- 70904, 17417
    movl    $17417, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 91810
    movl    $91810, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 8874
    movl    $8874, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t2 < 88164 goto 1
    movl    $88164, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   4:     goto   2
l_test_1:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_3:
    movzbl  -25(%ebp), %eax         #  11:     assign v0 <- t3
    movb    %al, v0                
    call    f1                      #  12:     call   t4 <- f1
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  13:     assign v1 <- t4
    movb    %al, v1                
    call    ReadInt                 #  14:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        
l_test_8_while_cond:
    movl    $65941, %eax            #  16:     if     65941 > 44493 goto 9_while_body
    movl    $44493, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  17:     goto   7
l_test_9_while_body:
    call    dummyBOOLfunc           #  19:     call   t6 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movl    $99, %eax               #  20:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_8_while_cond     #  21:     goto   8_while_cond
l_test_7:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

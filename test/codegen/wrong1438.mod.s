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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  10:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_9_if_false         #  11:     goto   9_if_false
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_if_false:
l_f0_7:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    ReadInt                 #   3:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t2 >= 15021 goto 3_while_body
    movl    $15021, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
l_f1_7_while_cond:
    movl    $97, %eax               #   9:     if     97 > 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
    movl    $97, %eax               #  16:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  17:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  20:     assign v1 <- t4
    movb    %al, 12(%ebp)          

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 55 of <array 36 of <array 97 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   1:     if     98 = 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    movl    $26100, %eax            #   8:     assign v2 <- 26100
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t1
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    call    WriteLn                 #   9:     call   WriteLn
    movl    $97054, %eax            #  10:     if     97054 > 79953 goto 10_if_true
    movl    $79953, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  14:     goto   14_while_cond
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  16:     goto   17_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_9                #  19:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $98, %eax               #  22:     if     98 # 97 goto 22_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_22_if_true      
    jmp     l_test_23_if_false      #  23:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  25:     goto   21
l_test_23_if_false:
l_test_21:
    call    f0                      #  28:     call   t0 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  29:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

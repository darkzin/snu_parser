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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 99 of <array 66 of <array 91 of <array 76 of <bool>>>>>>> %ebp+8 ]
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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $71523, %eax            #   1:     mul    t2 <- 71523, 35763
    movl    $35763, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $98, %eax               #   4:     if     98 >= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $26990, %eax            #   8:     return 26990
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   9:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movl    $96118, %eax            #  10:     assign v2 <- 96118
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #  11:     if     98 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  12:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_3_while_cond       #  17:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f1_2_while_cond:
    movl    $1, %eax                #   2:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #   6:     if     t1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 58 of <array 91 of <array 55 of <array 69 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]
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
    movl    $99, %eax               #   0:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #   1:     return 98
    jmp     l_f2_exit              
    movl    $97, %eax               #   2:     return 97
    jmp     l_f2_exit              
    movl    $100, %eax              #   3:     assign v2 <- 100
    movb    %al, -15(%ebp)         
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    movl    $0, %eax                #   6:     if     0 # 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   7:     goto   9_if_false
l_f2_8_if_true:
    movl    $100, %eax              #   9:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  10:     goto   7
l_f2_9_if_false:
l_f2_7:
    call    dummyBOOLfunc           #  13:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     if     t1 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  15:     goto   14_if_false
l_f2_13_if_true:
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $27763, %eax            #  18:     assign v3 <- 27763
    movl    %eax, -20(%ebp)        
    jmp     l_f2_12                 #  19:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $100, %eax              #   1:     if     100 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $38398, %eax            #   9:     param  2 <- 38398
    pushl   %eax                   
    movl    $98, %eax               #  10:     param  1 <- 98
    pushl   %eax                   
    jmp     l_test_9                #  11:     goto   9
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_9                #  13:     goto   9
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  15:     goto   10
l_test_9:
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  19:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #  20:     call   f1
    addl    $12, %esp              
    jmp     l_test_exit            
l_test_18_while_cond:
    jmp     l_test_17               #  23:     goto   17
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:

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

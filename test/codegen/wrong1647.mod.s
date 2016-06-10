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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $4982, %eax             #   1:     add    t4 <- 4982, 68893
    movl    $68893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $11403, %eax            #   2:     if     11403 <= t4 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $99, %eax               #   6:     if     99 > 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $98, %eax               #  11:     assign v0 <- 98
    movb    %al, -22(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_10:
l_f0_14_while_cond:
    movl    $97, %eax               #  15:     if     97 >= 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_15_while_body     
    jmp     l_f0_13                 #  16:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  18:     goto   14_while_cond
l_f0_13:
    movl    $97, %eax               #  20:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  21:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  24:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  25:     return t5
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 7 of <array 79 of <array 1 of <array 15 of <char>>>>>>> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyProcedure          #   1:     call   dummyProcedure
l_f1_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t4 >= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
    movl    $1, %eax                #   7:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #   8:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure
    call    f0                      #   3:     call   t4 <- f0
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t4
    jmp     l_f2_exit              

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $30442, %eax            #   1:     if     30442 # 78248 goto 5
    movl    $78248, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_5               
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movl    $0, %eax                #   9:     if     0 = t1 goto 2_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #  10:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $54517, %eax            #  16:     add    t2 <- 54517, 88117
    movl    $88117, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     assign v0 <- t2
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

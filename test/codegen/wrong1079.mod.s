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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 40 of <array 34 of <array 20 of <array 47 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -13(%ebp)   1  [ $v2       <bool> %ebp-13 ]

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
    movl    $0, %eax                #   0:     assign v2 <- 0
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
l_f0_3_while_body:
    movl    $3447, %eax             #   4:     if     3447 <= 35869 goto 7_if_true
    movl    $35869, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   5:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    jmp     l_f0_10                 #  11:     goto   10
    jmp     l_f0_11_while_cond      #  12:     goto   11_while_cond
l_f0_10:
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  15:     goto   14_while_cond
    movl    $84684, %eax            #  16:     return 84684
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
    jmp     l_f0_19_if_false        #  18:     goto   19_if_false
    movl    $35061, %eax            #  19:     return 35061
    jmp     l_f0_exit              
    movl    $1, %eax                #  20:     if     1 # 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  21:     goto   23_if_false
l_f0_22_if_true:
    jmp     l_f0_21                 #  23:     goto   21
l_f0_23_if_false:
l_f0_21:
    jmp     l_f0_17                 #  26:     goto   17
l_f0_19_if_false:
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $99, %eax               #   0:     if     99 # 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    movl    $4644, %eax             #  12:     assign v1 <- 4644
    movl    %eax, -20(%ebp)        
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_f1_18_if_false        #  14:     goto   18_if_false
    jmp     l_f1_16                 #  15:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_9                  #  18:     goto   9
l_f1_9:
    jmp     l_f1_23                 #  20:     goto   23
    jmp     l_f1_23                 #  21:     goto   23
    movl    $99, %eax               #  22:     if     99 < 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_22                
    jmp     l_f1_23                 #  23:     goto   23
l_f1_22:
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_24                 #  26:     goto   24
l_f1_23:
    movl    $0, %eax                #  28:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_24:
    movzbl  -13(%ebp), %eax         #  30:     assign v0 <- t3
    movb    %al, 8(%ebp)           

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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 97 of <array 11 of <array 13 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 20 of <array 89 of <array 38 of <array 15 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 40 of <array 54 of <array 45 of <array 50 of <array 27 of <char>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $23133, %eax            #   0:     assign v4 <- 23133
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 > t3 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t5 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  13:     goto   8_if_false
l_f2_7_if_true:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  16:     goto   10_while_cond
    jmp     l_f2_6                  #  17:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $62052, %eax            #   1:     if     62052 >= 22041 goto 6
    movl    $22041, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6               
    jmp     l_test_7                #   2:     goto   7
l_test_6:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_8                #   5:     goto   8
l_test_7:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_8:
    movzbl  -14(%ebp), %eax         #   9:     if     t1 # 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2               
    jmp     l_test_3                #  10:     goto   3
l_test_2:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_4                #  13:     goto   4
l_test_3:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_4:
    movzbl  -15(%ebp), %eax         #  17:     assign v0 <- t2
    movb    %al, v0                
    call    dummyProcedure          #  18:     call   dummyProcedure

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

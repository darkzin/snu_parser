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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 46 of <array 34 of <array 73 of <array 90 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
l_f0_1_while_cond:
    movl    $5469, %eax             #   1:     if     5469 <= 66563 goto 2_while_body
    movl    $66563, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $61234, %eax            #   7:     if     61234 > 51573 goto 8_if_true
    movl    $51573, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    call    ReadInt                 #  10:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_14                 #  11:     goto   14
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_15                 #  13:     goto   15
l_f0_14:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f0_15:
    movzbl  -17(%ebp), %eax         #  17:     assign v2 <- t6
    movb    %al, -19(%ebp)         
    jmp     l_f0_7                  #  18:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_23                 #  21:     goto   23
    movl    $1, %eax                #  22:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_24                 #  23:     goto   24
l_f0_23:
    movl    $0, %eax                #  25:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f0_24:
    movzbl  -18(%ebp), %eax         #  27:     assign v2 <- t7
    movb    %al, -19(%ebp)         
    jmp     l_f0_18                 #  28:     goto   18
l_f0_18:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     if     t6 >= 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #  10:     return t7
    jmp     l_f1_exit              
l_f1_7_while_cond:
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  13:     if     t8 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_6                  #  14:     goto   6
l_f1_10:
    jmp     l_f1_6                  #  16:     goto   6
    jmp     l_f1_6                  #  17:     goto   6
    jmp     l_f1_7_while_cond       #  18:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 36 of <array 46 of <array 19 of <array 67 of <char>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 42 of <array 36 of <array 46 of <array 19 of <array 67 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 < 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    leal    v1, %eax                #  11:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  13:     call   f2
    addl    $4, %esp               
    movl    $98, %eax               #  14:     if     98 > 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8               
    jmp     l_test_9                #  15:     goto   9
l_test_8:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_10               #  18:     goto   10
l_test_9:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_10:
    movzbl  -21(%ebp), %eax         #  22:     assign v0 <- t3
    movb    %al, v0                
    call    dummyINTfunc            #  23:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <array 42 of <array 36 of <array 46 of <array 19 of <array 67 of <char>>>>>>
    .long    5
    .long   42
    .long   36
    .long   46
    .long   19
    .long   67
    .skip 88539696








    # end of global data section
    #-----------------------------------------

    .end
##################################################

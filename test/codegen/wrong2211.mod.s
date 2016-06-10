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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 86 of <array 75 of <array 25 of <array 11 of <bool>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_6_if_false         #   1:     goto   6_if_false
    jmp     l_f0_4                  #   2:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_8_while_cond:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t5 <= t6 goto 9_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  12:     goto   8_while_cond
l_f0_7:
    movl    $29173, %eax            #  14:     assign v1 <- 29173
    movl    %eax, 12(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 69144
    movl    $69144, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t6
    jmp     l_f1_exit              
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, -21(%ebp)         
    movl    $30705, %eax            #   4:     assign v1 <- 30705
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 97 of <array 86 of <array 75 of <array 25 of <array 11 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 81 of <array 47 of <array 30 of <array 88 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -172053796(%ebp)  172053774  [ $v3       <array 97 of <array 86 of <array 75 of <array 25 of <array 11 of <bool>>>>>> %ebp-172053796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $172053784, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $43013446, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-172053796(%ebp)     # local array 'v3': 5 dimensions
    movl    $97,-172053792(%ebp)    #   dimension 1: 97 elements
    movl    $86,-172053788(%ebp)    #   dimension 2: 86 elements
    movl    $75,-172053784(%ebp)    #   dimension 3: 75 elements
    movl    $25,-172053780(%ebp)    #   dimension 4: 25 elements
    movl    $11,-172053776(%ebp)    #   dimension 5: 11 elements

    # function body
    leal    -172053796(%ebp), %eax  #   0:     &()    t5 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t5
    pushl   %eax                   
    movl    $11988, %eax            #   2:     param  1 <- 11988
    pushl   %eax                   
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   5:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   6:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #   8:     if     99 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   9:     goto   3_if_false
l_f2_2_if_true:
    movl    $98, %eax               #  11:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  12:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyBOOLfunc           #  15:     call   t8 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         

l_f2_exit:
    # epilogue
    addl    $172053784, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 94 of <array 81 of <array 47 of <array 30 of <array 88 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 94 of <array 81 of <array 47 of <array 30 of <array 88 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    movl    $100, %eax              #   2:     param  1 <- 100
    pushl   %eax                   
    leal    v0, %eax                #   3:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   5:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   6:     param  2 <- 98
    pushl   %eax                   
    movl    $99, %eax               #   7:     param  1 <- 99
    pushl   %eax                   
    leal    v0, %eax                #   8:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  10:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movl    $91307, %eax            #  11:     if     91307 <= 33298 goto 6_if_true
    movl    $33298, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #  12:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  14:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    movl    $100, %eax              #  18:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  19:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_1                #  20:     goto   1
l_test_1:
l_test_12_while_cond:
    jmp     l_test_13_while_body    #  23:     goto   13_while_body
l_test_13_while_body:
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  26:     goto   12_while_cond

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 94 of <array 81 of <array 47 of <array 30 of <array 88 of <bool>>>>>>
    .long    5
    .long   94
    .long   81
    .long   47
    .long   30
    .long   88
    .skip 944745120








    # end of global data section
    #-----------------------------------------

    .end
##################################################

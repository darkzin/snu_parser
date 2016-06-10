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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
l_f0_2_while_body:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   4:     goto   6_while_cond
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
    jmp     l_f0_10                 #   6:     goto   10
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #   8:     goto   11
l_f0_10:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  12:     return t5
    jmp     l_f0_exit              
    movl    $1, %eax                #  13:     if     1 = 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  14:     goto   15_if_false
l_f0_14_if_true:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  17:     goto   17
    jmp     l_f0_18_while_cond      #  18:     goto   18_while_cond
l_f0_17:
    call    dummyCHARfunc           #  20:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  21:     assign v1 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f0_13                 #  22:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    movl    $1, %eax                #   0:     assign v1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 8 of <array 9 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 5 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 1 of <array 1 of <array 3 of <array 6 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $13406, %eax            #   2:     param  0 <- 13406
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    movl    $71526, %eax            #   1:     param  0 <- 71526
    pushl   %eax                   
    call    f1                      #   2:     call   f1
    addl    $4, %esp               
l_test_3_while_cond:
    movl    $29956, %eax            #   4:     add    t1 <- 29956, 21648
    movl    $21648, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t2 <- t1, 87015
    movl    $87015, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t3 <- t2, 35783
    movl    $35783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   8:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   9:     if     t4 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #  10:     goto   2
l_test_4_while_body:
    jmp     l_test_7_if_false       #  12:     goto   7_if_false
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $99, %eax               #  16:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_3_while_cond     #  17:     goto   3_while_cond
l_test_2:
    jmp     l_test_11_if_false      #  19:     goto   11_if_false
    movl    $46116, %eax            #  20:     param  0 <- 46116
    pushl   %eax                   
    call    WriteInt                #  21:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_9                #  22:     goto   9
l_test_11_if_false:
l_test_9:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $99, %eax               #   0:     if     99 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  12:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  14:     return t4
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <char> %ebp-17 ]

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
    movl    $99, %eax               #   0:     if     99 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $55075, %eax            #   3:     if     55075 > 6969 goto 5_if_true
    movl    $6969, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $100, %eax              #   9:     assign v0 <- 100
    movb    %al, -17(%ebp)         
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
    jmp     l_f1_9                  #  11:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $88455, %eax            #  14:     if     88455 >= 94662 goto 13_if_true
    movl    $94662, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  15:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $98, %eax               #  20:     assign v0 <- 98
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  21:     if     99 >= 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  22:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_0                  #  27:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  30:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     return t2
    jmp     l_f1_exit              
    movl    $100, %eax              #  32:     assign v0 <- 100
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 9 of <array 2 of <array 10 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $100, %eax              #   0:     assign v2 <- 100
    movb    %al, 16(%ebp)          
    jmp     l_f2_exit              
l_f2_3_while_cond:
l_f2_6_while_cond:
    movl    $80561, %eax            #   4:     if     80561 = 67831 goto 7_while_body
    movl    $67831, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    movl    $25156, %eax            #   9:     param  0 <- 25156
    pushl   %eax                   
    call    f0                      #  10:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_while_cond       #  11:     goto   3_while_cond

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
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   5:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $90303, %eax            #   8:     param  0 <- 90303
    pushl   %eax                   
    call    f0                      #   9:     call   t1 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 63 of <array 93 of <array 100 of <array 71 of <array 93 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 72 of <array 88 of <array 23 of <array 62 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 99 of <array 80 of <array 41 of <array 21 of <array 11 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t1
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 93 of <array 84 of <array 34 of <array 55 of <array 20 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -17(%ebp)   1  [ $v4       <bool> %ebp-17 ]

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
    movl    $47126, %eax            #   0:     if     47126 < 64936 goto 1_if_true
    movl    $64936, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
    movl    $0, %eax                #   5:     if     0 = 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  13:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $12540, %eax            #  17:     if     12540 >= 8469 goto 13
    movl    $8469, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_13                
    jmp     l_f1_14                 #  18:     goto   14
l_f1_13:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_15                 #  21:     goto   15
l_f1_14:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_15:
    movzbl  -14(%ebp), %eax         #  25:     return t2
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  26:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  27:     if     t3 >= 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_19                
    jmp     l_f1_20                 #  28:     goto   20
l_f1_19:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_21                 #  31:     goto   21
l_f1_20:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f1_21:
    movzbl  -16(%ebp), %eax         #  35:     assign v4 <- t4
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <bool> %ebp-18 ]

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
l_f2_1_while_cond:
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
    movl    $97, %eax               #   3:     if     97 < 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_9                  #   9:     goto   9
    jmp     l_f2_9                  #  10:     goto   9
    jmp     l_f2_9                  #  11:     goto   9
l_f2_9:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_11:
    movzbl  -17(%ebp), %eax         #  17:     assign v0 <- t2
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $59832, %eax            #   7:     div    t0 <- 59832, 36314
    movl    $36314, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $37868, %eax            #   8:     if     37868 < t0 goto 12_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_12_while_body   
    jmp     l_test_10               #   9:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
l_test_10:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################

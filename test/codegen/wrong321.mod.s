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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $99, %eax               #   3:     if     99 # 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #   4:     goto   9
l_f0_8:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #   7:     goto   10
l_f0_9:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    movl    $97, %eax               #  12:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_15_while_cond:
    movl    $80266, %eax            #  16:     if     80266 > 23679 goto 18_if_true
    movl    $23679, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  17:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  19:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $97, %eax               #  22:     return 97
    jmp     l_f0_exit              
    movl    $97, %eax               #  23:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_15_while_cond      #  24:     goto   15_while_cond

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 9 of <array 5 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_3:
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_6_while_cond:
    movl    $99, %eax               #   7:     if     99 > 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_while_body:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  11:     goto   9
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_12                 #  14:     goto   12
l_f1_12:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f1_exit              
    movl    $11757, %eax            #  17:     param  1 <- 11757
    pushl   %eax                   
    movl    $0, %eax                #  18:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  19:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_f1_6_while_cond       #  20:     goto   6_while_cond
l_f1_5:
    movl    $25829, %eax            #  22:     param  1 <- 25829
    pushl   %eax                   
    jmp     l_f1_22                 #  23:     goto   22
    jmp     l_f1_22                 #  24:     goto   22
    jmp     l_f1_22                 #  25:     goto   22
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_23                 #  27:     goto   23
l_f1_22:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_23:
    movzbl  -14(%ebp), %eax         #  31:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  32:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  33:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #  34:     assign v1 <- 100
    movb    %al, 12(%ebp)          
    movl    $100, %eax              #  35:     return 100
    jmp     l_f1_exit              
    movl    $99, %eax               #  36:     if     99 <= 100 goto 31_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_31_if_true        
    jmp     l_f1_32_if_false        #  37:     goto   32_if_false
l_f1_31_if_true:
    jmp     l_f1_30                 #  39:     goto   30
l_f1_32_if_false:
l_f1_30:
    movl    $100, %eax              #  42:     return 100
    jmp     l_f1_exit              
    movl    $97, %eax               #  43:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_17                 #  44:     goto   17
l_f1_17:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    jmp     l_f2_5_if_false         #   1:     goto   5_if_false
    movl    $23792, %eax            #   2:     add    t2 <- 23792, 6362
    movl    $6362, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_3                  #   5:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    jmp     l_f2_exit              
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
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
l_test_7_while_cond:
    jmp     l_test_6                #   3:     goto   6
    jmp     l_test_7_while_cond     #   4:     goto   7_while_cond
l_test_6:
    call    dummyProcedure          #   6:     call   dummyProcedure
    jmp     l_test_3                #   7:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  13:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_12_while_cond:
    movl    $0, %eax                #  15:     if     0 = 0 goto 13_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
l_test_11:
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99215, %eax            #  22:     assign v0 <- 99215
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

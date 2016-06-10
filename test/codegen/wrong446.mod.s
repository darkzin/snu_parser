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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 4 of <array 10 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 1 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movzbl  -14(%ebp), %eax         #   2:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_f0_3_while_cond:
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #   6:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 3 of <array 3 of <array 1 of <array 5 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_3                  #   1:     goto   3
l_f1_3:
    movl    $34691, %eax            #   3:     if     34691 > 71119 goto 7
    movl    $71119, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #   4:     goto   8
l_f1_7:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #   7:     goto   9
l_f1_8:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              
    movl    $98, %eax               #  12:     if     98 > 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12                
    jmp     l_f1_13                 #  13:     goto   13
l_f1_12:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  16:     goto   14
l_f1_13:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_14:
    movzbl  -14(%ebp), %eax         #  20:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  21:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #  24:     if     97 <= 99 goto 17
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_17                
    jmp     l_f1_18                 #  25:     goto   18
l_f1_17:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_19                 #  28:     goto   19
l_f1_18:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_19:
    movzbl  -15(%ebp), %eax         #  32:     assign v2 <- t7
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #  33:     if     99 = 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  34:     goto   23_if_false
l_f1_22_if_true:
l_f1_26_while_cond:
    movl    $90134, %eax            #  37:     if     90134 > 1973 goto 27_while_body
    movl    $1973, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_27_while_body     
    jmp     l_f1_25                 #  38:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  40:     goto   26_while_cond
l_f1_25:
    jmp     l_f1_31                 #  42:     goto   31
    movl    $1, %eax                #  43:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_32                 #  44:     goto   32
l_f1_31:
    movl    $0, %eax                #  46:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f1_32:
    movzbl  -16(%ebp), %eax         #  48:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  49:     goto   21
l_f1_23_if_false:
l_f1_21:

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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    movl    $18329, %eax            #   1:     if     18329 < 13481 goto 2_while_body
    movl    $13481, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   5:     goto   4
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #  10:     assign v3 <- 99
    movb    %al, -13(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_10_while_body      #  12:     goto   10_while_body
    jmp     l_f2_10_while_body      #  13:     goto   10_while_body
    jmp     l_f2_10_while_body      #  14:     goto   10_while_body
    jmp     l_f2_10_while_body      #  15:     goto   10_while_body
    jmp     l_f2_8                  #  16:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  18:     goto   9_while_cond
l_f2_8:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 >= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $59584, %eax            #  11:     sub    t2 <- 59584, 32088
    movl    $32088, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $88177, %eax            #  12:     if     88177 # t2 goto 8
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #  13:     goto   9
l_test_8:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_10               #  16:     goto   10
l_test_9:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_10:
    movzbl  -21(%ebp), %eax         #  20:     assign v0 <- t3
    movb    %al, v0                
l_test_13_while_cond:
    jmp     l_test_12               #  22:     goto   12
    call    WriteLn                 #  23:     call   WriteLn
    jmp     l_test_13_while_cond    #  24:     goto   13_while_cond
l_test_12:
    call    dummyCHARfunc           #  26:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

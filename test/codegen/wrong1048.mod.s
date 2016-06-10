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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 55 of <array 21 of <array 48 of <array 70 of <array 50 of <bool>>>>>>> %ebp+20 ]

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
    movl    $87224, %eax            #   0:     mul    t3 <- 87224, 61241
    movl    $61241, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 62669
    movl    $62669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f0_exit              
    movl    $56639, %eax            #   3:     assign v1 <- 56639
    movl    %eax, 12(%ebp)         
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 55 of <array 21 of <array 48 of <array 70 of <array 50 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 82 of <array 3 of <array 60 of <array 99 of <char>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v2       <char> %ebp-30 ]
    #   -194040056(%ebp)  194040024  [ $v3       <array 55 of <array 21 of <array 48 of <array 70 of <array 50 of <bool>>>>>> %ebp-194040056 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $194040044, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $48510011, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-194040056(%ebp)     # local array 'v3': 5 dimensions
    movl    $55,-194040052(%ebp)    #   dimension 1: 55 elements
    movl    $21,-194040048(%ebp)    #   dimension 2: 21 elements
    movl    $48,-194040044(%ebp)    #   dimension 3: 48 elements
    movl    $70,-194040040(%ebp)    #   dimension 4: 70 elements
    movl    $50,-194040036(%ebp)    #   dimension 5: 50 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
    movl    $100, %eax              #   2:     if     100 < 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
    movl    $97, %eax               #   7:     return 97
    jmp     l_f1_exit              
    movl    $98, %eax               #   8:     return 98
    jmp     l_f1_exit              
    movl    $0, %eax                #   9:     assign v1 <- 0
    movb    %al, -29(%ebp)         
    movl    $63666, %eax            #  10:     if     63666 >= 27343 goto 12_if_true
    movl    $27343, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  11:     goto   13_if_false
l_f1_12_if_true:
    movl    $99, %eax               #  13:     assign v2 <- 99
    movb    %al, -30(%ebp)         
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_1                  #  17:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $97, %eax               #  20:     if     97 <= 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  21:     goto   18_if_false
l_f1_17_if_true:
    movl    $1, %eax                #  23:     assign v1 <- 1
    movb    %al, -29(%ebp)         
l_f1_22_while_cond:
    movl    $98, %eax               #  25:     if     98 > 97 goto 23_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_23_while_body     
    jmp     l_f1_21                 #  26:     goto   21
l_f1_23_while_body:
    movl    $1, %eax                #  28:     assign v1 <- 1
    movb    %al, -29(%ebp)         
    leal    -194040056(%ebp), %eax  #  29:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  3 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  31:     if     99 > 99 goto 27
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_27                
    jmp     l_f1_28                 #  32:     goto   28
l_f1_27:
    movl    $1, %eax                #  34:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_29                 #  35:     goto   29
l_f1_28:
    movl    $0, %eax                #  37:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_29:
    movzbl  -21(%ebp), %eax         #  39:     param  2 <- t5
    pushl   %eax                   
    movl    $80106, %eax            #  40:     param  1 <- 80106
    pushl   %eax                   
    movl    $41708, %eax            #  41:     param  0 <- 41708
    pushl   %eax                   
    call    f0                      #  42:     call   t6 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #  43:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_22_while_cond      #  44:     goto   22_while_cond
l_f1_21:
    jmp     l_f1_16                 #  46:     goto   16
l_f1_18_if_false:
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $194040044, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 55 of <array 76 of <array 21 of <array 86 of <int>>>>>>> %ebp+16 ]
    #    -48(%ebp)   4  [ $v3       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $11757, %eax            #   0:     mul    t3 <- 11757, 13027
    movl    $13027, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t4 <- t3, 19334
    movl    $19334, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     div    t5 <- t4, 78002
    movl    $78002, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t6 <- t5, 97394
    movl    $97394, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     mul    t7 <- t6, 77643
    movl    $77643, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     div    t8 <- t7, 14232
    movl    $14232, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     add    t9 <- t8, 33888
    movl    $33888, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     assign v3 <- t9
    movl    %eax, -48(%ebp)        
    call    dummyCHARfunc           #   8:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     param  0 <- t10
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #  11:     assign v0 <- 100
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $12738, %eax            #   1:     if     12738 < 75524 goto 2_if_true
    movl    $75524, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $97, %eax               #   4:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
    jmp     l_test_6                #   7:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyINTfunc            #  18:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    call    dummyINTfunc            #  20:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #  21:     assign v0 <- 99
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

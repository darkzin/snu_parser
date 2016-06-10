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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movl    $97989, %eax            #   0:     assign v0 <- 97989
    movl    %eax, -20(%ebp)        
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_2                  #   2:     goto   2
l_f0_5:
l_f0_2:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   9:     return t0
    jmp     l_f0_exit              
l_f0_9_while_cond:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     if     t1 > t2 goto 10_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  14:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 67 of <array 44 of <array 23 of <array 40 of <array 97 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 80 of <array 6 of <array 4 of <array 76 of <char>>>>>>> %ebp+12 ]
    #    -27(%ebp)   1  [ $v2       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $v3       <char> %ebp-28 ]

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
    movl    $45952, %eax            #   0:     mul    t0 <- 45952, 94852
    movl    $94852, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 95024
    movl    $95024, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 14164
    movl    $14164, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t2
    jmp     l_f1_exit              
    call    f0                      #   4:     call   t3 <- f0
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     if     t3 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_3                  #   6:     goto   3
l_f1_6:
    jmp     l_f1_3                  #   8:     goto   3
    jmp     l_f1_3                  #   9:     goto   3
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_4                  #  11:     goto   4
l_f1_3:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_f1_4:
    movzbl  -26(%ebp), %eax         #  15:     assign v2 <- t4
    movb    %al, -27(%ebp)         
    movl    $100, %eax              #  16:     assign v3 <- 100
    movb    %al, -28(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 97 of <array 80 of <array 6 of <array 4 of <array 76 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 67 of <array 44 of <array 23 of <array 40 of <array 97 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 66 of <array 67 of <array 51 of <array 98 of <bool>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #   -1052318136(%ebp)  1052318104  [ $v2       <array 67 of <array 44 of <array 23 of <array 40 of <array 97 of <int>>>>>> %ebp-1052318136 ]
    #   -1066472400(%ebp)  14154264  [ $v3       <array 97 of <array 80 of <array 6 of <array 4 of <array 76 of <char>>>>>> %ebp-1066472400 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1066472388, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $266618097, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1052318136(%ebp)    # local array 'v2': 5 dimensions
    movl    $67,-1052318132(%ebp)   #   dimension 1: 67 elements
    movl    $44,-1052318128(%ebp)   #   dimension 2: 44 elements
    movl    $23,-1052318124(%ebp)   #   dimension 3: 23 elements
    movl    $40,-1052318120(%ebp)   #   dimension 4: 40 elements
    movl    $97,-1052318116(%ebp)   #   dimension 5: 97 elements
    movl    $5,-1066472400(%ebp)    # local array 'v3': 5 dimensions
    movl    $97,-1066472396(%ebp)   #   dimension 1: 97 elements
    movl    $80,-1066472392(%ebp)   #   dimension 2: 80 elements
    movl    $6,-1066472388(%ebp)    #   dimension 3: 6 elements
    movl    $4,-1066472384(%ebp)    #   dimension 4: 4 elements
    movl    $76,-1066472380(%ebp)   #   dimension 5: 76 elements

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_7                  #   7:     goto   7
l_f2_7:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    leal    -1066472400(%ebp), %eax #  11:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  1 <- t0
    pushl   %eax                   
    leal    -1052318136(%ebp), %eax #  13:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  15:     call   t2 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $32849, %eax            #  16:     div    t3 <- 32849, t2
    movl    -24(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     assign v1 <- t3
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $1066472388, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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

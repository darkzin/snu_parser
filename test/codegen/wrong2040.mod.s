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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 14 of <array 44 of <array 90 of <array 38 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_1                  #   2:     goto   1
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t3
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #  12:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
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
    movl    $45187, %eax            #   0:     assign v0 <- 45187
    movl    %eax, -20(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
l_f1_4:
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    call    ReadInt                 #   9:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 66 of <array 14 of <array 44 of <array 90 of <array 38 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 66 of <array 14 of <array 44 of <array 90 of <array 38 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <char> %ebp-27 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 78 of <array 87 of <array 59 of <array 63 of <int>>>>>>> %ebp+8 ]
    #   -556174132(%ebp)  556174104  [ $v1       <array 66 of <array 14 of <array 44 of <array 90 of <array 38 of <int>>>>>> %ebp-556174132 ]
    #   -556174133(%ebp)   1  [ $v2       <char> %ebp-556174133 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $556174124, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $139043531, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-556174132(%ebp)     # local array 'v1': 5 dimensions
    movl    $66,-556174128(%ebp)    #   dimension 1: 66 elements
    movl    $14,-556174124(%ebp)    #   dimension 2: 14 elements
    movl    $44,-556174120(%ebp)    #   dimension 3: 44 elements
    movl    $90,-556174116(%ebp)    #   dimension 4: 90 elements
    movl    $38,-556174112(%ebp)    #   dimension 5: 38 elements

    # function body
    leal    -556174132(%ebp), %eax  #   0:     &()    t3 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t3
    pushl   %eax                   
    call    f1                      #   2:     call   t4 <- f1
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     param  1 <- t4
    pushl   %eax                   
    leal    -556174132(%ebp), %eax  #   4:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  2 <- t5
    pushl   %eax                   
    movl    $81018, %eax            #   6:     if     81018 < 39903 goto 1
    movl    $39903, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   7:     goto   2
l_f2_1:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  14:     param  1 <- t6
    pushl   %eax                   
    movl    $100, %eax              #  15:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  16:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  17:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  18:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -27(%ebp)         
l_f2_9_while_cond:
    movl    $23715, %eax            #  20:     if     23715 >= 88063 goto 10_while_body
    movl    $88063, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_while_body     
    jmp     l_f2_8                  #  21:     goto   8
l_f2_10_while_body:
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  24:     goto   13_while_cond
    jmp     l_f2_9_while_cond       #  25:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_5                  #  27:     goto   5
l_f2_5:
    movl    $98, %eax               #  29:     assign v2 <- 98
    movb    %al, -556174133(%ebp)  

l_f2_exit:
    # epilogue
    addl    $556174124, %esp        # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_exit            
    movl    $15963, %eax            #   1:     if     15963 > 36389 goto 5
    movl    $36389, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5               
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, v1                
    movl    $98, %eax               #  11:     assign v1 <- 98
    movb    %al, v1                
    movl    $98, %eax               #  12:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_1                #  14:     goto   1
l_test_1:
    jmp     l_test_14_if_false      #  16:     goto   14_if_false
    movl    $97, %eax               #  17:     if     97 # 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16_if_true      
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  20:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyBOOLfunc           #  23:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_12               #  25:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_21               #  29:     goto   21
l_test_21:

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

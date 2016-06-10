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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 6 of <array 1 of <array 2 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 5 of <array 4 of <array 4 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_exit              
    movl    $99, %eax               #   2:     assign v4 <- 99
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_6                  #   4:     goto   6
l_f0_6:
l_f0_10_while_cond:
    movl    $95752, %eax            #   7:     if     95752 > 99657 goto 11_while_body
    movl    $99657, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #   8:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  10:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $39029, %eax            #  15:     assign v3 <- 39029
    movl    %eax, 16(%ebp)         
    jmp     l_f0_13                 #  16:     goto   13
l_f0_13:
    call    dummyCHARfunc           #  18:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 10 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 8 of <array 4 of <array 4 of <array 7 of <int>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v4       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v3 <- 100
    movb    %al, -14(%ebp)         
l_f1_2_while_cond:
    movl    $81257, %eax            #   2:     if     81257 <= 72356 goto 5
    movl    $72356, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v4 <- t0
    movb    %al, -15(%ebp)         
l_f1_10_while_cond:
    movl    $100, %eax              #  12:     if     100 > 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  18:     goto   14_while_cond
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
    movl    $99, %eax               #  20:     return 99
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 8 of <array 4 of <array 4 of <array 7 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 10 of <array 10 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <array 8 of <array 4 of <array 4 of <array 7 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 10 of <array 10 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <char> %ebp-49 ]
    #   -18976(%ebp)  18924  [ $v1       <array 7 of <array 3 of <array 9 of <array 10 of <array 10 of <bool>>>>>> %ebp-18976 ]
    #   -44088(%ebp)  25112  [ $v2       <array 7 of <array 8 of <array 4 of <array 4 of <array 7 of <int>>>>>> %ebp-44088 ]
    #   -44089(%ebp)   1  [ $v3       <char> %ebp-44089 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44080, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11020, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18976(%ebp)         # local array 'v1': 5 dimensions
    movl    $7,-18972(%ebp)         #   dimension 1: 7 elements
    movl    $3,-18968(%ebp)         #   dimension 2: 3 elements
    movl    $9,-18964(%ebp)         #   dimension 3: 9 elements
    movl    $10,-18960(%ebp)        #   dimension 4: 10 elements
    movl    $10,-18956(%ebp)        #   dimension 5: 10 elements
    movl    $5,-44088(%ebp)         # local array 'v2': 5 dimensions
    movl    $7,-44084(%ebp)         #   dimension 1: 7 elements
    movl    $8,-44080(%ebp)         #   dimension 2: 8 elements
    movl    $4,-44076(%ebp)         #   dimension 3: 4 elements
    movl    $4,-44072(%ebp)         #   dimension 4: 4 elements
    movl    $7,-44068(%ebp)         #   dimension 5: 7 elements

    # function body
    movl    $83249, %eax            #   0:     mul    t0 <- 83249, 65956
    movl    $65956, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 68376
    movl    $68376, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 10051
    movl    $10051, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 48990
    movl    $48990, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t3
    jmp     l_f2_exit              
    leal    -44088(%ebp), %eax      #   5:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     param  1 <- t4
    pushl   %eax                   
    leal    -18976(%ebp), %eax      #   7:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   9:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    leal    -44088(%ebp), %eax      #  10:     &()    t7 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     param  1 <- t7
    pushl   %eax                   
    leal    -18976(%ebp), %eax      #  12:     &()    t8 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  13:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  14:     call   t9 <- f1
    addl    $8, %esp               
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  15:     assign v3 <- t9
    movb    %al, -44089(%ebp)      

l_f2_exit:
    # epilogue
    addl    $44080, %esp            # remove locals
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
    movl    $12328, %eax            #   0:     assign v0 <- 12328
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    movl    $18190, %eax            #   3:     assign v0 <- 18190
    movl    %eax, v0               
    jmp     l_test_2                #   4:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    movl    $11382, %eax            #   8:     assign v0 <- 11382
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_13_while_cond:
    jmp     l_test_12               #  11:     goto   12
    jmp     l_test_13_while_cond    #  12:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_6                #  15:     goto   6
l_test_6:
l_test_17_while_cond:
    movl    $98, %eax               #  18:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  20:     goto   17_while_cond
l_test_22_while_cond:
    jmp     l_test_21               #  22:     goto   21
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  24:     goto   25_while_cond
    jmp     l_test_29_if_false      #  25:     goto   29_if_false
    jmp     l_test_27               #  26:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
l_test_21:

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

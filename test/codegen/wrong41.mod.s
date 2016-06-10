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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 7 of <array 7 of <array 4 of <array 6 of <char>>>>>>> %ebp+8 ]
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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    movl    $100, %eax              #   1:     return 100
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v1 <- t1
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 7 of <array 7 of <array 4 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -10628(%ebp)  10608  [ $v4       <array 9 of <array 7 of <array 7 of <array 4 of <array 6 of <char>>>>>> %ebp-10628 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10616, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2654, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10628(%ebp)         # local array 'v4': 5 dimensions
    movl    $9,-10624(%ebp)         #   dimension 1: 9 elements
    movl    $7,-10620(%ebp)         #   dimension 2: 7 elements
    movl    $7,-10616(%ebp)         #   dimension 3: 7 elements
    movl    $4,-10612(%ebp)         #   dimension 4: 4 elements
    movl    $6,-10608(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $100, %eax              #   0:     param  1 <- 100
    pushl   %eax                   
    leal    -10628(%ebp), %eax      #   1:     &()    t1 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   3:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
l_f1_2_while_cond:
    movl    $47933, %eax            #   5:     if     47933 <= 78219 goto 3_while_body
    movl    $78219, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_5:
    movl    $97, %eax               #  10:     assign v3 <- 97
    movb    %al, 20(%ebp)          
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $10616, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 7 of <array 7 of <array 4 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 3 of <array 4 of <array 2 of <array 10 of <char>>>>>>> %ebp+8 ]
    #   -10632(%ebp)  10608  [ $v1       <array 9 of <array 7 of <array 7 of <array 4 of <array 6 of <char>>>>>> %ebp-10632 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10620, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2655, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10632(%ebp)         # local array 'v1': 5 dimensions
    movl    $9,-10628(%ebp)         #   dimension 1: 9 elements
    movl    $7,-10624(%ebp)         #   dimension 2: 7 elements
    movl    $7,-10620(%ebp)         #   dimension 3: 7 elements
    movl    $4,-10616(%ebp)         #   dimension 4: 4 elements
    movl    $6,-10612(%ebp)         #   dimension 5: 6 elements

    # function body
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     param  1 <- 97
    pushl   %eax                   
    leal    -10632(%ebp), %eax      #   2:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   4:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_6                  #   7:     goto   6
l_f2_6:
    jmp     l_f2_2                  #   9:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $10620, %esp            # remove locals
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
l_test_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     if     t0 >= 56936 goto 6_if_true
    movl    $56936, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_if_true       
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_11_if_false      #  13:     goto   11_if_false
    movl    $21315, %eax            #  14:     if     21315 > 12039 goto 13_if_true
    movl    $12039, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    movl    $24966, %eax            #  17:     if     24966 <= 45041 goto 17_if_true
    movl    $45041, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  18:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  20:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_12               #  24:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_9                #  27:     goto   9
l_test_11_if_false:
l_test_9:

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

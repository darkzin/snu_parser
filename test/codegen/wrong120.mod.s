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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 7 of <array 7 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t4 <- t3, 66376
    movl    $66376, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f0_exit              
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    movl    $1991, %eax             #   5:     return 1991
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   6:     goto   1
l_f0_1:
    movl    $44134, %eax            #   8:     add    t5 <- 44134, 20291
    movl    $20291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     assign v4 <- t5
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $40482, %eax            #   1:     assign v1 <- 40482
    movl    %eax, -20(%ebp)        
l_f1_3_while_cond:
    movl    $56340, %eax            #   3:     if     56340 > 92457 goto 4_while_body
    movl    $92457, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_4_while_body      
    jmp     l_f1_2                  #   4:     goto   2
l_f1_4_while_body:
l_f1_7_while_cond:
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t4 # 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_3_while_cond       #  13:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 1 of <array 7 of <array 7 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #   -204(%ebp)  171  [ $v1       <array 3 of <array 1 of <array 7 of <array 7 of <array 1 of <bool>>>>>> %ebp-204 ]
    #   -208(%ebp)   4  [ $v2       <int> %ebp-208 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $196, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $49, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-204(%ebp)           # local array 'v1': 5 dimensions
    movl    $3,-200(%ebp)           #   dimension 1: 3 elements
    movl    $1,-196(%ebp)           #   dimension 2: 1 elements
    movl    $7,-192(%ebp)           #   dimension 3: 7 elements
    movl    $7,-188(%ebp)           #   dimension 4: 7 elements
    movl    $1,-184(%ebp)           #   dimension 5: 1 elements

    # function body
    movl    $99, %eax               #   0:     if     99 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_5                  #   1:     goto   5
l_f2_6:
l_f2_5:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     param  2 <- t3
    pushl   %eax                   
    leal    -204(%ebp), %eax        #   9:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t4
    pushl   %eax                   
    movl    $100, %eax              #  11:     if     100 > 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8                 
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_10:
    movzbl  -21(%ebp), %eax         #  19:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  20:     call   t6 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
l_f2_13_while_cond:
    movl    $97, %eax               #  22:     if     97 # 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_while_body:
    movl    $86375, %eax            #  25:     assign v2 <- 86375
    movl    %eax, -208(%ebp)       
l_f2_18_while_cond:
    movl    $4278, %eax             #  27:     if     4278 = 3712 goto 19_while_body
    movl    $3712, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_19_while_body     
    jmp     l_f2_17                 #  28:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  30:     goto   18_while_cond
l_f2_17:
l_f2_22_while_cond:
    movl    $10756, %eax            #  33:     if     10756 >= 66602 goto 23_while_body
    movl    $66602, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_23_while_body     
    jmp     l_f2_21                 #  34:     goto   21
l_f2_23_while_body:
    jmp     l_f2_22_while_cond      #  36:     goto   22_while_cond
l_f2_21:
    jmp     l_f2_13_while_cond      #  38:     goto   13_while_cond
l_f2_12:
    call    dummyINTfunc            #  40:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $196, %esp              # remove locals
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
l_test_1_while_cond:
    jmp     l_test_exit            
    movl    $95756, %eax            #   2:     if     95756 <= 65852 goto 5
    movl    $65852, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   3:     goto   6
l_test_5:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #  11:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_11_while_cond:
    jmp     l_test_13               #  14:     goto   13
    jmp     l_test_13               #  15:     goto   13
l_test_13:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
    movl    $1, %eax                #  18:     assign v0 <- 1
    movb    %al, v0                
    call    f2                      #  19:     call   t2 <- f2
    movl    %eax, -24(%ebp)        
    movl    $64032, %eax            #  20:     assign v1 <- 64032
    movl    %eax, v1               

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

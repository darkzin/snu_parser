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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 9 of <array 5 of <array 10 of <int>>>>>>> %ebp+8 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t5
    movb    %al, -25(%ebp)         
    movl    $73235, %eax            #   2:     if     73235 > 33563 goto 2_if_true
    movl    $33563, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $98, %eax               #   6:     if     98 >= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $7450, %eax             #  11:     return 7450
    jmp     l_f0_exit              
    movl    $76910, %eax            #  12:     assign v3 <- 76910
    movl    %eax, -32(%ebp)        
    jmp     l_f0_11                 #  13:     goto   11
l_f0_11:
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  18:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $19373, %eax            #  19:     add    t7 <- 19373, t6
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 3 of <array 9 of <array 5 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 4 of <array 2 of <array 2 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -16252(%ebp)  16224  [ $v5       <array 3 of <array 3 of <array 9 of <array 5 of <array 10 of <int>>>>>> %ebp-16252 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16240, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4060, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-16252(%ebp)         # local array 'v5': 5 dimensions
    movl    $3,-16248(%ebp)         #   dimension 1: 3 elements
    movl    $3,-16244(%ebp)         #   dimension 2: 3 elements
    movl    $9,-16240(%ebp)         #   dimension 3: 9 elements
    movl    $5,-16236(%ebp)         #   dimension 4: 5 elements
    movl    $10,-16232(%ebp)        #   dimension 5: 10 elements

    # function body
l_f1_1_while_cond:
    leal    -16252(%ebp), %eax      #   1:     &()    t5 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   3:     call   t6 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t7 <- t6, 78840
    movl    $78840, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $54660, %eax            #   5:     if     54660 <= t7 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    movl    $1, %eax                #  10:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  11:     if     99 <= 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movzbl  -25(%ebp), %eax         #  19:     assign v1 <- t8
    movb    %al, 8(%ebp)           

l_f1_exit:
    # epilogue
    addl    $16240, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $231, %eax              #   0:     if     231 < 6580 goto 1
    movl    $6580, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t5
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   9:     assign v2 <- 100
    movb    %al, -15(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_6                  #  11:     goto   6
    movl    $100, %eax              #  12:     if     100 = 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_7_while_cond       #  18:     goto   7_while_cond
l_f2_6:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $21159, %eax            #   2:     add    t1 <- 21159, t0
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v0 <- t1
    movl    %eax, v0               
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   6:     if     t3 = 1 goto 4_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   7:     goto   5_if_false
l_test_4_if_true:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
    jmp     l_test_9                #  11:     goto   9
l_test_9:
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
    jmp     l_test_12               #  14:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_3                #  17:     goto   3
l_test_5_if_false:
l_test_3:
l_test_16_while_cond:
    call    dummyBOOLfunc           #  21:     call   t4 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  22:     if     t4 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_17_while_body    #  23:     goto   17_while_body
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

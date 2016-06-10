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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 3 of <array 4 of <array 8 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 6 of <array 2 of <array 8 of <array 4 of <bool>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t3 > t4 goto 3_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
l_f0_6_while_cond:
    movl    $27064, %eax            #  10:     if     27064 # 84732 goto 7_while_body
    movl    $84732, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    movl    $99, %eax               #  13:     if     99 > 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  14:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $99, %eax               #  19:     return 99
    jmp     l_f0_exit              
    movl    $42062, %eax            #  20:     assign v1 <- 42062
    movl    %eax, 8(%ebp)          
l_f0_16_while_cond:
    movl    $48188, %eax            #  22:     if     48188 < 23 goto 17_while_body
    movl    $23, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_17_while_body     
    jmp     l_f0_15                 #  23:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  25:     goto   16_while_cond
l_f0_15:
l_f0_20_while_cond:
    movl    $99, %eax               #  28:     if     99 # 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_21_while_body     
    jmp     l_f0_19                 #  29:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  31:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_25_if_false        #  33:     goto   25_if_false
    jmp     l_f0_23                 #  34:     goto   23
l_f0_25_if_false:
l_f0_23:
    jmp     l_f0_6_while_cond       #  37:     goto   6_while_cond
l_f0_5:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 6 of <array 2 of <array 8 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 3 of <array 4 of <array 8 of <array 10 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]
    #   -3900(%ebp)  3864  [ $v3       <array 4 of <array 3 of <array 4 of <array 8 of <array 10 of <char>>>>>> %ebp-3900 ]
    #   -5076(%ebp)  1176  [ $v4       <array 3 of <array 6 of <array 2 of <array 8 of <array 4 of <bool>>>>>> %ebp-5076 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5064, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1266, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3900(%ebp)          # local array 'v3': 5 dimensions
    movl    $4,-3896(%ebp)          #   dimension 1: 4 elements
    movl    $3,-3892(%ebp)          #   dimension 2: 3 elements
    movl    $4,-3888(%ebp)          #   dimension 3: 4 elements
    movl    $8,-3884(%ebp)          #   dimension 4: 8 elements
    movl    $10,-3880(%ebp)         #   dimension 5: 10 elements
    movl    $5,-5076(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-5072(%ebp)          #   dimension 1: 3 elements
    movl    $6,-5068(%ebp)          #   dimension 2: 6 elements
    movl    $2,-5064(%ebp)          #   dimension 3: 2 elements
    movl    $8,-5060(%ebp)          #   dimension 4: 8 elements
    movl    $4,-5056(%ebp)          #   dimension 5: 4 elements

    # function body
    movl    $97, %eax               #   0:     return 97
    jmp     l_f1_exit              
    movl    $100, %eax              #   1:     if     100 > 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f1_exit              
    movl    $3326, %eax             #   5:     assign v1 <- 3326
    movl    %eax, -32(%ebp)        
l_f1_8_while_cond:
    movl    $100, %eax              #   7:     if     100 # 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  10:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    movl    $0, %eax                #  13:     if     0 = 0 goto 13_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
    call    dummyCHARfunc           #  18:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $46228, %eax            #  19:     assign v1 <- 46228
    movl    %eax, -32(%ebp)        
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  21:     goto   18_while_cond
    jmp     l_f1_1                  #  22:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    -5076(%ebp), %eax       #  25:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  2 <- t3
    pushl   %eax                   
    leal    -3900(%ebp), %eax       #  27:     &()    t4 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  1 <- t4
    pushl   %eax                   
    movl    $19048, %eax            #  29:     param  0 <- 19048
    pushl   %eax                   
    call    f0                      #  30:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  31:     assign v2 <- t5
    movb    %al, -33(%ebp)         

l_f1_exit:
    # epilogue
    addl    $5064, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    movl    $99, %eax               #   0:     if     99 <= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t2
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  10:     goto   8
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  13:     assign v1 <- t3
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    movl    $99, %eax               #   0:     if     99 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $14335, %eax            #   7:     if     14335 > 21501 goto 8
    movl    $21501, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8               
    jmp     l_test_9                #   8:     goto   9
l_test_8:
    movl    $1, %eax                #  10:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  15:     assign v0 <- t0
    movb    %al, v0                
l_test_13_while_cond:
    movl    $84585, %eax            #  17:     if     84585 <= 35592 goto 14_while_body
    movl    $35592, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  18:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  20:     goto   13_while_cond
l_test_12:
    jmp     l_test_0                #  22:     goto   0
l_test_2_if_false:
l_test_0:
    call    f2                      #  25:     call   f2
    call    dummyBOOLfunc           #  26:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_20_if_false      #  27:     goto   20_if_false
    jmp     l_test_exit            
    jmp     l_test_18               #  29:     goto   18
l_test_20_if_false:
l_test_18:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
